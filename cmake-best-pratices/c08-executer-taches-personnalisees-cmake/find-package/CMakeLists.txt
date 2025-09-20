cmake_minimum_required(VERSION 3.21)

project(
    c08-find-package
    VERSION 1.0
    DESCRIPTION "Find Package"
    LANGUAGES CXX
)

message(STATUS "(1): Find Package")

add_executable(
    ${PROJECT_NAME}
    src/main.cpp
)

# recherche le package (Git)
find_package(Git)

message(STATUS "(2): Git_FOUND: ${Git_FOUND}")
