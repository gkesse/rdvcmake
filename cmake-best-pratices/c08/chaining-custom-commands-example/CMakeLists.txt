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

# demande le fichier (output.txt)
add_custom_target(
    c08-custom-target
    ALL
    DEPENDS output.txt
    COMMENT "(2) CUSTOM TARGET: Call Output File Generation"
)

# génère le fichier (output.txt)
add_custom_command(
    OUTPUT output.txt
    COMMAND ${CMAKE_COMMAND} -E
        echo "(3): CUSTOM COMMAND: Generate Output File"
        > output.txt
    COMMENT "(4): CUSTOM COMMAND: Start Output File Generation"
    VERBATIM
)
