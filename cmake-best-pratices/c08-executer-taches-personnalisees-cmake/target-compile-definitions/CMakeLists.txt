cmake_minimum_required(VERSION 3.21)

project(
    c08-target-compile-definitions
    VERSION 1.0
    DESCRIPTION "Target Compile Definitions"
    LANGUAGES CXX
)

message(STATUS "(1): Target Compile Definitions")

add_executable(
    ${PROJECT_NAME}
    src/main.cpp
)

set(VERSION "1.0.1")

# ajoute la définition (VERSION) à la cible (PROJECT_NAME)
target_compile_definitions(
    ${PROJECT_NAME} PRIVATE
    VERSION=\"${VERSION}\"
)
