include(CMakeDependentOption)
# cmake_dependent_option(CONFIG_CORE_CEMU "CEMU emulator" ON "CONFIG_EMU" OFF)
option(CONFIG_CORE_CEMU "CEMU emulator" ON)
# cmake_dependent_option(CONFIG_CORE_NAGICORE "Nagi Core" ON "CONFIG_EMU" OFF)
option(CONFIG_CORE_NAGICORE "Nagi Core" ON)

add_library(cores INTERFACE ./abscore.hpp ./absmmio.hpp)

if(CONFIG_CORE_CEMU)
add_subdirectory(cemu)
target_link_libraries(cores INTERFACE cemu)
endif()

if(CONFIG_CORE_NAGICORE)
add_subdirectory(nagiCore)
target_link_libraries(cores INTERFACE nagicore)
endif()


configure_file (
    "${CMAKE_CURRENT_SOURCE_DIR}/cores_config.h.in"
    "${CMAKE_CURRENT_SOURCE_DIR}/cores_config.h"
)