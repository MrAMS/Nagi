#include <cstdint>
#include "diff_config.h"
#include <fstream>
#include <filesystem>
#include "logger.hpp"
#include <fmt/format.h>

#include "abscore.hpp"
#include "abscore_cemu.hpp"

struct DiffExcep : public std::exception
{
   std::string s;
   DiffExcep(std::string ss) : s(ss) {}
   ~DiffExcep() throw () {}
   const char* what() const throw() { return s.c_str(); }
};

#define THROE_DIFF_EXCEPT(FORMAT, ...) \
    throw DiffExcep(fmt::format(FORMAT " at pc: {:x}", ##__VA_ARGS__, core.get_pc()))

void difftest(Core<uint64_t, uint32_t, 32>& core, Core<uint64_t, uint32_t, 32>& ref, image_t image){
    core.init(image);
    ref.init(image);
    while(1){
        bool core_run = core.step(1);
        bool ref_run = ref.step(1);
        if(core_run != ref_run) THROE_DIFF_EXCEPT("core {}, but ref {}", core_run?"halt":"running", ref_run?"halt":"running");
        if(!core_run&&!ref_run) break;
        for(int i=0;i<32;++i)
            if(core.get_gpr(i)!=ref.get_gpr(i))
                THROE_DIFF_EXCEPT("GPR x{}: {:x}(core) != {:x}(ref)", i, core.get_gpr(i), ref.get_gpr(i));
        if(core.trace_able()&&ref.trace_able()){
            const auto& [core_gpr_updated, core_gpr_trace] = core.check_trace_gpr();
            const auto& [ref_gpr_updated, ref_gpr_trace] = ref.check_trace_gpr();
            
            const auto& [core_mem_updated, core_mem_trace] = core.check_trace_mem();
            const auto& [ref_mem_updated, ref_mem_trace] = ref.check_trace_mem();
            
            if(core_mem_updated!=ref_mem_updated){
                THROE_DIFF_EXCEPT("MEM trace mismatch");
            }
        }
    }
}


CoreCEMU cemu;
CoreCEMU cemu2;

int main(){
    LOG_LOG("Hello {}", "Diff");
    uint64_t file_size = std::filesystem::file_size(CONFIG_PROG_BIN_PATH);
    std::ifstream file(CONFIG_PROG_BIN_PATH, std::ios::binary);
    uint8_t* image = new uint8_t[file_size];
    file.read((char*)image, file_size);
    try {
        difftest(cemu, cemu2, {image, file_size});
    } catch (const DiffExcep& excep) {
        LOG_ERRO("DIFFTEST FAIL\n {}", excep.what());
    }
    delete [] image;
    
#if CONFIG_EMU

    // cemu.init({image, file_size});
    // delete [] image;
    // // emu_step(1000);
    // while(cemu.step(1)){
    //     if(auto [hav, gpr_trace] = cemu.check_trace_gpr(); hav){
    //         LOG_LOG("GPR {:x} <= {:x}", gpr_trace.id, gpr_trace.val);
    //     }
    //     if(auto [hav, mem_trace] = cemu.check_trace_mem(); hav){
    //         if(mem_trace.is_write){
    //             LOG_LOG("MEM {:x} <= {:x}", mem_trace.addr, mem_trace.buffer[0]);
    //         }else{
    //             LOG_LOG("MEM {:x} => {:x}", mem_trace.addr, mem_trace.buffer[0]);
    //         }
    //     }
    // }
#endif
    return 0;
}
