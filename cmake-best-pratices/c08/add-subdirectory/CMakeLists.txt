cmake_minimum_required(VERSION 3.21)

project(
    c08-add-subdirectory
    VERSION 1.0
    DESCRIPTION "Add Subdirectory"
    LANGUAGES CXX
)

message(STATUS "(1): Add Subdirectory")

include_directories(${CMAKE_CURRENT_SOURCE_DIR})

add_subdirectory(tools)
add_subdirectory(main)
