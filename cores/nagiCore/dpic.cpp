// #include "absmmio.hpp"
#include <cassert>
#include <cstdint>
#include <cstdlib>
#include <cstring>
#include <exception>
#include <ios>
#include "core_nagi.hpp"
#include "logger.hpp"
#include "ringbuf.hpp"

#include "nagicore__Dpi.h"

absbus<uint64_t, uint32_t> bus_nagicore("nagicore bus", 0, 0);

// RingBuf<NagiCore::trace_mem_t, 8> traces_mem;
// RingBuf<NagiCore::trace_gpr_t, 8> traces_gpr;

RingBuf<NagiCore::trace_t, 8> nagi_traces;

perf_t nagi_perf;

#if MTRACE_ENABLE
std::fstream nagi_mtrace_file;
void nagi_mtrace_init(){
    nagi_mtrace_file.open("./mtrace.csv", std::ios::out);
}
void nagi_mtrace_close(){
    nagi_mtrace_file.close();
}
#endif

void dpic_trace_mem(uint32_t addr, uint8_t size, uint32_t data, uint8_t wmask){
    uint8_t size_real = 1<<size;
    if(wmask==0){
        // LOG_LOG("addr {:x} rdata={:x}", addr, data);
        nagi_traces.push({addr, size_real, data, false});
        nagi_perf.mem_ld++;
    }else{
        uint32_t wdata = 0;
        uint8_t* ptr = (uint8_t*)&wdata;
        for(size_t i=0;i<sizeof(uint32_t);i++){
            if(!(wmask & (1 << i))) continue;
            *ptr = data & 0xFF;
            ptr++;
            data >>= 8;
        }
        // LOG_LOG("addr {:x} wdata={:x}", addr, wdata);
        nagi_traces.push({addr, size_real, wdata, true});
        nagi_perf.mem_st++;
    }
// #if MTRACE_ENABLE
//     const auto log = fmt::format("w addr={:x} size={} wdata={:x}\n", addr, size, data);
//     nagi_mtrace_file.write(log.c_str(), log.size());
// #endif
}

void dpic_bus_read(uint32_t addr, uint8_t size, uint32_t* rdata){
    *rdata = bus_nagicore.read(addr, 1<<size);
#if MTRACE_ENABLE
    const auto log = fmt::format("0,{:x},{},{:x}\n", addr, size, *rdata);
    nagi_mtrace_file.write(log.c_str(), log.size());
#endif
}

void dpic_bus_write(uint32_t addr, uint8_t wmask, const uint32_t wdata){
    // uint8_t sz=4;
    // uint8_t offset = 0;
    // switch (wmask) {
    //     case 1:
    //         sz = 1;
    //         break;
    //     case 2:
    //         sz = 1;
    //         offset = 1;
    //         break;
    //     case 4:
    //         sz = 1;
    //         offset = 2;
    //         break;
    //     case 8:
    //         sz = 1;
    //         offset = 3;
    //         break;
        
    //     case 3:
    //         sz = 2;
    //         break;
    //     case 12:
    //         sz = 2;
    //         offset = 2;
    //         break;
    //     case 0xf:
    //         sz = 4;
    //         break;
    //     default: assert(0);
    // }
    bus_nagicore.write(addr, wmask, wdata);
#if defined PROG_CRYPTONIGHT_BIN_PATH || defined PROG_MATRIX_BIN_PATH
    if(addr==0xbfd00000+0x3f8&&(char)wdata==6){
        LOG_LOG("reset perf");
        memset(&nagi_perf, 0, sizeof(nagi_perf));
    }
#endif
    // if(trace!=0){
    //     uint32_t wdata_real=0;
    //     memcpy((uint8_t*)&wdata_real, (uint8_t*)&wdata+offset, sz);
    //     nagi_traces.push({addr, sz, wdata_real, true});
    // }
}


uint32_t gpr_nagicore[32];

void dpic_update_gpr(uint8_t id, uint32_t value){
    // traces_gpr.push({id, value});
    gpr_nagicore[id] = value;
    nagi_traces.push({id, 0, value, true});
}

uint32_t pc_nagicore;
uint32_t pc_pre = 0;


void dpic_update_pc(uint32_t value){
    // LOG_INFO("update pc={:x}", value);
    if(pc_pre != value){
        nagi_perf.valid_instrs += 1;
        nagi_traces.push({value, 0, 0, true});
    }
    // if(pc_pre+4!=value){
    //     nagi_traces.push({value, 0, 0, true});
    // }
    pc_pre = value;
    pc_nagicore = value;
}

void dpic_update_pc2(uint32_t pc1, uint8_t valid1, uint32_t pc2, uint8_t valid2){
    // LOG_INFO("update pc={:x}", value);
    if(valid1){
        if(pc_pre != pc1){
            nagi_perf.valid_instrs += 1;
            nagi_traces.push({pc1, 0, 0, true});
        }
        pc_pre = pc1;
        pc_nagicore = pc1;
    }
    if(valid2){
        if(pc_pre != pc2){
            nagi_perf.valid_instrs += 1;
            nagi_traces.push({pc2, 0, 0, true});
        }
        pc_pre = pc2;
        pc_nagicore = pc2;
    }
}

/**
 * @brief Cache性能计数器
 * 
 * @param access_type b00-miss, b01-hit, b10-uncache
 */
void dpic_perf_cache(uint8_t id, uint8_t access_type){
    nagi_perf.cache[id].tot += 1;
    switch (access_type) {
        case 0:
            nagi_perf.cache[id].miss++;
            break;
        case 1:
            nagi_perf.cache[id].hit++;
            break;
        case 2:
            nagi_perf.cache[id].uncache++;
            break;
        case 3:
            nagi_perf.cache[id].uncache++;
            break;
        default:
            assert(0);
    }
}

void dpic_perf_bru(uint8_t fail){
    nagi_perf.br_tot++;
    if(fail) nagi_perf.br_fail++;
}

void dpic_perf_pipe(uint8_t id, uint8_t invalid, uint8_t stall){
    nagi_perf.pipe[id].invalid += invalid;
    nagi_perf.pipe[id].stall += stall;
}

void dpic_update_instrs_buff(uint8_t id, uint8_t head, uint8_t tail, uint8_t full, uint8_t reload){
    const int len = 8;
    nagi_perf.buffs[id].cycs += 1;
    nagi_perf.buffs[id].len_sum += ((int)tail+len-(int)head)%len;
    nagi_perf.buffs[id].full += full;
    nagi_perf.buffs[id].reload += reload;
}