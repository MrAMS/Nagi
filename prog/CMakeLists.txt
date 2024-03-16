include(CMakeDependentOption)
option(CONFIG_PROG_FUNC "run prog FUNC" ON)

if(CONFIG_PROG_FUNC)
add_subdirectory(func)
endif()

message("CONFIG_PROG_BIN_PATH is ${CONFIG_PROG_BIN_PATH}")