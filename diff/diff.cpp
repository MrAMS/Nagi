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
    std::string disassmble_codes = "Last instructions:\n";
    DATA_T pc_t=0;
    while(pc_log.pop(pc_t)){
        const auto res = disassmble_instrs(disassmble_target_t::la32r,
            (uint8_t*)(image.bin) + pc_t - image.offset, 
            4, pc_t
        );
        assert(res.size() == 1);
        disassmble_codes += res[0] + "\n";
    }
    disassmble_codes += "--> \n";
    pc_t += 4;
    for(int i=0;i<3&&pc_t-image.offset<image.size;pc_t+=4,++i){
        const auto res = disassmble_instrs(disassmble_target_t::la32r,
            (uint8_t*)image.bin + pc_t - image.offset, 
            4, pc_t
        );
        assert(res.size() == 1);
        disassmble_codes += res[0] + "\n";
    }
    return disassmble_codes;
}

// template<typename ADDR_T, typename DATA_T, uint8_t GPR_NUM>
void difftest(Core<ADDR_T, DATA_T, GPR_NUM>& core, Core<ADDR_T, DATA_T, GPR_NUM>& ref, image_t image, uint32_t max_step = 0, bool show_matched_info = false){
    ref.init(image);
    core.init(image);
    DATA_T pre_pc=0;
    uint32_t pc_repeated_cnt=0;
    std::list<typename Core<ADDR_T, DATA_T, GPR_NUM>::trace_t> traces_core;
    std::list<typename Core<ADDR_T, DATA_T, GPR_NUM>::trace_t> traces_ref;
    for(uint32_t i = 1; i <= max_step || max_step == 0; i++){
        if(show_matched_info) LOG_INFO("step {}", i);
        if(!core.step(1)) break;
        const DATA_T pc = core.get_pc();
        if(pre_pc!=pc){
            pc_repeated_cnt = 0;
            pre_pc = pc;
            pc_log.push(pc);
            // printf("pc %x\n", pc);
        }else{
            pc_repeated_cnt += 1;
            if(pc_repeated_cnt > 1000)
                THROE_DIFF_EXCEPT("pc repeated more than {} steps", pc_repeated_cnt);
        }

        typename Core<ADDR_T, DATA_T, GPR_NUM>::trace_t trace_t;
        while(core.get_trace(trace_t)){
            traces_core.push_back(trace_t);
        }
        while(traces_core.size()!=0){
            // if has any unmatched trace, try to match first
            if(traces_ref.size()!=0){
                for(auto iter_ref = traces_ref.begin();iter_ref!=traces_ref.end();++iter_ref){
                    for(auto iter_core=traces_core.begin();iter_core!=traces_core.end();++iter_core){
                        if(*iter_ref == *iter_core){
                            if(show_matched_info) printf("matched: %s\n", iter_ref->str().c_str());
                            iter_core = traces_core.erase(iter_core);
                            iter_ref = traces_ref.erase(iter_ref);
                            break;
                        }
                    }
                }
                if(traces_core.size()==0) break;
                else if(traces_ref.size()!=0){
                    std::string trace_str_core = "";
                    for(auto iter=traces_core.begin();iter!=traces_core.end();iter++){
                        trace_str_core += iter->str() + "; ";
                    }
                    std::string trace_str_ref = "";
                    for(auto iter=traces_ref.begin();iter!=traces_ref.end();iter++){
                        trace_str_ref += iter->str() + "; ";
                    }
                    THROE_DIFF_EXCEPT("trace mismatch\nref expect:  {}\ncore return: {}\n", trace_str_ref, trace_str_core);
                }
                // traces_core.size()!=0 && traces_ref.size()==0 reach here
            }
            
            if(!ref.step(1)) THROE_DIFF_EXCEPT("ref exit too early");
            while(ref.get_trace(trace_t)){
                bool matched = false;
                for(auto iter=traces_core.begin();iter!=traces_core.end();++iter){
                    if(*iter == trace_t){
                        matched = true;
                        if(show_matched_info) printf("matched: %s\n", trace_t.str().c_str());
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
        image = {image_bin, file_size, 0x1c000000};
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
    else{
        LOG_ERRO("{}", last_info());
    }
    if(image_bin!=nullptr)
        delete [] image_bin;
#if GPERF_ENABLE
    ProfilerStop();
#endif
    return 0;
}
