set(SOURCE_DIR "${CMAKE_CURRENT_SOURCE_DIR}")
file(GLOB_RECURSE SOURCES "${SOURCE_DIR}/*.cpp")

add_executable(diff ${SOURCES})

option(CONFIG_EMU "Enable reference" ON)

target_link_libraries(diff PUBLIC fmt::fmt logger)
if(CONFIG_EMU)
    target_link_libraries(diff PRIVATE emu)
endif()

target_include_directories(diff PUBLIC ./)
target_compile_features(diff PUBLIC cxx_std_17)
configure_file (
    "${CMAKE_CURRENT_SOURCE_DIR}/config.h.in"
    "${CMAKE_CURRENT_SOURCE_DIR}/config.h"
)
