set(SOURCE_DIR "${CMAKE_CURRENT_SOURCE_DIR}")
file(GLOB_RECURSE SOURCES "${SOURCE_DIR}/*.cpp")

# Sanitizers
add_compile_options(-fsanitize=address)
add_link_options(-fsanitize=address)

add_executable(diff ${SOURCES})


option(CONFIG_EMU "Enable reference" ON)

option(CONFIG_DIFF_INNER_IMAGE "Use inner image" ON)

target_link_libraries(diff PRIVATE fmt::fmt logger)

target_link_libraries(diff PRIVATE cores)

target_link_libraries(diff PRIVATE disassmble)

target_include_directories(diff PUBLIC ./)
target_compile_features(diff PUBLIC cxx_std_17)
configure_file (
    "${CMAKE_CURRENT_SOURCE_DIR}/diff_config.h.in"
    "${CMAKE_CURRENT_SOURCE_DIR}/diff_config.h"
)
