#pragma once

#include <cstdint>

typedef struct {
    uint8_t *bin;
    uint64_t size;
} image_t;

void emu_init(image_t);
bool emu_step(int step);

template<typename DATA_T> void emu_trace_gpr(uint8_t index, DATA_T value);
template<typename ADDR_T> void emu_trace_mem(ADDR_T start_addr, uint64_t size, const uint8_t* buffer, bool write);
