cmake_minimum_required(VERSION 3.21)

project(
    c01-cmake-option
    VERSION 1.0
    DESCRIPTION "CMake Option"
    LANGUAGES CXX
)

option(C01_PRINT_LANGUAGE_EXAMPLES "Print language examples" OFF)

message(STATUS "(1): CMake Option")
message(STATUS "(2): C01_PRINT_LANGUAGE_EXAMPLES: "
               ${C01_PRINT_LANGUAGE_EXAMPLES})
