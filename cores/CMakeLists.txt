include(CMakeDependentOption)
cmake_dependent_option(CONFIG_EMU_CEMU "use CEMU as emulator" ON "CONFIG_EMU" OFF)

if(CONFIG_EMU_CEMU)
add_subdirectory(cemu)
endif()


configure_file (
    "${CMAKE_CURRENT_SOURCE_DIR}/cores_config.h.in"
    "${CMAKE_CURRENT_SOURCE_DIR}/cores_config.h"
)