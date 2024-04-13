#include <cassert>
#include <cstdint>
#include "core_nagi.hpp"
#include "diff_config.h"
#include <cstdio>
#include <fstream>
#include <filesystem>
#include "fmt/core.h"
#include "logger.hpp"
#include <fmt/format.h>
#include <queue>
#include <string>
#include <vector>
#include "disassmble.hpp"
#include "ringbuf.hpp"

#include "abscore.hpp"

#include "cemu/core_cemu.hpp"


struct DiffExcep : public std::exception
{
   std::string s;
   DiffExcep(std::string ss) : s(ss) {}
   ~DiffExcep() throw () {}
   const char* what() const throw() { return s.c_str(); }
};

#define THROE_DIFF_EXCEPT(FORMAT, ...) \
    throw DiffExcep(fmt::format(FORMAT "\n at pc: {:x}(core), {:x}(ref)\n", ##__VA_ARGS__, core.get_pc(), ref.get_pc()))

template<typename ADDR_T, typename DATA_T, uint8_t GPR_NUM>
void difftest(Core<ADDR_T, DATA_T, GPR_NUM>& core, Core<ADDR_T, DATA_T, GPR_NUM>& ref, image_t image, uint32_t max_step = 0, bool show_matched_info = false){
    ref.init(image);
    core.init(image);
    RingBuf<DATA_T, 8> pc_log;
    DATA_T pre_pc=0;
    std::list<typename Core<ADDR_T, DATA_T, GPR_NUM>::trace_t> traces_core;
    std::list<typename Core<ADDR_T, DATA_T, GPR_NUM>::trace_t> traces_ref;
    for(uint32_t i = 1; i <= max_step || max_step == 0; i++){
        if(show_matched_info) LOG_INFO("step {}", i);
        if(!core.step(1)) break;
        const DATA_T pc = core.get_pc();
        if(pre_pc!=pc){
            pre_pc = pc;
            pc_log.push(pc);
            // printf("pc %x\n", pc);
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

                    std::string disassmble_codes = "Last instructions:\n";
                    DATA_T pc_t=0;
                    while(pc_log.pop(pc_t)){
                        const auto res = disassmble_instrs(disassmble_target_t::la32r,
                            (uint8_t*)image.bin + pc_t - 0x1c000000, 
                            4, pc_t
                        );
                        assert(res.size() == 1);
                        disassmble_codes += res[0] + "\n";
                    }
                    THROE_DIFF_EXCEPT("trace mismatch\nref expect:  {}\ncore return: {}\n{}", trace_str_ref, trace_str_core, disassmble_codes);
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

static const uint32_t img_dummy[] = {
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

int main(){
    bool passed = true;
    LOG_LOG("Hello {}", "Diff");
    uint64_t file_size = std::filesystem::file_size(CONFIG_PROG_BIN_PATH);
    std::ifstream file(CONFIG_PROG_BIN_PATH, std::ios::binary);
    uint8_t* image = new uint8_t[file_size];
    file.read((char*)image, file_size);
    
    // NagiCore::get_instance().init(image_t{(uint8_t*)img_dummy, sizeof(img_dummy)/4});
    // NagiCore::get_instance().step(5);
    try {
        // difftest(cemu, cemu2, {image, file_size});
#if CONFIG_DIFF_INNER_IMAGE
        difftest(NagiCore::get_instance(), cemu, {(uint8_t*)img_dummy, sizeof(img_dummy)}, 6+5);
#else
        difftest(NagiCore::get_instance(), cemu, {image, file_size});        
#endif
    } catch (const DiffExcep& excep) {
        LOG_ERRO("DIFFTEST FAIL\n*{}", excep.what());
        passed = false;
    }
    delete [] image;
    if(passed)
        LOG_INFO("PASS DIFFTEST");
    return 0;
}
