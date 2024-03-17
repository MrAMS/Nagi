add_library(logger logger.hpp)
target_link_libraries(logger PUBLIC fmt::fmt)
target_include_directories(logger PUBLIC ./)