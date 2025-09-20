cmake_minimum_required(VERSION 3.21)

project(
    main
    VERSION 1.0
    DESCRIPTION "Add Subdirectory Main"
    LANGUAGES CXX
)

message(STATUS "(1): Add Subdirectory Main")

# crée un exécutable (main)
add_executable(
    ${PROJECT_NAME}
    main.cpp
)

# édite les liens (tools)
target_link_libraries(
    ${PROJECT_NAME} PRIVATE
    tools
)
