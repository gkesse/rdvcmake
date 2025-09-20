cmake_minimum_required(VERSION 3.21)

project(
    c01-cmake-option-dependent
    VERSION 1.0
    DESCRIPTION "CMake Option Dependent"
    LANGUAGES CXX
)

option(C01_PRINT_LANGUAGE_EXAMPLES "Print language examples" OFF)
mark_as_advanced(C01_PRINT_LANGUAGE_EXAMPLES)

# activation des options dépendantes
include(CMakeDependentOption)
# configuration d'une option dépendante
# l'option C01_PRINT_HELLO_WORLD est visible dans CMake GUI
# uniquement si l'option C01_PRINT_LANGUAGE_EXAMPLES est ON
cmake_dependent_option(C01_PRINT_HELLO_WORLD "Print hello world"
ON C01_PRINT_LANGUAGE_EXAMPLES ON)

message(STATUS "(1): CMake Option Dependent")
message(STATUS "(2): C01_PRINT_LANGUAGE_EXAMPLES: "
               ${C01_PRINT_LANGUAGE_EXAMPLES})
message(STATUS "(3): C01_PRINT_HELLO_WORLD: "
               ${C01_PRINT_HELLO_WORLD})
