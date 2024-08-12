#pragma once
#include "abscore.hpp"
#include "cemu/src/device/myuart.hpp"
#include "logger.hpp"

#include <cstdint>
#include <cstdio>

#include "cemu/src/device/nscscc_confreg.hpp"
#include "src/memory/memory_bus.hpp"
#include "src/memory/ram.hpp"
#include "src/core/la32r/la32r_core.hpp"
#include <cstring>
#include <queue>
#include <tuple>

class CEMUCore : public Core<uint64_t, uint32_t, 32> {
public:
    CEMUCore():
        func_mem(0x100000),
        data_mem(0x100000),
        base_mem(0x800000),
        ext_mem(0x400000),
        confreg(true),
        core(0, mmio, true)
    {
        // assert(mmio.add_dev(0x1c000000,0x100000, {&func_mem, false, true}));
        // assert(mmio.add_dev(0x00000000,0x100000, {&data_mem, false, true}));
        assert(mmio.add_dev(0x80000000,0x800000, {&base_mem, false, true}));
        assert(mmio.add_dev(0xbfaf0000, 0x10000, {&confreg, false, false}));
        assert(mmio.add_dev(0xbfd00000, 0x10000, {&uart, false, false}));

    }
    void init() override{
        // base_mem.load_mem(image.bin, image.size);
        // func_mem.set_allow_warp(true);
        // mmio.do_write(image.offset, image.size, image.bin);
        LOG_LOG("cemu ready");
    }
    void write_mem(uint64_t addr, uint8_t* data, uint64_t len) override{
        mmio.do_write(addr, len, data);
    }
    void read_mem(uint64_t addr, uint8_t* data, uint64_t size) override{
        mmio.do_read(addr, size, data);
    }
    bool step(int step) override{
        while(step--){
            cycs_tot += 1;
            core.step();
            confreg.tick();
#if defined PROG_CRYPTONIGHT_BIN_PATH || defined PROG_MATRIX_BIN_PATH
            if(uart.get_output()==7) program_end = true;
#endif
            // printf("cemu: pc=%x\n", core.get_pc());
            // while (confreg.has_uart()) printf("%c", confreg.get_uart());
            // if(confreg.get_num() != test_point){
            //     test_point = confreg.get_num();
            //     LOG_LOG("test_point: {:x}", test_point);
            // }
            // if(core.is_end()) return false;
            // if(core.get_pc() == 0x1c000100){
            //     LOG_LOG("PASS TEST");
            //     return false;
            // }
        }
        if(program_end) return false;
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
    std::string get_perf() override{
        return "NO PERF DATA";
    }
    
private:
    memory_bus mmio;
    ram func_mem;
    ram data_mem;
    ram base_mem;
    ram ext_mem;
    my_uart uart;
    nscscc_confreg confreg;
    la32r_core<32> core;
    uint32_t test_point = 0;
    bool program_end = false;
};

