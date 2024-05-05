#include "absmmio.hpp"
#include <cassert>
#include <cstdint>
#include <cstdlib>
#include <cstring>
#include <exception>
#include "core_nagi.hpp"
#include "logger.hpp"
#include "ringbuf.hpp"

#include "VCore__Dpi.h"

absbus<uint64_t, uint32_t> bus_nagicore("nagicore bus", 0, 0);

// RingBuf<NagiCore::trace_mem_t, 8> traces_mem;
// RingBuf<NagiCore::trace_gpr_t, 8> traces_gpr;

RingBuf<NagiCore::trace_t, 8> nagi_traces;

template<typename DATA_T>
void _dpic_bus_read(uint32_t addr, uint8_t size, DATA_T* rdata){
    // try{
        *rdata = bus_nagicore.read(addr, size);
    // }catch(const std::exception &e){
        // LOG_ERRO("BUS READ {}", e.what());
    // }
    // traces_mem.push({addr, size, *rdata, false});
    // TODO
    if(!(addr>=0x1c000000&&addr<0x1c000000+0x100000)){
        DATA_T t=0;
        memcpy(&t, (uint8_t*)rdata+(addr&(sizeof(DATA_T)-1)), size);
        nagi_traces.push({addr, size, t, false});
    }
}

#define dpic_bus_read_instantiation(DATA_T) \
    void dpic_bus_read(uint32_t raddr, uint8_t size, DATA_T* rdata){ \
        _dpic_bus_read(raddr, 1<<size, rdata); \
    }

dpic_bus_read_instantiation(uint32_t)

// void dpic_fetch_instr(uint32_t pc, uint8_t size, uint32_t* rdata){
//     bus_nagicore.read(pc, 4, (uint8_t*)rdata);
// }

void dpic_bus_write(uint32_t addr, uint8_t wmask, const uint32_t wdata){
    uint8_t sz=4;
    uint8_t offset = 0;
    switch (wmask) {
        case 1:
            sz = 1;
            break;
        case 2:
            sz = 1;
            offset = 1;
            break;
        case 4:
            sz = 1;
            offset = 2;
            break;
        case 8:
            sz = 1;
            offset = 3;
            break;
        
        case 3:
            sz = 2;
            break;
        case 12:
            sz = 2;
            offset = 2;
            break;
        case 0xf:
            sz = 4;
            break;
        default: assert(0);
    }
    bus_nagicore.write(addr, wmask, wdata);
    uint32_t wdata_real=0;
    memcpy((uint8_t*)&wdata_real, (uint8_t*)&wdata+offset, sz);
    nagi_traces.push({addr, sz, wdata_real, true});
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
    if(pc_pre+4!=value){
        nagi_traces.push({value, 0, 0, true});
    }
    pc_pre = value;
    pc_nagicore = value;
}
