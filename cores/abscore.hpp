#pragma once
#include <cstdint>
#include <exception>
#include <string>
#include <fmt/format.h>
#include <functional>

using image_t = struct{
    uint8_t *bin;
    uint64_t size;
};

template<class word_t, uint8_t GPR_NUM>
class Core{
public:
    using trace_record_t = struct{
        word_t val;
    };
    virtual void init(image_t image)=0;
    virtual bool step(int step)=0;
    virtual word_t get_pc() const=0;
    virtual word_t get_gpr(uint8_t id) const=0;
    static void(*trace_callback_gpr)(uint8_t, word_t);
};