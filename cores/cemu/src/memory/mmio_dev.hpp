#ifndef MEMORY_HPP
#define MEMORY_HPP

#include <cstdint>

class mmio_dev {
public:
    virtual bool do_read (uint64_t start_addr, uint64_t size, unsigned char* buffer) = 0;
    virtual bool do_write(uint64_t start_addr, uint64_t size, const unsigned char* buffer) = 0;
};

#endif