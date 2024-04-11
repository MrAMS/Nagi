#pragma once

#include <cassert>
#include <cstdint>
#include <exception>
#include <memory>
#include <string>
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

template<class ADDR_T>
class absdev {
public:
    virtual void read(ADDR_T start_addr, ADDR_T size, uint8_t* buffer) = 0;
    virtual void write(ADDR_T start_addr, ADDR_T size, const uint8_t* buffer) = 0;
};

template<class ADDR_T>
struct absmmio_bus_dev_cfg{
    std::string name;
    ADDR_T start_addr;
    ADDR_T end_addr;
    absdev<ADDR_T>* dev;
};


template<class ADDR_T>
class absbus : public absdev<ADDR_T> {
public:
    void add_device(std::string name, ADDR_T start_addr, ADDR_T size, absdev<ADDR_T>* dev){
        absmmio_bus_dev_cfg<ADDR_T> dev_new{name, start_addr, start_addr + size, dev};
        for(const auto& dev : devices)
            if(check_addr_overlap(dev_new, dev))
                throw absmmio_excep(
                    fmt::format("absmmio_bus: device {} [{:x},{:x}) and {} [{:x},{:x}) address overlap", 
                        dev.name, dev.start_addr, dev.end_addr,
                        dev_new.name, dev_new.start_addr, dev_new.end_addr)
                );
        devices.push_back(dev_new);
    }
    void read(ADDR_T start_addr, ADDR_T size, uint8_t* buffer) override{
        for(const auto& dev : devices){
            if(check_contain(start_addr, dev)){
                dev.dev->read(start_addr - dev.start_addr, size, buffer);
                return;
            }
        }
        throw absmmio_excep(
            fmt::format("absmmio_bus: read address [{:x},{:x}] do not match any", start_addr, start_addr+size)
        );
    }
    void write(ADDR_T start_addr, ADDR_T size, const uint8_t* buffer) override{
        for(const auto& dev : devices){
            if(check_contain(start_addr, dev)){
                dev.dev->write(start_addr - dev.start_addr, size, buffer);
                return;
            }
        }
        throw absmmio_excep(
            fmt::format("absmmio_bus: write address [{:x},{:x}] do not match any", start_addr, start_addr+size)
        );
    }
private:
    bool check_addr_overlap(const absmmio_bus_dev_cfg<ADDR_T>& a, const absmmio_bus_dev_cfg<ADDR_T>& b){
        return (a.start_addr <= b.start_addr && a.end_addr > b.start_addr) ||
               (b.start_addr <= a.start_addr && b.end_addr > a.start_addr);
    }
    bool check_contain(const ADDR_T addr, const absmmio_bus_dev_cfg<ADDR_T>& dev){
        return (addr >= dev.start_addr && addr < dev.end_addr);
    }
    std::vector<absmmio_bus_dev_cfg<ADDR_T>> devices;
};

template<class ADDR_T>
class dev_ram: public absdev<ADDR_T>{
public:
    dev_ram(ADDR_T size):sz(size){
        mem = std::make_unique<uint8_t[]>(sz);
    }
    void read(ADDR_T start_addr, ADDR_T size, uint8_t* buffer) override{
        memcpy(buffer, mem.get() + start_addr, size);
    }
    void write(ADDR_T start_addr, ADDR_T size, const uint8_t* buffer) override{
        memcpy(mem.get() + start_addr, buffer, size);
    }
    void load_mem(uint8_t* buffer, ADDR_T size){
        if(size>sz)
            throw absmmio_excep(
                fmt::format("dev_ram: load mem too large {}>{}", size, sz)
            );
        memcpy(mem.get(), buffer, size);
    }
    ADDR_T size() const{
        return sz;
    }
private:
    std::unique_ptr<uint8_t[]> mem;
    ADDR_T sz;
};
