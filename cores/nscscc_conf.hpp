#pragma once
#include "absmmio.hpp"
#include <cstdint>
#include <queue>

template<class ADDR_T>
class nscscc_conf: public absdev<ADDR_T, uint32_t>{
public:
    static const uint32_t START_ADDR = 0xbfaf0000;
    static const uint32_t SIZE = 0x10000;

    static const uint32_t ADDR_SWITCH = 0xf090;
    static const uint32_t CR0_ADDR = 0x8000;
    static const uint32_t CR1_ADDR = 0x8010;
    static const uint32_t CR2_ADDR = 0x8020;
    static const uint32_t CR3_ADDR = 0x8030;
    static const uint32_t CR4_ADDR = 0x8040;
    static const uint32_t CR5_ADDR = 0x8050;
    static const uint32_t CR6_ADDR = 0x8060;
    static const uint32_t CR7_ADDR = 0x8070;

    static const uint32_t IO_SIMU_ADDR = 0xff00;
    static const uint32_t UART_ADDR = 0xff10;
    static const uint32_t SIMU_FLAG_ADDR = 0xff20;
    static const uint32_t OPEN_TRACE_ADDR = 0xff30;
    static const uint32_t NUM_MONITOR_ADDR = 0xff40;
    static const uint32_t LED_ADDR = 0xf020;
    static const uint32_t LED_RG0_ADDR = 0xf030;
    static const uint32_t LED_RG1_ADDR = 0xf040;
    static const uint32_t NUM_ADDR = 0xf050;
    static const uint32_t SWITCH_ADDR = 0xf060;
    static const uint32_t BTN_KEY_ADDR = 0xf070;
    static const uint32_t BTN_STEP_ADDR = 0xf080;
    static const uint32_t SW_INTER_ADDR = 0xf090; // switch interleave
    static const uint32_t TIMER_ADDR = 0xe000;

    static const uint32_t VIRTUAL_UART_ADDR = 0xfff0;  // 32'hbfaf_fff0

    nscscc_conf(bool sim = true):absdev<ADDR_T, uint32_t>("nscscc_conf", START_ADDR, SIZE){
        set_switch(sim ? 0x0 : 0xff);
        timer = 0;
        memset(cr,0,sizeof(cr));
        led = 0;
        led_rg0 = 0;
        led_rg1 = 0;
        num = 0;
        simu_flag = sim ? 0xffffffffu : 0;
        io_simu = 0;
        open_trace = 1;
        num_monitor = 1;
        virtual_uart = 0;
    }
    uint32_t read(ADDR_T start_addr, uint8_t size) override{
        start_addr -= this->start_addr;
        if(size!=4)
            throw absmmio_excep(
                fmt::format("nscscc_conf: must read word")
            );
        switch (start_addr) {
            case CR0_ADDR:
                return cr[0];
                break;
            case CR1_ADDR:
                return cr[1];
                break;
            case CR2_ADDR:
                return cr[2];
                break;
            case CR3_ADDR:
                return cr[3];
                break;
            case CR4_ADDR:
                return cr[4];
                break;
            case CR5_ADDR:
                return cr[5];
                break;
            case CR6_ADDR:
                return cr[6];
                break;
            case CR7_ADDR:
                return cr[7];
                break;
            case LED_ADDR:
                return led;
                break;
            case LED_RG0_ADDR:
                return led_rg0;
                break;
            case LED_RG1_ADDR:
                return led_rg1;
                break;
            case NUM_ADDR:
                return num;
                break;
            case SWITCH_ADDR:
                return switch_data;
                break;
            case BTN_KEY_ADDR:
                return 0;
                break;
            case BTN_STEP_ADDR:
                return 0;
                break;
            case SW_INTER_ADDR:
                return switch_inter_data;
                break;
            case TIMER_ADDR:
                return timer;
                break;
            case SIMU_FLAG_ADDR:
                return simu_flag;
                break;
            case IO_SIMU_ADDR:
                return io_simu;
                break;
            case VIRTUAL_UART_ADDR:
                return virtual_uart;
                break;
            case OPEN_TRACE_ADDR:
                return open_trace;
                break;
            case NUM_MONITOR_ADDR:
                return num_monitor;
                break;
            default:
                throw absmmio_excep(
                    fmt::format("nscscc_conf: read address [{:x},{:x}] do not match any", start_addr, start_addr+size)
                );
        }
    }
    void write(ADDR_T start_addr, uint8_t mask, uint32_t wdata) override{
        start_addr -= this->start_addr;
        switch (start_addr) {
            case CR0_ADDR:
                cr[0] = wdata;
                break;
            case CR1_ADDR:
                cr[1] = wdata;
                break;
            case CR2_ADDR:
                cr[2] = wdata;
                break;
            case CR3_ADDR:
                cr[3] = wdata;
                break;
            case CR4_ADDR:
                cr[4] = wdata;
                break;
            case CR5_ADDR:
                cr[5] = wdata;
                break;
            case CR6_ADDR:
                cr[6] = wdata;
                break;
            case CR7_ADDR:
                cr[7] = wdata;
                break;
            case TIMER_ADDR:
                timer = wdata;
                break;
            case IO_SIMU_ADDR:
                io_simu = (((wdata) & 0xffff) << 16) | ((wdata) >> 16);
                break;
            case OPEN_TRACE_ADDR: {
                open_trace = (wdata) != 0;
                break;
            }
            case NUM_MONITOR_ADDR:
                num_monitor = (wdata) & 1;
                break;
            case VIRTUAL_UART_ADDR:
                virtual_uart = (*(char*)&wdata) & 0xff;
                uart_queue.push(virtual_uart);
                break;
            case NUM_ADDR:
                num = wdata;
                break;
            case LED_RG0_ADDR:
                led_rg0 = wdata;
                break;
            case LED_RG1_ADDR:
                led_rg1 = wdata;
                break;
            case LED_ADDR:
                led = wdata;
                break;
            default:
                throw absmmio_excep(
                    fmt::format("nscscc_conf: write address {:x} ({:x}) do not match any", start_addr, mask)
                );
        }
    }
    void load_mem(ADDR_T addr, uint8_t* data, ADDR_T size) override{
        throw absmmio_excep(
            fmt::format("nscscc_conf: can't load_mem")
        );
        return;
    }
private:
    uint32_t cr[8];
    unsigned int switch_data;
    unsigned int switch_inter_data;
    unsigned int timer;
    unsigned int led;
    unsigned int led_rg0;
    unsigned int led_rg1;
    unsigned int num;
    unsigned int simu_flag;
    unsigned int io_simu;
    char virtual_uart;
    unsigned int open_trace;
    unsigned int num_monitor;
    std::queue <char> uart_queue;

    void set_switch(uint8_t value) {
        switch_data = value ^ 0xf;
        switch_inter_data = 0;
        for (int i=0;i<=7;i++) {
            if ( ((value >> i) & 1) == 0) {
                switch_inter_data |= 2<<(2*i);
            }
        }
    }
    bool has_uart() {
        return !uart_queue.empty();
    }
    char get_uart() {
        char res = uart_queue.front();
        uart_queue.pop();
        return res;
    }
    uint32_t get_num() {
        return num;
    }
};
