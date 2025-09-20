cmake_minimum_required(VERSION 3.21)

project(
    c01-cmake-variable-watch
    VERSION 1.0
    DESCRIPTION "CMake Variable Watch"
    LANGUAGES CXX
)

message(STATUS "(1): CMake Variable Watch")

variable_watch(M_VAR on_callback)

function(on_callback)
    list(GET ARGN 0 M_ARG0)
    list(GET ARGN 1 M_ARG1)
    list(GET ARGN 2 M_ARG2)
    list(GET ARGN 3 M_ARG3)
    list(GET ARGN 4 M_ARG4)
    message(STATUS "(2): M_ARG0 : ${M_ARG0}")
    message(STATUS "(3): M_ARG1 : ${M_ARG1}")
    message(STATUS "(4): M_ARG2 : ${M_ARG2}")
    # message(STATUS "(5): M_ARG3 : ${M_ARG3}")
    # message(STATUS "(6): M_ARG4 : ${M_ARG4}")
endfunction()

set(M_VAR 10)

message(STATUS "(7): M_VAR: ${M_VAR}")
