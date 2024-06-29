#pragma once
#include <cstdint>
#include <exception>
#include <string>
#include <fmt/format.h>
#include <sys/types.h>
#include <tuple>

typedef struct{
    uint8_t *bin;
    uint64_t size;
    uint64_t offset;
} image_t;

typedef struct{
    uint64_t tot;
    uint64_t hit;
    uint64_t uncache;
    uint64_t miss;
} perf_cache_t;

typedef struct{
    uint64_t invalid;
    uint64_t stall;
} perf_pipe_t;

typedef struct{
    uint64_t cycles;
    uint64_t valid_instrs;
    uint64_t mem_st;
    uint64_t mem_ld;
    uint64_t br_tot;
    uint64_t br_fail;
    perf_cache_t cache[2];
    perf_pipe_t pipe[10];
} perf_t;


template<class addr_t, class word_t, uint8_t GPR_NUM>
class Core{
public:
    using trace_gpr_t = struct{
        addr_t id;
        word_t val;
    };

    using trace_mem_t = struct{
        addr_t addr;
        uint8_t size; // or wmask
        word_t val;
        bool is_write;
    };

    using trace_t = struct trace_t_struct{
        addr_t addr;
        uint8_t mem_size; // mem_size=0 => gpr or pc
        word_t val;
        bool is_write;

        bool operator!=(const trace_t_struct& b) const{
            if(this->addr != b.addr|| this->mem_size != b.mem_size || this->val != b.val || this->is_write != b.is_write) return true;
            return false;
        }
        bool operator==(const trace_t_struct& b) const{
            return !(*this!=b);
        }
        std::string str() const{
            if(this->mem_size==0){
                if(this->addr>=GPR_NUM)
                    return fmt::format("PC {:x}", this->addr);
                else
                    return fmt::format("GPR x{} {} {:x}", this->addr, this->is_write ? "<=" : "=>", this->val);
            }else{
                return fmt::format("MEM {:x}({}) {} {:x}", this->addr, this->mem_size, this->is_write ? "<=" : "=>", this->val);
            }
        }
    };

    virtual void init(image_t image)=0;
    virtual bool step(int step)=0;
    virtual word_t get_pc() const=0;
    virtual word_t get_gpr(uint8_t id) const=0;
    // virtual bool trace_able() const=0;
    // virtual bool check_trace_gpr(trace_gpr_t& trace)=0;
    // virtual bool check_trace_mem(trace_mem_t& trace)=0;
    virtual bool get_trace(trace_t& trace)=0;
    virtual perf_t get_perf()=0;
    uint64_t get_cycs_tot() const{
        return cycs_tot;
    }
protected:
    uint64_t cycs_tot=0;
    uint64_t cycs_wave=0;
};