// #include "absmmio.hpp"
#include <cassert>
#include <cstdint>
#include <cstdlib>
#include <cstring>
#include <exception>
#include "core_nagi.hpp"
#include "logger.hpp"
#include "ringbuf.hpp"

#include "nagicore__Dpi.h"

absbus<uint64_t, uint32_t> bus_nagicore("nagicore bus", 0, 0);

// RingBuf<NagiCore::trace_mem_t, 8> traces_mem;
// RingBuf<NagiCore::trace_gpr_t, 8> traces_gpr;

RingBuf<NagiCore::trace_t, 8> nagi_traces;

perf_t nagi_perf;

void dpic_trace_mem(uint32_t addr, uint8_t size, uint32_t data, uint8_t wmask){
    uint8_t size_real = 1<<size;
    if(wmask==0){
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
        nagi_traces.push({addr, size_real, wdata, true});
        nagi_perf.mem_st++;
    }
}

void dpic_bus_read(uint32_t addr, uint8_t size, uint32_t* rdata){
    // try{
        *rdata = bus_nagicore.read(addr, 1<<size);
    // }catch(const std::exception &e){
        // LOG_ERRO("BUS READ {}", e.what());
    // }
    // traces_mem.push({addr, size, *rdata, false});
    // printf("%x\n", addr);
    // LOG_LOG("dpic read {:x}({})={:x}", addr, size, *rdata);
    // if(trace!=0){
    //     uint32_t t=0;
    //     memcpy(&t, (uint8_t*)rdata+(addr&(sizeof(uint32_t)-1)), size);
    //     nagi_traces.push({addr, size, t, false});
    // }
}

// void dpic_fetch_instr(uint32_t pc, uint8_t size, uint32_t* rdata){
//     bus_nagicore.read(pc, 4, (uint8_t*)rdata);
// }

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
    }
    if(pc_pre+4!=value){
        nagi_traces.push({value, 0, 0, true});
    }
    pc_pre = value;
    pc_nagicore = value;
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
