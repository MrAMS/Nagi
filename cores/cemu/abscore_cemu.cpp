#include "abscore_cemu.hpp"
void cemu_trace_gpr(uint8_t index, uint32_t value){
    CoreCEMU::trace_callback_gpr(index, value);
}

void cemu_trace_mem(uint64_t addr, uint64_t size, const uint8_t* buffer, bool is_write){
    
}