if(CONFIG_CORE_NAGICORE)
  option(CONFIG_CORE_NAGICORE_WAVE "trace wave" ON)
  if(CONFIG_CORE_NAGICORE_WAVE)
    set(CONFIG_CORE_NAGICORE_WAVE_END "1000" CACHE STRING "wave where to end")
    set(CONFIG_CORE_NAGICORE_WAVE_LEN "1000" CACHE STRING "wave length")
  endif()
endif()

get_filename_component(CORE_SRC_DIR "./rtl/build" ABSOLUTE)
# file(GLOB VERILATOR_SRC CONFIGURE_DEPENDS "${CORE_SRC_DIR}/*.h" "${CORE_SRC_DIR}/*.cpp")

add_library(nagicore STATIC ./dpic.cpp ./core_nagi.hpp)
target_link_libraries(nagicore PUBLIC logger)
target_compile_features(nagicore PUBLIC cxx_std_14)

add_custom_target(
    buildChisel
    COMMAND cd "${CMAKE_CURRENT_SOURCE_DIR}/rtl" && make generate
)

find_package(verilator HINTS $ENV{VERILATOR_ROOT} ${VERILATOR_ROOT})
if (NOT verilator_FOUND)
  message(FATAL_ERROR "Verilator was not found. Either install it, or set the VERILATOR_ROOT environment variable")
endif()


verilate(nagicore
  INCLUDE_DIRS "./"
  VERILATOR_ARGS -MMD -cc -O3 --x-assign fast --x-initial fast --noassert -y ${CORE_SRC_DIR} --trace-fst
  SOURCES ${CORE_SRC_DIR}/Core.sv
)

# add_custom_target(
#     buildVerialtor
#     COMMAND verilator -MMD -cc -O3 --x-assign fast --x-initial fast --noassert -y ${CORE_SRC_DIR} --trace-fst ${CORE_SRC_DIR}/Core.sv
# )

# add_dependencies(buildChisel buildVerialtor)
add_dependencies(nagicore buildChisel)

target_include_directories(nagicore PUBLIC ./)
# for abscore.hpp
target_include_directories(nagicore PUBLIC ../)

configure_file (
    "${CMAKE_CURRENT_SOURCE_DIR}/core_nagicore_config.h.in"
    "${CMAKE_CURRENT_SOURCE_DIR}/core_nagicore_config.h"
)