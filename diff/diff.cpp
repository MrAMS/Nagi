#include <cstdint>
#include "config.h"
#include <fstream>
#include <filesystem>
#include "logger.hpp"

#include "abscore.hpp"

#include <functional>

std::function<void(uint8_t, uint32_t)> trace


int main(){
    LOG_LOG("Hello {}\n", "Diff");
#if CONFIG_EMU
    uint64_t file_size = std::filesystem::file_size(CONFIG_PROG_BIN_PATH);
    std::ifstream file(CONFIG_PROG_BIN_PATH, std::ios::binary);
    uint8_t* image = new uint8_t[file_size];
    file.read((char*)image, file_size);
    emu_init({image, file_size});
    delete [] image;
    // emu_step(1000);
    while(emu_step(1));

#endif
    return 0;
}
