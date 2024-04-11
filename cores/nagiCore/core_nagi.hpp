#pragma once
#include "abscore.hpp"
#include "absmmio.hpp"

#include <cstdint>
#include <memory>
#include <verilated.h>
#include "VCore.h"
#include "VCore___024root.h"
#include "nscscc_conf.hpp"
#include "ringbuf.hpp"
#include "logger.hpp"

#include "core_nagicore_config.h"

#if CONFIG_CORE_NAGICORE_WAVE
#include "verilated_fst_c.h"
#endif


class NagiCore : public Core<uint64_t, uint32_t, 32> {
public:
    // 只能单例使用, 因为DPIC不好处理
    static NagiCore& get_instance(){
        static NagiCore instance;
        return instance;
    }
    NagiCore(uint32_t rom_size=0x100000, uint32_t ram_size=0x100000):
        verilated_contextp(new VerilatedContext),
        top(new VCore(verilated_contextp.get(), "VCore")),
        tfp(new VerilatedFstC),
        rom(rom_size),
        ram(ram_size)
    {
        verilated_contextp->debug(0);
        // random all bits
        verilated_contextp->randReset(2);
        verilated_contextp->traceEverOn(true);
        top->trace(tfp.get(), 99);  // Trace 99 levels of hierarchy (or see below)    
        tfp->open("wave.fst");

        extern absbus<uint32_t> bus_nagicore;
        bus_nagicore.add_device("rom", rom_sart_addr, rom_size, &rom);
        bus_nagicore.add_device("ram", ram_sart_addr, ram_size, &ram);
        bus_nagicore.add_device("confreg", nscscc_conf<uint32_t>::START_ADDR, nscscc_conf<uint32_t>::SIZE, &confreg);
    }
    ~NagiCore(){
        top->final();
        tfp->close();
    };
    void init(image_t image) override{
        rom.load_mem(image.bin, image.size);
        LOG_LOG("Nagi ready");
        top->clock = 0;
        for(int i=0;i<20;++i){
            verilated_contextp->timeInc(1);
            top->clock = 1^top->clock;
            top->reset = 1;
            top->eval();
            tfp->dump(verilated_contextp->time());
        }
    }
    bool step(int step) override{
        trace_updated = false;
        while(step--){
            verilated_contextp->timeInc(1);
            top->reset = 0;
            top->clock = 1;
            top->eval();
            tfp->dump(verilated_contextp->time());
            verilated_contextp->timeInc(1);
            top->reset = 0;
            top->clock = 0;
            top->eval();
            tfp->dump(verilated_contextp->time());
        }
        return true;
    }
    uint32_t get_gpr(uint8_t id) const override{
        extern uint32_t gpr_nagicore[32];
        return gpr_nagicore[id];
    }
    // bool trace_able() const override{
    //     return true;
    // }
    uint32_t get_pc() const override{
        extern uint32_t pc_nagicore;
        return pc_nagicore;
    }
    // bool check_trace_gpr(trace_gpr_t& trace) override{
    //     extern RingBuf<NagiCore::trace_gpr_t, 8> traces_gpr;
    //     return traces_gpr.pop(trace);
    // }
    // bool check_trace_mem(trace_mem_t& trace) override{
    //     extern RingBuf<NagiCore::trace_mem_t, 8> traces_mem;
    //     return traces_mem.pop(trace);
    // }
    bool get_trace(trace_t& trace) override{
        extern RingBuf<NagiCore::trace_t, 8> nagi_traces;
        return nagi_traces.pop(trace);
    }

private:

    NagiCore(const NagiCore&);
    NagiCore& operator=(const NagiCore&);

    const std::unique_ptr<VerilatedContext> verilated_contextp;
    const std::unique_ptr<VCore> top;
    const std::unique_ptr<VerilatedFstC> tfp;

    const uint32_t rom_sart_addr = 0x1c000000;
    const uint32_t ram_sart_addr = 0x00000000;
    dev_ram<uint32_t> rom;
    dev_ram<uint32_t> ram;
    nscscc_conf<uint32_t> confreg;
};
