cmake_minimum_required(VERSION 3.21)

project(
    c08-chaining-custom-commands-example
    VERSION 1.0
    DESCRIPTION "Chaining Custom Commands Example"
    LANGUAGES CXX
)

message(STATUS "(1): Chaining Custom Commands Example")

add_executable(
    ${PROJECT_NAME}
    src/main.cpp
)

add_custom_command(
    OUTPUT "${PROJECT_NAME}.txt"
    COMMAND ${CMAKE_COMMAND} -E touch "${CMAKE_CURRENT_BINARY_DIR}/${PROJECT_NAME}.txt"
    COMMENT "(2): Creating Archive for ${PROJECT_NAME}"
    VERBATIM
)
