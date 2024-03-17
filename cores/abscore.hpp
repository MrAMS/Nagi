#pragma once
#include <cstdint>
#include <exception>
#include <string>
#include <fmt/format.h>
#include <tuple>

typedef struct{
    uint8_t *bin;
    uint64_t size;
} image_t;


template<class addr_t, class word_t, uint8_t GPR_NUM>
class Core{
public:
    using trace_gpr_t = struct{
        addr_t id;
        word_t val;
    };

    using trace_mem_t = struct{
        addr_t addr;
        const uint8_t* buffer;
        uint64_t size;
        bool is_write;
    };
    virtual void init(image_t image)=0;
    virtual bool step(int step)=0;
    virtual word_t get_pc() const=0;
    virtual word_t get_gpr(uint8_t id) const=0;
    virtual bool trace_able() const=0;
    virtual std::tuple<bool, trace_gpr_t> check_trace_gpr()=0;
    virtual std::tuple<bool, trace_mem_t> check_trace_mem()=0;
};