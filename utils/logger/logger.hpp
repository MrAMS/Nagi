#pragma once
#include <fmt/core.h>
#include <fmt/format.h>
#include <fmt/color.h>

#define LOG_PRINT_LINE() fmt::print(fmt::emphasis::italic,"{}:{} {}:\n", __FILE__, __LINE__, __func__)

#define LOG_LOG(format, ...) \
    do { \
    LOG_PRINT_LINE(); \
    fmt::print(fg(fmt::terminal_color::bright_blue), "[LOG] " format "\n", ##__VA_ARGS__); \
    } while(0)

#define LOG_INFO(format, ...) \
    do { \
    LOG_PRINT_LINE(); \
    fmt::print(fmt::emphasis::bold|fg(fmt::terminal_color::bright_green), "[INFO] " format "\n", ##__VA_ARGS__); \
    } while(0)

#define LOG_WARN(format, ...) \
    do { \
    LOG_PRINT_LINE(); \
    fmt::print(fg(fmt::terminal_color::bright_yellow), "[WARN] " format "\n", ##__VA_ARGS__); \
    } while(0)

#define LOG_ERRO(format, ...) \
    do { \
    LOG_PRINT_LINE(); \
    fmt::print(fmt::emphasis::bold|fg(fmt::terminal_color::bright_red), "[ERRO] " format "\n", ##__VA_ARGS__); \
    } while(0)
