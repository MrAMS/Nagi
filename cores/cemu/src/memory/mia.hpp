#ifndef MIA_HPP
#define MIA_HPP

#include "mmio_dev.hpp"
#include <cstdint>
#include <cstdio>
#include <cstring>
#include <fstream>
#include <filesystem>
#include <iostream>
#include <assert.h>

class mia: public mmio_dev {
public:
    mia() {
    }
    void load_mem(const unsigned char *init_binary, uint64_t init_binary_len){
    }
    void load_binary(uint64_t start_addr, const char *init_file) {
    }
    void load_text(uint64_t start_addr, const char *init_file) {
    }
    bool do_read (uint64_t start_addr, uint64_t size, unsigned char* buffer) {
        printf("read mia\n");
        assert(size==4);
        int finish = 0;
        memcpy(buffer, (uint8_t*)&finish, 4);
        return true;
    }
    bool do_write(uint64_t start_addr, uint64_t size, const unsigned char* buffer) {
        assert(0);
        return true;
    }
    void set_allow_warp(bool value) {
        allow_warp = true;
    }
private:
    bool allow_warp = false;
};

#endif