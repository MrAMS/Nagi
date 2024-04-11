#pragma once
#include "abscore.hpp"
#include "logger.hpp"

#include <cstdint>
#include <cstdio>

#include "device/nscscc_confreg.hpp"
#include "memory/memory_bus.hpp"
#include "memory/ram.hpp"
#include "core/la32r/la32r_core.hpp"
#include <cstring>
#include <queue>
#include <tuple>

class CEMUCore : public Core<uint64_t, uint32_t, 32> {
public:
    CEMUCore():
        func_mem(0x100000),
        data_mem(0x100000),
        confreg(true),
        core(0, mmio, true)
    {
        assert(mmio.add_dev(0x1c000000,0x100000, {&func_mem, false, true}));
        assert(mmio.add_dev(0x00000000,0x100000, {&data_mem, false, true}));
        assert(mmio.add_dev(0xbfaf0000, 0x10000, {&confreg, false, false}));
    }
    void init(image_t image) override{
        func_mem.load_mem(image.bin, image.size);
        // func_mem.set_allow_warp(true);
        // 0x1c000000
        LOG_LOG("cemu ready");
    }
    bool step(int step) override{
        while(step--){
            core.step();
            confreg.tick();
            while (confreg.has_uart()) printf("%c", confreg.get_uart());
            if(confreg.get_num() != test_point){
                test_point = confreg.get_num();
                LOG_LOG("test_point: {:x}", test_point);
            }
            if(core.is_end()) return false;
            if(core.get_pc() == 0x1c000100){
                LOG_LOG("PASS TEST");
                return false;
            }
        }
        return true;
    }
    uint32_t get_pc() const override{
        return core.get_pc();
    }
    uint32_t get_gpr(uint8_t id) const override{
        return core.get_gpr(id);
    }
    bool get_trace(trace_t& trace) override{
        // printf("core.traces.len=%ld\n", core.traces.size());
        if(core.traces.empty()) return false;
        auto [addr, size, val, is_write] = core.traces.front();
        core.traces.pop();
        trace.addr = addr;
        trace.mem_size = size;
        trace.val = val;
        trace.is_write = is_write;
        return true;
    }
    
private:
    memory_bus mmio;
    ram func_mem;
    ram data_mem;
    nscscc_confreg confreg;
    la32r_core<32> core;
    uint32_t test_point = 0;
};

