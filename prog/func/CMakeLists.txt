get_filename_component(CONFIG_PROG_BIN_PATH "${CMAKE_CURRENT_SOURCE_DIR}/obj/main.bin" ABSOLUTE)
set(CONFIG_PROG_BIN_PATH "${CONFIG_PROG_BIN_PATH}" CACHE INTERNAL "Path of the program bin to run")

set(CONFIG_PROG_FUNC_EXP "6" CACHE STRING "EXP of FUNC")

add_custom_target(
    prog
    COMMAND cd "${CMAKE_CURRENT_SOURCE_DIR}" && make buildexp EXP=${CONFIG_PROG_FUNC_EXP}
    VERBATIM
)

configure_file(
    "${CMAKE_CURRENT_SOURCE_DIR}/EXP.in"
    "${CMAKE_CURRENT_SOURCE_DIR}/EXP.h"
)
