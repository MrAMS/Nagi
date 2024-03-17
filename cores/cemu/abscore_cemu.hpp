#pragma once
#include "abscore.hpp"
#include "logger.hpp"

#include <cstdint>
#include <cstdio>

#include "device/nscscc_confreg.hpp"
#include "memory/memory_bus.hpp"
#include "memory/ram.hpp"
#include "core/la32r/la32r_core.hpp"
#include <queue>
#include <tuple>

class CoreCEMU : public Core<uint64_t, uint32_t, 32> {
public:
    CoreCEMU():
        func_mem(0x100000),
        data_mem(0x100000),
        confreg(true),
        core(0, mmio, true) {
    }
    void init(image_t image) override{
        func_mem.load_mem(image.bin, image.size);
        // func_mem.set_allow_warp(true);
        // 0x1c000000
        assert(mmio.add_dev(0x1c000000,0x100000  ,{&func_mem, false, false}));
        assert(mmio.add_dev(0x00000000,0x100000  ,{&data_mem, false, true}));
        assert(mmio.add_dev(0xbfaf0000, 0x10000, {&confreg, false, false}));
        LOG_LOG("cemu ready");
    }
    bool step(int step) override{
        static uint32_t test_point = 0;
        while(step--){
            core.step();
            confreg.tick();
            while (confreg.has_uart()) printf("%c", confreg.get_uart());
            if(confreg.get_num() != test_point){
                test_point = confreg.get_num();
                LOG_INFO("test_point: {:x}", test_point);
            }
            if(core.is_end()) return false;
            if(core.get_pc() == 0x1c000100){
                LOG_INFO("PASS TEST");
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

    bool trace_able() const override{
        return true;
    }
    std::tuple<bool, trace_gpr_t> check_trace_gpr() override{
        if(core.traces_gpr.empty()) return std::make_tuple(false, trace_gpr_t{});
        auto [id, val] = core.traces_gpr.front();
        core.traces_gpr.pop();
        return std::make_tuple(true, trace_gpr_t{id, val});
    }
    std::tuple<bool, trace_mem_t> check_trace_mem() override{
        if(mmio.traces_mem.empty()) return std::make_tuple(false, trace_mem_t{});
        auto [addr, buffer, size, is_write] = mmio.traces_mem.front();
        mmio.traces_mem.pop();
        return std::make_tuple(true, trace_mem_t{addr, buffer, size, is_write});
    }
    
private:
    memory_bus mmio;
    ram func_mem;
    ram data_mem;
    nscscc_confreg confreg;
    la32r_core<32> core;
};

