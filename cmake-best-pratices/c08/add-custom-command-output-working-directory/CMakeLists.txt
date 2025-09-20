cmake_minimum_required(VERSION 3.21)

project(
    c08-add-custom-command-output-working-directory
    VERSION 1.0
    DESCRIPTION "Add Custom Command Output: Working Directory"
    LANGUAGES CXX
)

message(STATUS "(1): Add Custom Command Output: Working Directory")

# demande le fichier (version.hpp)
add_executable(
    ${PROJECT_NAME}
    src/main.cpp
    ${CMAKE_CURRENT_BINARY_DIR}/version.hpp
)

# génère le fichier (version.hpp)
# modifie son répertoire de travail (CMAKE_CURRENT_SOURCE_DIR)
add_custom_command(
    OUTPUT version.hpp
    WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
    COMMAND ${CMAKE_COMMAND} -E cat version.hpp.in > ${CMAKE_CURRENT_BINARY_DIR}/version.hpp
    COMMENT "(4): Generating Version Header File"
    VERBATIM
)

include_directories(${CMAKE_CURRENT_BINARY_DIR})
