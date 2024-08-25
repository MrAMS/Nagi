#include <cassert>
#include <cstdint>
#include "core_nagi.hpp"
#include <cstdio>
#include <fstream>
#include <filesystem>
#include "fmt/core.h"
#include "logger.hpp"
#include <fmt/format.h>
#include <memory>
#include <queue>
#include <string>
#include <vector>
#include "disassmble.hpp"
#include "ringbuf.hpp"

#include "abscore.hpp"

#include "cemu/core_cemu.hpp"
#include <csignal>
#include <cstdlib>

#include "timer.hpp"

#include "config_diff.h"
#include "config_prog.h"

#if GPERF_ENABLE
#include <google/profiler.h>
#endif

struct DiffExcep : public std::exception
{
   std::string s;
   DiffExcep(std::string ss) : s(ss) {}
   ~DiffExcep() throw () {}
   const char* what() const throw() { return s.c_str(); }
};

#define THROE_DIFF_EXCEPT(FORMAT, ...) \
    throw DiffExcep(fmt::format(FORMAT "\n core at pc={:x} cyc={}, ref at pc={:x}", ##__VA_ARGS__, core.get_pc(), core.get_cycs_tot(), ref.get_pc()))

#define ADDR_T uint64_t
#define DATA_T uint32_t
#define GPR_NUM 32

RingBuf<DATA_T, 8> pc_log;

image_t image;

std::string last_info(){
    std::string info = "Last instructions:\n";
    DATA_T pc_t=0;
    while(pc_log.pop(pc_t)){
        const auto res = disassmble_instrs(disassmble_target_t::la32r,
            (uint8_t*)(image.bin) + pc_t - image.offset, 
            4, pc_t
        );
        assert(res.size() == 1);
        info += res[0] + "\n";
    }
    info += "--> \n";
    pc_t += 4;
    for(int i=0;i<3&&pc_t-image.offset<image.size;pc_t+=4,++i){
        const auto res = disassmble_instrs(disassmble_target_t::la32r,
            (uint8_t*)image.bin + pc_t - image.offset, 
            4, pc_t
        );
        assert(res.size() == 1);
        info += res[0] + "\n";
    }
    return info;
}

uint64_t read_file_malloc(const char* filepath, uint8_t** bin){
    std::ifstream file(filepath, std::ios::binary);
    uint64_t file_size = std::filesystem::file_size(filepath);
    *bin = new uint8_t[file_size];
    file.read((char*)(*bin), file_size);
    file.close();
    return file_size;
}

// template<typename ADDR_T, typename DATA_T, uint8_t GPR_NUM>
void difftest(Core<ADDR_T, DATA_T, GPR_NUM>& core, Core<ADDR_T, DATA_T, GPR_NUM>& ref, image_t image, uint64_t max_step = 0, bool show_matched_info = false){
    Timer timer_ref, timer_core, timer_tot;
    timer_tot.start();


    uint8_t* bin_ptr = nullptr;
    uint64_t bin_size=0;

    ref.init();
    core.init();

    bin_size = read_file_malloc(PROG_BIN_PATH, &bin_ptr);
    core.write_mem(PROG_BIN_ADDR, bin_ptr, bin_size);
    ref.write_mem(PROG_BIN_ADDR, bin_ptr, bin_size);
    // uint32_t t=0;
    // ref.read_mem(0x80002048, (uint8_t*)&t, 4);
    // LOG_LOG("(0x80002048)={:x}", t);
    // LOG_LOG("(0x80002048)={:x}", *(uint32_t*)(bin_ptr+0x2048));
    delete [] bin_ptr;

    #ifdef PROG_CRYPTONIGHT_BIN_PATH
    bin_size = read_file_malloc(PROG_BIN_PATH, &bin_ptr);
    core.write_mem(0x80100000, bin_ptr+0x30b4, 0x94);
    ref.write_mem(0x80100000, bin_ptr+0x30b4, 0x94);
    // for(int i=0;i<0x94;i+=4){
    //     uint32_t t=0;
    //     ref.read_mem(0x80100000+i, (uint8_t*)&t, 4);
    //     printf("%x", t);
    // }
    // puts("");
    // for(int i=0;i<0x94;i+=4){
    //     uint32_t t=*(uint32_t*)(bin_ptr+0x30b0+i);
    //     printf("%x", t);
    // }
    // puts("");
    delete [] bin_ptr;
    // bin_size = read_file_malloc(PROG_CRYPTONIGHT_BIN_PATH, &bin_ptr);
    // core.write_mem(PROG_CRYPTONIGHT_ADDR, bin_ptr, bin_size);
    // ref.write_mem(PROG_CRYPTONIGHT_ADDR, bin_ptr, bin_size);
    // delete [] bin_ptr;
    #elif defined PROG_MATRIX_BIN_PATH
    bin_size = read_file_malloc(PROG_BIN_PATH, &bin_ptr);
    core.write_mem(0x80100000, bin_ptr+0x3030, 0x84);
    ref.write_mem(0x80100000, bin_ptr+0x3030, 0x84);
    delete [] bin_ptr;
    bin_size = read_file_malloc(PROG_MATRIX_BIN_PATH, &bin_ptr);
    core.write_mem(0x80400000, bin_ptr, 0x30000);
    ref.write_mem(0x80400000, bin_ptr, 0x30000);
    delete [] bin_ptr;
    #elif defined PROG_FINAL_BIN_PATH
    bin_size = read_file_malloc(PROG_FINAL_BIN_PATH, &bin_ptr);
    core.write_mem(0x80100000, bin_ptr, bin_size);
    ref.write_mem(0x80100000, bin_ptr, bin_size);
    int array[] = {233, 555, 4, 12, 88};
    core.write_mem(0x80400000, (uint8_t*)&array, sizeof(array));
    ref.write_mem(0x80400000, (uint8_t*)&array, sizeof(array));
    delete [] bin_ptr;
    #endif

    // // temp start
    // uint8_t* test_bin = nullptr;
    // const auto test_bin_size = read_file_malloc("/home/santiego/proj/arch/nscscc/work/nagi/prog/coremark/build/main.text.bin", &test_bin);
    // ref.load_mem(0x1c000000, test_bin, test_bin_size);
    // core.load_mem(0x1c000000, test_bin, test_bin_size);
    // // delete [] test_bin;
    // delete [] image.bin;
    // image.bin = test_bin;

    // uint8_t* data_bin = nullptr;
    // const auto data_bin_size = read_file_malloc("/home/santiego/proj/arch/nscscc/work/nagi/prog/coremark/build/main.data.bin", &data_bin);
    // ref.load_mem(0x1c00358c, data_bin, data_bin_size);
    // core.load_mem(0x1c00358c, data_bin, data_bin_size);
    // delete [] data_bin;
    // // ref.load_mem(0x1c000000, uint8_t *data, unsigned long len)
    // // temp end


    uint32_t pc_repeated_cnt=0;
    std::list<typename Core<ADDR_T, DATA_T, GPR_NUM>::trace_t> traces_core;
    std::list<typename Core<ADDR_T, DATA_T, GPR_NUM>::trace_t> traces_ref;
    RingBuf<typename Core<ADDR_T, DATA_T, GPR_NUM>::trace_t, 4> traces_history;
    for(uint64_t i = 1; i <= max_step || max_step == 0; i++){
        if(show_matched_info) LOG_INFO("step {}", i);
        timer_core.start();
        if(!core.step(1)) break;
        timer_core.stop();

        pc_repeated_cnt += 1;
        if(pc_repeated_cnt > 1000){
            THROE_DIFF_EXCEPT("pc repeated more than {} steps", pc_repeated_cnt);
        }

        // if(timer_tot.get_ms() > 10*1000){
        //     std::string last_instrs = "Last instructions:\n";
        //     DATA_T pc_t=0;
        //     while(pc_log.pop(pc_t)){
        //         DATA_T instr=0;
        //         core.read_mem(pc_t, (uint8_t*)&instr, 4);
        //         const auto res = disassmble_instrs(disassmble_target_t::la32r,
        //             (uint8_t*)&instr, 
        //             4, pc_t
        //         );
        //         last_instrs += res[0] + "\n";
        //     }
        //     last_instrs += "--> \n";
        //     pc_t += 4;
        //     for(int i=0;i<3;pc_t+=4,++i){
        //         try{
        //             DATA_T instr=0;
        //             core.read_mem(pc_t, (uint8_t*)&instr, 4);
        //             const auto res = disassmble_instrs(disassmble_target_t::la32r,
        //                 (uint8_t*)&instr, 
        //                 4, pc_t
        //             );
        //             last_instrs += res[0] + "\n";
        //         }catch(const absmmio_excep& excp){
        //             break;
        //         }
        //     }
        //     THROE_DIFF_EXCEPT("Timeout\n{}\n", last_instrs);
        // }

        typename Core<ADDR_T, DATA_T, GPR_NUM>::trace_t trace_t;
        while(core.get_trace(trace_t)){
            traces_core.push_back(trace_t);
            if(trace_t.ispc()){
                const DATA_T pc = trace_t.addr;
                pc_repeated_cnt = 0;
                pc_log.push(pc);
                uint32_t instr=0;
                core.read_mem(pc, (uint8_t*)&instr, 4);
                if(instr==0) THROE_DIFF_EXCEPT("instr is 0");
                // printf("pc %x\n", pc);
            }
        }
        while(traces_core.size()!=0){
            // if has any unmatched trace, try to match first
            if(traces_ref.size()!=0){
                for(auto iter_ref = traces_ref.begin();iter_ref!=traces_ref.end();++iter_ref){
                    for(auto iter_core=traces_core.begin();iter_core!=traces_core.end();++iter_core){
                        if(*iter_ref == *iter_core){
                            if(show_matched_info) printf("matched: %s\n", iter_ref->str().c_str());
                            traces_history.push(*iter_core);
                            iter_core = traces_core.erase(iter_core);
                            iter_ref = traces_ref.erase(iter_ref);
                            break;
                        }
                    }
                }
                if(traces_core.size()==0) break;
                else if(traces_ref.size()!=0){
                    std::string trace_history = "";
                    while(traces_history.pop(trace_t)){
                        trace_history += trace_t.str() + "; ";
                    }
                    std::string trace_str_core = "";
                    for(auto iter=traces_core.begin();iter!=traces_core.end();iter++){
                        trace_str_core += iter->str() + "; ";
                    }
                    std::string trace_str_ref = "";
                    for(auto iter=traces_ref.begin();iter!=traces_ref.end();iter++){
                        trace_str_ref += iter->str() + "; ";
                    }
                    std::string last_instrs = "Last instructions:\n";
                    DATA_T pc_t=0;
                    while(pc_log.pop(pc_t)){
                        DATA_T instr=0;
                        core.read_mem(pc_t, (uint8_t*)&instr, 4);
                        const auto res = disassmble_instrs(disassmble_target_t::la32r,
                            (uint8_t*)&instr, 
                            4, pc_t
                        );
                        last_instrs += res[0] + "\n";
                    }
                    last_instrs += "--> \n";
                    pc_t += 4;
                    for(int i=0;i<3;pc_t+=4,++i){
                        try{
                            DATA_T instr=0;
                            core.read_mem(pc_t, (uint8_t*)&instr, 4);
                            const auto res = disassmble_instrs(disassmble_target_t::la32r,
                                (uint8_t*)&instr, 
                                4, pc_t
                            );
                            last_instrs += res[0] + "\n";
                        }catch(const absmmio_excep& excp){
                            break;
                        }
                    }
                    THROE_DIFF_EXCEPT("trace mismatch\nlast matched: {}\nref expect:  {}\ncore return: {}\n{}", trace_history, trace_str_ref, trace_str_core, last_instrs);
                }
                // traces_core.size()!=0 && traces_ref.size()==0 reach here
            }
            timer_ref.start();
            const bool ref_running = ref.step(1);
            timer_ref.stop();
            if(!ref_running){
#if defined PROG_FINAL_BIN_PATH
                // const auto ptf_size = 20;
                // const auto p_extmem = new uint8_t[ptf_size];
                // core.read_mem(0x80400000, p_extmem, ptf_size);
                // for(int i=0;i<ptf_size;++i)
                //     printf("%x ", p_extmem[i]);
                // printf("\n");
                // delete [] p_extmem;
                int mx=0;
                core.read_mem(0x80700000, (uint8_t*)&mx, 4);
                printf("mx=%d\n", mx);
#endif
                std::string trace_str_core = "";
                for(auto iter=traces_core.begin();iter!=traces_core.end();iter++){
                    trace_str_core += iter->str() + "; ";
                }
                LOG_INFO("ref already exit\ncore return: {}", trace_str_core);
                const auto perf = core.get_perf();
                LOG_INFO("Program: {} {} {}", PROG_NAME, __TIME__, __DATE__);
                LOG_INFO("Run Time\n"
                    "TOT={}ms DUT={}ms REF={}ms",
                    timer_tot.get_ms(), timer_core.get_ms(), timer_ref.get_ms()
                );
                LOG_INFO("{}", core.get_perf());
                return;
            }
            while(ref.get_trace(trace_t)){
                bool matched = false;
                for(auto iter=traces_core.begin();iter!=traces_core.end();++iter){
                    if(*iter == trace_t){
                        matched = true;
                        if(show_matched_info) printf("matched: %s\n", trace_t.str().c_str());
                        traces_history.push(*iter);
                        traces_core.erase(iter);
                        break;
                    }
                }
                if(!matched){
                    traces_ref.push_back(trace_t);
                }
            }
        }
    }
}


static CEMUCore cemu;

uint8_t* image_bin;
void signal_handler(int sig){
    switch(sig){
        case SIGINT:
            LOG_LOG("Caught SIGINT");
            LOG_ERRO("{}", last_info());
            break;
        case SIGSEGV:

            break;
        case SIGABRT:

            break;
        default:
            LOG_ERRO("Unhandled signal {}", sig);
            break;
    }
#if GPERF_ENABLE
    ProfilerStop();
#endif
    if(image_bin!=nullptr)
        delete [] image_bin;
    exit(sig);
}

int main(){
#if GPERF_ENABLE
    ProfilerStart("test.prof");
#endif
    signal(SIGINT, signal_handler);
    // Timer timer;
    // timer.start();
    // sleep(1);
    // LOG_INFO("timer={}", timer.get_ms());
    // sleep(1);
    // LOG_INFO("timer={}", timer.stop().get_ms());
    // sleep(1);
    // LOG_INFO("timer={}", timer.get_ms());
    // timer.start();
    // sleep(1);
    // LOG_INFO("timer={}", timer.stop().get_ms());
    // exit(0);

    bool passed = true;
    LOG_LOG("Hello {}", "Diff");
    // NagiCore::get_instance().init(image_t{(uint8_t*)img_dummy, sizeof(img_dummy)/4});
    // NagiCore::get_instance().step(5);
    image_bin=nullptr;
    try {
        // difftest(cemu, cemu2, {image, file_size});
#ifndef PROG_BIN_PATH
        const uint32_t img_dummy[] = {
            0x02bffc0c, // 	addi.w	$r12,$r0,-1(0xfff)
            0x03800404, //  ori	$r4,$r0,0x1
            0x1500000c, //  lu12i.w	$r12,-524288(0x80000) 
            0x00104a2f, //  add.w	$r15,$r17,$r18
            // step=11:
            0x1500000c, //  lu12i.w	$r12,-524288(0x80000)

            0x1500000c, //  lu12i.w	$r12,-524288(0x80000)
            0x1500000c, //  lu12i.w	$r12,-524288(0x80000)
            0x1500000c, //  lu12i.w	$r12,-524288(0x80000)
        };
        image = {(uint8_t*)img_dummy, sizeof(img_dummy)};
        difftest(NagiCore::get_instance(), cemu, image, 6+5);
#else
        uint64_t file_size = std::filesystem::file_size(PROG_BIN_PATH);
        std::ifstream file(PROG_BIN_PATH, std::ios::binary);
        image_bin = new uint8_t [file_size];
        file.read((char*)image_bin, file_size);
        image = {image_bin, file_size, 0x80000000};
        difftest(NagiCore::get_instance(), cemu, image, 0, false);        
#endif
    } catch (const DiffExcep& excep) {
        LOG_ERRO("DIFFTEST FAIL\n*{}", excep.what());
        passed = false;
    } catch (const std::exception& excep){
        LOG_ERRO("EXCEP\n*{}", excep.what());
        passed = false;
    }
    if(passed)
        LOG_INFO("PASS DIFFTEST");
    // else{
    //     LOG_ERRO("{}", last_info());
    // }
    if(image_bin!=nullptr)
        delete [] image_bin;
#if GPERF_ENABLE
    ProfilerStop();
#endif
    system("notify-send 'Difftest Finished.'");
    return 0;
}
