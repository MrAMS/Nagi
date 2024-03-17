#pragma once
#include <cstdint>
#include <exception>
#include <string>
#include <fmt/format.h>

template<class word_t, uint8_t GPR_NUM>
class Core{
public:
    word_t get_pc() const{
        return pc;
    }
    word_t get_gpr(uint8_t id) const{
        return gpr[id];
    }
    void set_pc(word_t val){
        pc = val;
    }
    void set_gpr(uint8_t id, word_t val){
        if(id>=GPR_NUM) throw fmt::format("Invalid GPR id: {}", id);
        gpr[id] = val;
    }
private:
    word_t gpr[GPR_NUM];
    word_t pc;
};