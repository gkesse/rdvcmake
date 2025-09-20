cmake_minimum_required(VERSION 3.21)

project(
    tools
    VERSION 1.0
    DESCRIPTION "Add Subdirectory Tools"
    LANGUAGES CXX
)

message(STATUS "(1): Add Subdirectory Tools")

# crée une librairie (tools)
add_library(
    ${PROJECT_NAME}
    tools.hpp
    tools.cpp
)
