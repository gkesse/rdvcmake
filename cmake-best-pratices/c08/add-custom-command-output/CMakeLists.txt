cmake_minimum_required(VERSION 3.21)

project(
    c08-add-custom-command-output
    VERSION 1.0
    DESCRIPTION "Add Custom Command Output"
    LANGUAGES CXX
)

message(STATUS "(1): Add Custom Command Output")

# demande le fichier (version.hpp)
add_executable(
    ${PROJECT_NAME}
    src/main.cpp
    ${CMAKE_CURRENT_BINARY_DIR}/version.hpp
)

# génère le fichier (version.hpp)
add_custom_command(
    OUTPUT version.hpp
    COMMAND ${CMAKE_COMMAND} -E cat ${CMAKE_CURRENT_SOURCE_DIR}/version.hpp.in > version.hpp
    COMMENT "(4): Generating Version Header"
    VERBATIM
)

include_directories(${CMAKE_CURRENT_BINARY_DIR})
