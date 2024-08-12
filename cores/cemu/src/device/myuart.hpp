#pragma once

#include "cemu/src/memory/mmio_dev.hpp"
#include <cstdint>
#include <cstdio>
#include <cstring>
#include <cassert>

#include "absmmio.hpp"


#define UART_ADDR_STATUS    0x3fc
#define UART_ADDR_RW        0x3f8

class my_uart : public mmio_dev {
public:
    my_uart():uart("uart", 0xbfd00000, 0x1000){

    }
    bool do_read(uint64_t start_addr, uint64_t size, unsigned char* buffer) {
        // switch (start_addr) {
        //     case UART_ADDR_STATUS:
        //         *(unsigned int *)buffer = 3;
        //         break;
        //     case UART_ADDR_RW:
        //         *(unsigned int *)buffer = 'T';
        //         break;
        //     default:
        //         assert(0);
        // }
        // return true;
        start_addr += 0xbfd00000;
        *(char *)buffer = uart.read(start_addr, size);
        // printf("UART read %lx %ld = %c(%x)\n", start_addr, size, *(char *)buffer, *(char *)buffer);
        return true;
    }
    bool do_write(uint64_t start_addr, uint64_t size, const unsigned char* buffer) {
        switch (start_addr) {
            case UART_ADDR_RW:
                char_out = *(char *)buffer;
                printf("UART: %c(%x)\n", *(char *)buffer, *buffer);
                break;
            default:
                assert(0);
                
        }
        return true;
    }
    char get_output(){
        char res = char_out;
        char_out = 0;
        return res;
    }
private:
    dev_uart<uint64_t, uint8_t> uart;
    char char_out;
};