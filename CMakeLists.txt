cmake_minimum_required(VERSION 3.22)

### Require out-of-source builds
file(TO_CMAKE_PATH "${PROJECT_BINARY_DIR}/CMakeLists.txt" LOC_PATH)
if(EXISTS "${LOC_PATH}")
    message(FATAL_ERROR "You cannot build in a source directory (or any directory with a CMakeLists.txt file). Please make a build subdirectory. Feel free to remove CMakeCache.txt and CMakeFiles.")
endif()

project(NAGI-DIFF
  DESCRIPTION "Nagi Difftest"
  # LANGUAGES C CXX
)
set(PROJECT_ROOT          ${CMAKE_SOURCE_DIR})

# FetchContent added in CMake 3.11, downloads during the configure step
include(FetchContent)

# Formatting library
FetchContent_Declare(
  fmtlib
  GIT_REPOSITORY https://github.com/fmtlib/fmt.git
  GIT_TAG 5.3.0)
FetchContent_MakeAvailable(fmtlib)

# for compile_commands.json
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_EXPORT_COMPILE_COMMANDS 1)

add_subdirectory(utils)
add_subdirectory(emu)
add_subdirectory(prog)
add_subdirectory(diff)
add_dependencies(diff prog)