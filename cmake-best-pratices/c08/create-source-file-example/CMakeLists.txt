cmake_minimum_required(VERSION 3.21)

project(
    c08-create-source-file-example
    VERSION 1.0
    DESCRIPTION "Create Source File Example"
    LANGUAGES CXX
)

message(STATUS "(1): Create Source File Example")

# demande le fichier (main.cpp)
add_executable(
    ${PROJECT_NAME}
    ${CMAKE_CURRENT_BINARY_DIR}/main.cpp
)

# génère le fichier (main.cpp)
# surveille le fichier (message.txt)
add_custom_command(
    OUTPUT main.cpp
    COMMAND cmake -P ${CMAKE_CURRENT_SOURCE_DIR}/cmake/WriteMain.cmake
        ${CMAKE_CURRENT_SOURCE_DIR}/message.txt main.cpp
    COMMENT "(2): Creating Main File"
    DEPENDS message.txt
    VERBATIM
)