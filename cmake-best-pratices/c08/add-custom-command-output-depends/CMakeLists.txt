cmake_minimum_required(VERSION 3.21)

project(
    c08-add-custom-command-output-depends
    VERSION 1.0
    DESCRIPTION "Add Custom Command Output: Depends"
    LANGUAGES CXX
)

message(STATUS "(1): Add Custom Command Output: Depends")

# demande le fichier (version.hpp)
add_executable(
    ${PROJECT_NAME}
    src/main.cpp
    ${CMAKE_CURRENT_BINARY_DIR}/version.hpp
)

# génère le fichier (version.hpp)
# surveille le fichier (version.hpp.in)
add_custom_command(
    OUTPUT version.hpp
    COMMAND ${CMAKE_COMMAND} -E cat ${CMAKE_CURRENT_SOURCE_DIR}/version.hpp.in > version.hpp
    COMMENT "(4): Generating Version Header"
    DEPENDS version.hpp.in
    VERBATIM
)

include_directories(${CMAKE_CURRENT_BINARY_DIR})
