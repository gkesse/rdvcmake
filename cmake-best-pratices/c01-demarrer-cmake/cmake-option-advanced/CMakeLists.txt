cmake_minimum_required(VERSION 3.21)

project(
    c01-cmake-option-advanced
    VERSION 1.0
    DESCRIPTION "CMake Option Advanced"
    LANGUAGES CXX
)

option(C01_PRINT_LANGUAGE_EXAMPLES "Print language examples" OFF)
mark_as_advanced(C01_PRINT_LANGUAGE_EXAMPLES)

message(STATUS "(1): CMake Option Advanced")
message(STATUS "(2): C01_PRINT_LANGUAGE_EXAMPLES: "
               ${C01_PRINT_LANGUAGE_EXAMPLES})
