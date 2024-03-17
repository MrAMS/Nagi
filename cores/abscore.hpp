#pragma once

#include <cstdint>

template<typename DATA_T> void emu_trace_gpr(uint8_t index, DATA_T value);
template<typename ADDR_T> void emu_trace_mem(ADDR_T start_addr, uint64_t size, const uint8_t* buffer, bool write);

#pragma once
#include <cstdint>
#include <exception>
#include <string>
#include <fmt/format.h>

template<class word_t, uint8_t GPR_NUM>
class Core{
public:
    using image_t = struct{
        uint8_t *bin;
        uint64_t size;
    };
    virtual void init(image_t image)=0;
    virtual bool step(int step)=0;
    virtual word_t get_pc() const=0;
    virtual word_t get_gpr(uint8_t id) const=0;
};