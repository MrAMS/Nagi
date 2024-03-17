#include <cstdint>
#include "config.h"
#include <fstream>
#include <filesystem>
#include "logger.hpp"

#if CONFIG_EMU

#include "abstract_emu.hpp"

template<typename DATA_T>
void emu_trace_gpr(uint8_t index, DATA_T value){
    LOG_INFO("GPR {} => {:x}\n", index, value);
}

template void emu_trace_gpr(uint8_t index, uint32_t value);
template void emu_trace_gpr(uint8_t index, uint64_t value);

template<typename ADDR_T> void emu_trace_mem(ADDR_T start_addr, uint64_t size, const uint8_t* buffer, bool write){
    if(write){
        LOG_INFO("MEM {} <= {:x}\n", start_addr, buffer[0]);
    }else{
        LOG_INFO("MEM {} => {:x}\n", start_addr, buffer[0]);
    }
}

template void emu_trace_mem(uint64_t start_addr, uint64_t size, const uint8_t* buffer, bool write);

#endif
int main(){
    LOG_LOG("Hello {}\n", "Diff");
#if CONFIG_EMU
    uint64_t file_size = std::filesystem::file_size(CONFIG_PROG_BIN_PATH);
    std::ifstream file(CONFIG_PROG_BIN_PATH, std::ios::binary);
    uint8_t* image = new uint8_t[file_size];
    file.read((char*)image, file_size);
    emu_init({image, file_size});
    delete [] image;
    // emu_step(1000);
    while(emu_step(1));

#endif
    return 0;
}
