cmake_minimum_required(VERSION 3.21)

project(
    c08-add-custom-command-target
    VERSION 1.0
    DESCRIPTION "Add Custom Command Target: Pre Build"
    LANGUAGES CXX
)

message(STATUS "(1): Add Custom Command Target: Pre Build")

add_executable(
    ${PROJECT_NAME}
    src/main.cpp
)

# est attachée à la cible (PROJECT_NAME)
# est exécutée avant la construction de la cible (PROJECT_NAME)
add_custom_command(
    TARGET ${PROJECT_NAME}
    PRE_BUILD
    COMMENT "(2): COMMENT: Executing Command Pre Build"
    COMMAND ${CMAKE_COMMAND} -E echo "(3): COMMAND: Executing Command Pre Build"
)
