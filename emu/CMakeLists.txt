include(CMakeDependentOption)
cmake_dependent_option(CONFIG_EMU_CEMU "use CEMU as emulator" ON "CONFIG_EMU" OFF)
if(CONFIG_EMU)

if(CONFIG_EMU_CEMU)
    set(SOURCE_DIR "${CMAKE_CURRENT_SOURCE_DIR}/cemu/src")
    # https://stackoverflow.com/a/57928919
    MACRO(HEADER_DIRECTORIES return_list)
        FILE(GLOB_RECURSE new_list *.h *.hpp)
        SET(dir_list "")
        FOREACH(file_path ${new_list})
            GET_FILENAME_COMPONENT(dir_path ${file_path} PATH)
            SET(dir_list ${dir_list} ${dir_path})
        ENDFOREACH()
        LIST(REMOVE_DUPLICATES dir_list)
        SET(${return_list} ${dir_list})
    ENDMACRO()
    HEADER_DIRECTORIES(INCLUDE_DIR)
    list(APPEND INCLUDE_DIR "${CMAKE_CURRENT_SOURCE_DIR}/cemu/src")
    set(SOURCES "")
    # message("INCLUDE_DIR is ${INCLUDE_DIR}")

    set(EMU_WRAPPER "wrapper_cemu.cpp")
endif()


add_library(emu STATIC ${SOURCES} ${EMU_WRAPPER})
target_link_libraries(emu PUBLIC logger)
target_include_directories(emu PRIVATE ${INCLUDE_DIR})
target_include_directories(emu PUBLIC ./)
target_compile_features(emu PUBLIC cxx_std_17)
endif()

configure_file (
    "${CMAKE_CURRENT_SOURCE_DIR}/config.h.in"
    "${CMAKE_CURRENT_SOURCE_DIR}/config.h"
)