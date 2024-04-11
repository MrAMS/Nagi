#pragma once
#include <cstdint>
#include <string>
#include <vector>

enum class disassmble_target_t{la32r};

std::vector<std::string> disassmble_instrs(disassmble_target_t target, const uint8_t *instrs, uint32_t bytes_len, uint32_t addr);