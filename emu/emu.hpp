#pragma once

#include <cstdint>

typedef struct {
    uint8_t *bin;
    uint64_t size;
} image_t;

void emu_init(image_t);
bool emu_step(int step);