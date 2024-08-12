#pragma once
#include "abscore.hpp"
#include "absmmio.hpp"

#include <cstdint>
#include <fstream>
#include <ios>
#include <memory>
#include <verilated.h>
#include "nagicore.h"
#include "nagicore___024root.h"
#include "nscscc_conf.hpp"
#include "ringbuf.hpp"
#include "logger.hpp"

#include "verilated_fst_c.h"

#include "config_nagicore.h"

#include "fmt/printf.h"

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
    uint64_t len_sum;
    uint64_t full;
    uint64_t reload;
    uint64_t cycs;
} perf_buff_t;

typedef struct{
    uint64_t cycles;
    uint64_t valid_instrs;
    uint64_t mem_st;
    uint64_t mem_ld;
    uint64_t br_tot;
    uint64_t br_fail;
    perf_cache_t cache[2];
    perf_pipe_t pipe[10];
    perf_buff_t buffs[2];
} perf_t;


class NagiCore : public Core<uint64_t, uint32_t, 32> {
public:
    // 只能单例使用, 因为DPIC不好处理
    static NagiCore& get_instance(){
        static NagiCore instance;
        return instance;
    }
    NagiCore(uint32_t rom_size=0x100000, uint32_t ram_size=0x100000):
        verilated_contextp(new VerilatedContext),
        top(new nagicore(verilated_contextp.get(), "nagicore")),
        tfp(new VerilatedFstC),
        rom("rom", rom_sart_addr, rom_size),
        ram("ram", ram_sart_addr, ram_size),
        ram_base_ext("base_ext", rom_base_ext_sart_addr, 0x800000),
        uart("uart", 0xbfd00000, 0x1000)
    {
        verilated_contextp->debug(0);
        // random all bits
        verilated_contextp->randReset(2);
#if WAVE_ENABLE
        verilated_contextp->traceEverOn(true);
        top->trace(tfp.get(), 99);  // Trace 99 levels of hierarchy (or see below)    
        tfp->open("wave.fst");
#endif
        extern absbus<uint64_t, uint32_t> bus_nagicore;
        bus_nagicore.add_device(&rom);
        bus_nagicore.add_device(&ram);
        bus_nagicore.add_device(&confreg);
        bus_nagicore.add_device(&ram_base_ext);
        bus_nagicore.add_device(&uart);
#if MTRACE_ENABLE

#endif
    }
    ~NagiCore(){
        top->final();
#if WAVE_ENABLE
        // LOG_LOG("save wave {}", cycs_wave);
        tfp->close();
#endif
#if MTRACE_ENABLE
        extern void nagi_mtrace_close();
        nagi_mtrace_close();
#endif
    };
    void init() override{
        // extern absbus<uint64_t, uint32_t> bus_nagicore;
        // bus_nagicore.write_buff(image.offset, image.bin, image.size);
#if MTRACE_ENABLE
        extern void nagi_mtrace_init();
        nagi_mtrace_init();
#endif
        LOG_LOG("Nagi ready");
        top->clock = 0;
        for(int i=0;i<reset_cycles*2;++i){
            verilated_contextp->timeInc(1);
            top->clock = 1^top->clock;
            top->eval();
            top->reset = 1;
            top->eval();
            record_wave();
        }
        cycs_wave += reset_cycles;
        cycs_tot += reset_cycles;
    }
    void write_mem(uint64_t addr, uint8_t* data, uint64_t len) override{
        extern absbus<uint64_t, uint32_t> bus_nagicore;
        bus_nagicore.write_buff(addr, data, len);
    }
    void read_mem(uint64_t addr, uint8_t* data, uint64_t size) override{
        extern absbus<uint64_t, uint32_t> bus_nagicore;
        bus_nagicore.read_buff(addr, data, size);
    }
    bool step(int step) override{
        while(step--){
            extern perf_t nagi_perf;
            nagi_perf.cycles++;
            
            cycs_tot += 1;
            cycs_wave += 1;
            verilated_contextp->timeInc(1);
            top->reset = 0;
            top->eval();
            top->clock = 1;
            top->eval();
            record_wave();
            verilated_contextp->timeInc(1);
            top->clock = 0;
            top->eval();
            record_wave();
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
    std::string get_perf() override{
        extern perf_t nagi_perf;
        // nagi_perf.cycles = cycs_tot - reset_cycles;
        std::string info;
        return fmt::format("Performance\n"
            "Instr:\n"
            " instrs={} IPC={} valid={} cycs={}\n"
            "Buffers:\n"
            " IBuff reload={} len_avg={:.3f} full={}\n"
            " WBuff len_avg={:.3f} full={}\n"
            "BRU:\n"
            " success={:.1f}% tot={} fail={}\n"
            "Mem:\n"
            " tot={} ld={} st={}\n"
            " I$ hit rate={:.3f}% tot={} miss={}\n"
            " D$ hit rate={:.3f}% tot={} uncache={}\n"
            "Pipeline:\n"
            " invalid IF={}({} {:.1f}%) EX={}({} {:.1f}%) D$={}({} {:.1f}%)\n"
            " stall   IF={}({} {:.1f}%) EX={}({} {:.1f}%) D$={}({} {:.1f}%)\n"
            ,
                nagi_perf.valid_instrs,
                nagi_perf.valid_instrs*1.0f/nagi_perf.cycles, nagi_perf.valid_instrs, nagi_perf.cycles,

                nagi_perf.buffs[0].reload, nagi_perf.buffs[0].len_sum*1.0L/nagi_perf.buffs[0].cycs, nagi_perf.buffs[0].full,
                nagi_perf.buffs[1].len_sum*1.0L/nagi_perf.buffs[1].cycs, nagi_perf.buffs[1].full,

                (nagi_perf.br_tot-nagi_perf.br_fail)*100.0/nagi_perf.br_tot, nagi_perf.br_tot, nagi_perf.br_fail,
                
                nagi_perf.mem_ld+nagi_perf.mem_st, nagi_perf.mem_ld, nagi_perf.mem_st, 
                nagi_perf.cache[0].hit*100.0f/(nagi_perf.cache[0].hit+nagi_perf.cache[0].miss), nagi_perf.cache[0].tot, nagi_perf.cache[0].miss,
                nagi_perf.cache[1].hit*100.0f/(nagi_perf.cache[1].hit+nagi_perf.cache[1].miss), nagi_perf.cache[1].tot, nagi_perf.cache[1].uncache,
                
                // nagi_perf.pipe[0].invalid, nagi_perf.pipe[1].invalid, nagi_perf.pipe[2].invalid,
                // nagi_perf.pipe[0].stall, nagi_perf.pipe[1].stall, nagi_perf.pipe[2].stall
                nagi_perf.pipe[0].invalid,   nagi_perf.pipe[0].invalid,                       nagi_perf.pipe[0].invalid*100.0f/nagi_perf.cycles,
                nagi_perf.pipe[1].invalid,   nagi_perf.pipe[1].invalid-nagi_perf.pipe[0].invalid,  (nagi_perf.pipe[1].invalid-nagi_perf.pipe[0].invalid)*100.0f/nagi_perf.cycles,
                nagi_perf.pipe[2].invalid,   nagi_perf.pipe[2].invalid-nagi_perf.pipe[1].invalid,  (nagi_perf.pipe[2].invalid-nagi_perf.pipe[1].invalid)*100.0f/nagi_perf.cycles,

                nagi_perf.pipe[0].stall,     nagi_perf.pipe[0].stall-nagi_perf.pipe[1].stall,      (nagi_perf.pipe[0].stall-nagi_perf.pipe[1].stall)*100.0f/nagi_perf.cycles,
                nagi_perf.pipe[1].stall,     nagi_perf.pipe[1].stall-nagi_perf.pipe[2].stall,      (nagi_perf.pipe[1].stall-nagi_perf.pipe[2].stall)*100.0f/nagi_perf.cycles,
                nagi_perf.pipe[2].stall,     nagi_perf.pipe[2].stall,                         nagi_perf.pipe[2].stall*100.0f/nagi_perf.cycles
        );
    }

private:

    NagiCore(const NagiCore&);
    NagiCore& operator=(const NagiCore&);

    const std::unique_ptr<VerilatedContext> verilated_contextp;
    const std::unique_ptr<nagicore> top;
    const std::unique_ptr<VerilatedFstC> tfp;

    const uint32_t rom_sart_addr = 0x1c000000;
    const uint32_t ram_sart_addr = 0x00000000;
    const uint32_t rom_base_ext_sart_addr = 0x80000000;
    const int reset_cycles = 10;
    dev_ram<uint64_t, uint32_t> rom;
    dev_ram<uint64_t, uint32_t> ram;
    dev_ram<uint64_t, uint32_t> ram_base_ext;
    nscscc_conf<uint64_t> confreg;
    dev_uart<uint64_t, uint32_t> uart;

    void record_wave(){
#if WAVE_ENABLE
#if WAVE_RECORE_MODE
        if(cycs_wave > WAVE_LEN){
            tfp->close();
            // remove("wave.fst");
            tfp->open("wave.fst");
            cycs_wave = 0;
        }
        tfp->dump(verilated_contextp->time());
#else
        if(cycs_tot >= WAVE_START_CYC && cycs_tot < WAVE_START_CYC + WAVE_LEN){
            tfp->dump(verilated_contextp->time());
        }
#endif
#endif
    }
};
