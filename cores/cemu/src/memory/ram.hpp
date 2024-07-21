#ifndef RAM_HPP
#define RAM_HPP

#include "mmio_dev.hpp"
#include <cstring>
#include <fstream>
#include <filesystem>
#include <iostream>
#include <assert.h>

class ram: public mmio_dev {
public:
    ram(uint64_t size_bytes) {
        mem = new unsigned char[size_bytes];
        mem_size = size_bytes;
        memset(mem, 0, mem_size); // FIXME
    }
    ram(uint64_t size_bytes, const unsigned char *init_binary, uint64_t init_binary_len):ram(size_bytes) {
        load_mem(init_binary, init_binary_len);
        // assert(init_binary_len <= size_bytes);
        // memcpy(mem,init_binary,init_binary_len);
    }
    ram(uint64_t size_bytes, const char *init_file):ram(size_bytes) {
        uint64_t file_size = std::filesystem::file_size(init_file);
        if (file_size > mem_size) {
            std::cerr << "ram size is not big enough for init file." << std::endl;
            file_size = size_bytes;
        }
        std::ifstream file(init_file,std::ios::in | std::ios::binary);
        file.read((char*)mem,file_size);
    }
    void load_mem(const unsigned char *init_binary, uint64_t init_binary_len){
        assert(init_binary_len <= mem_size);
        memcpy(mem,init_binary,init_binary_len);
    }
    void load_binary(uint64_t start_addr, const char *init_file) {
        uint64_t file_size = std::filesystem::file_size(init_file);
        if (file_size > mem_size) {
            std::cerr << "ram size is not big enough for init file." << std::endl;
            file_size = mem_size;
        }
        std::ifstream file(init_file,std::ios::in | std::ios::binary);
        file.read((char*)mem+start_addr,file_size);
    }
    void load_text(uint64_t start_addr, const char *init_file) {
        uint64_t file_size = 0;
        std::ifstream file(init_file, std::ios::in);
        std::string line;
        while (std::getline(file, line)) {
            uint32_t x = std::stoul(line, nullptr, 16);
            *(mem + start_addr + file_size) = x;
            file_size++;
            if (file_size > mem_size) {
                std::cerr << "ram size is not big enough for init file." << std::endl;
                break;
            }
        }
    }
    bool do_read (uint64_t start_addr, uint64_t size, unsigned char* buffer) {
        if (start_addr + size <= mem_size) {
            memcpy(buffer,&mem[start_addr],size);
            return true;
        }
        else if (allow_warp) {
            start_addr %= mem_size;
            if (start_addr + size <= mem_size) {
                memcpy(buffer,&mem[start_addr],size);
                return true;
            }
            else return false;
        }
        else return false;
    }
    bool do_write(uint64_t start_addr, uint64_t size, const unsigned char* buffer) {
        if (start_addr + size <= mem_size) {
            memcpy(&mem[start_addr],buffer,size);
            return true;
        }
        else if (allow_warp) {
            start_addr %= mem_size;
            if (start_addr + size <= mem_size) {
                memcpy(&mem[start_addr],buffer,size);
                return true;
            }
            else return false;
        }
        else return false;
    }
    void set_allow_warp(bool value) {
        allow_warp = true;
    }
private:
    bool allow_warp = false;
    unsigned char *mem;
    uint64_t mem_size;
};

#endif