#include <fmt/format.h>
#include "config.h"
#include <fstream>
#include <filesystem>

#if CONFIG_EMU
#include "emu.hpp"
#endif
int main(){
    fmt::print("Hello {}\n", "Diff");
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