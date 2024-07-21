#pragma once

#include "logger.hpp"
#include <cassert>
#include <cstdint>
#include <exception>
#include <memory>
#include <string>
#include <sys/types.h>
#include <vector>
#include <fmt/core.h>

class absmmio_excep : public std::exception
{
public:
   absmmio_excep(std::string ss) : s(ss) {}
   ~absmmio_excep() throw () {}
   const char* what() const throw() { return s.c_str(); }
private:
    std::string s;
};

template<typename ADDR_T, typename DATA_T>
class absdev {
public:
    absdev(std::string name, ADDR_T start_addr, ADDR_T size) : name(name), start_addr(start_addr), end_addr(start_addr + size){

    };
    const std::string name;
    const ADDR_T start_addr;
    const ADDR_T end_addr;
    ADDR_T addr_size() const{
        return end_addr-start_addr;
    }
    bool addr_in(ADDR_T addr) const{
        return start_addr <= addr && addr < end_addr;
    }
    bool offset_in(ADDR_T offset) const{
        return 0 <= offset && offset < addr_size();
    }
    virtual DATA_T read(ADDR_T addr, uint8_t size) = 0;
    virtual void write(ADDR_T addr, uint8_t mask, DATA_T wdata) = 0;
    virtual void load_mem(ADDR_T addr, uint8_t* data, ADDR_T size) = 0;
};


template<typename ADDR_T, typename DATA_T>
class absbus : public absdev<ADDR_T, DATA_T> {
public:
    absbus(std::string name, ADDR_T start_addr, ADDR_T size):absdev<ADDR_T, DATA_T>(name, start_addr, size){

    };
    void add_device(absdev<ADDR_T, DATA_T>* dev_new){
        for(const auto& dev : devices)
            if(check_addr_overlap(dev_new, dev))
                throw absmmio_excep(
                    fmt::format("absmmio_bus: device {} [{:x},{:x}) and {} [{:x},{:x}) address overlap", 
                        dev->name, dev->start_addr, dev->end_addr,
                        dev_new->name, dev_new->start_addr, dev_new->end_addr)
                );
        devices.push_back(dev_new);
    }
    DATA_T read(ADDR_T start_addr, uint8_t size) override{
        // LOG_LOG("addr={:x} size={}", start_addr, size);
        for(auto& dev : devices){
            if(dev->addr_in(start_addr)){
                return dev->read(start_addr, size);
            }
        }
        throw absmmio_excep(
            fmt::format("absmmio_bus: read address [{:x},{:x}] do not match any", start_addr, start_addr+size)
        );
    }
    void write(ADDR_T start_addr, uint8_t mask, DATA_T wdata) override{
        for(auto& dev : devices){
            if(dev->addr_in(start_addr)){
                dev->write(start_addr, mask, wdata);
                return;
            }
        }
        throw absmmio_excep(
            fmt::format("absmmio_bus: write address {:x}({:x}) do not match any", start_addr, mask)
        );
    }
    void load_mem(ADDR_T addr, uint8_t* data, ADDR_T size) override{
        for(auto& dev : devices){
            if(dev->addr_in(addr)){
                dev->load_mem(addr, data, size);
                return;
            }
        }
    }
private:
    std::vector<absdev<ADDR_T, DATA_T>*> devices;
    bool check_addr_overlap(const absdev<ADDR_T, DATA_T>* a, const absdev<ADDR_T, DATA_T>* b){
        return (a->start_addr <= b->start_addr && a->end_addr > b->start_addr) ||
               (b->start_addr <= a->start_addr && b->end_addr > a->start_addr);
    }
};


template<typename ADDR_T, typename DATA_T>
class dev_ram: public absdev<ADDR_T, DATA_T>{
public:
    dev_ram(const std::string name, ADDR_T start_addr, ADDR_T size):absdev<ADDR_T, DATA_T>(name, start_addr, size){
        mem = std::make_unique<uint8_t[]>(size);
        memset(mem.get(), 0, size); // FIXME
    }
    DATA_T read(ADDR_T addr, uint8_t size) override{
        addr -= this->start_addr;
        addr &= ~(ADDR_T)(sizeof(DATA_T)-1);
        const auto rdata = *(DATA_T*)(mem.get() + addr);
        LOG_LOG("addr={:x} rdata={:x}", addr, rdata);
        return rdata;
    }
    void write(ADDR_T addr, uint8_t mask, DATA_T wdata) override{
        addr -= this->start_addr;
        addr &= ~(ADDR_T)(sizeof(DATA_T)-1);
        uint8_t* ptr = mem.get();
        for(size_t i=0;i<sizeof(DATA_T);i++){
            if(mask & (1 << i)){
                ptr[addr] = wdata & 0xFF;
            }
            wdata >>= 8;
            addr++;
        }
    }
    void load_mem(ADDR_T addr, uint8_t* data, ADDR_T size) override{
        if(size>dev_ram::addr_size())
            throw absmmio_excep(
                fmt::format("dev_ram: load mem too large {}>{}", size, dev_ram::addr_size())
            );
        memcpy(mem.get()+addr-this->start_addr, data, size);
    }
private:
    std::unique_ptr<uint8_t[]> mem;
};
