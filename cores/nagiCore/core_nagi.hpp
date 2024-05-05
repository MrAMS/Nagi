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

#include "verilated_fst_c.h"


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
        rom("rom", rom_sart_addr, rom_size),
        ram("ram", ram_sart_addr, ram_size)
    {
        verilated_contextp->debug(0);
        // random all bits
        verilated_contextp->randReset(2);
#if CONFIG_CORE_NAGICORE_WAVE
        verilated_contextp->traceEverOn(true);
        top->trace(tfp.get(), 99);  // Trace 99 levels of hierarchy (or see below)    
        tfp->open("wave.fst");
#endif
        extern absbus<uint64_t, uint32_t> bus_nagicore;
        bus_nagicore.add_device(&rom);
        bus_nagicore.add_device(&ram);
        bus_nagicore.add_device(&confreg);
    }
    ~NagiCore(){
        top->final();
#if CONFIG_CORE_NAGICORE_WAVE
        tfp->close();
#endif
    };
    void init(image_t image) override{
        rom.load_mem(image.bin, image.size);
        LOG_LOG("Nagi ready");
        top->clock = 0;
        const int reset_cycles = 10;
        for(int i=0;i<reset_cycles*2;++i){
            verilated_contextp->timeInc(1);
            top->clock = 1^top->clock;
            top->eval();
            top->reset = 1;
            top->eval();
#if CONFIG_CORE_NAGICORE_WAVE
            tfp->dump(verilated_contextp->time());
#endif
        }
        cycs_tot += reset_cycles;
    }
    bool step(int step) override{
        while(step--){
            cycs_tot += 1;
            verilated_contextp->timeInc(1);
            top->reset = 0;
            top->eval();
            top->clock = 1;
            top->eval();
#if CONFIG_CORE_NAGICORE_WAVE
            if(cycs_tot > CONFIG_CORE_NAGICORE_WAVE_END - CONFIG_CORE_NAGICORE_WAVE_LEN && cycs_tot <= CONFIG_CORE_NAGICORE_WAVE_END)
                tfp->dump(verilated_contextp->time());
#endif
            verilated_contextp->timeInc(1);
            top->clock = 0;
            top->eval();
#if CONFIG_CORE_NAGICORE_WAVE
            if(cycs_tot > CONFIG_CORE_NAGICORE_WAVE_END - CONFIG_CORE_NAGICORE_WAVE_LEN && cycs_tot <= CONFIG_CORE_NAGICORE_WAVE_END)
                tfp->dump(verilated_contextp->time());
#endif
        }
        return true;
    }
    uint32_t get_gpr(uint8_t id) const override{
        extern uint32_t gpr_nagicore[32];
        return gpr_nagicore[id];
    }
    uint32_t get_pc() const override{
        extern uint32_t pc_nagicore;
        return pc_nagicore;
    }
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
    dev_ram<uint64_t, uint32_t> rom;
    dev_ram<uint64_t, uint32_t> ram;
    nscscc_conf<uint64_t> confreg;
};
