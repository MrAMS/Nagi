#include "config.h"
#include "abstract_emu.hpp"
#include "logger.hpp"

#include <cstdint>
#include <cstdio>

#include "device/nscscc_confreg.hpp"
#include "memory/memory_bus.hpp"
#include "memory/ram.hpp"
#include "core/la32r/la32r_core.hpp"

memory_bus mmio;
ram func_mem(0x100000);
ram data_mem(0x100000);
nscscc_confreg confreg(true);
la32r_core<32> core(0, mmio, false);

void emu_init(image_t image){
    func_mem.load_mem(image.bin, image.size);
    // func_mem.set_allow_warp(true);
    // 0x1c000000
    assert(mmio.add_dev(0x1c000000,0x100000  ,{&func_mem, false, false}));
    assert(mmio.add_dev(0x00000000,0x100000  ,{&data_mem, false, true}));
    assert(mmio.add_dev(0xbfaf0000, 0x10000, {&confreg, false, false}));
    LOG_LOG("cemu ready\n");
}

bool emu_step(int num=1){
    static uint32_t test_point = 0;
    while(num--){
        core.step();
        confreg.tick();
        while (confreg.has_uart()) printf("%c", confreg.get_uart());
        if(confreg.get_num() != test_point){
            test_point = confreg.get_num();
            LOG_INFO("test_point: {:x}\n", test_point);
        }
        if(core.is_end()) return false;
        if(core.get_pc() == 0x1c000100){
            LOG_INFO("PASS TEST\n");
            return false;
        }
    }
    return true;
}
