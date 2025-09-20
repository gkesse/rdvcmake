cmake_minimum_required(VERSION 3.21)

project(
    c08-add-custom-target-depends
    VERSION 1.0
    DESCRIPTION "Add Custom Target Depends"
    LANGUAGES CXX
)

message(STATUS "(1): Add Custom Target Depends")

add_executable(
    ${PROJECT_NAME}
    src/main.cpp
)

# génère le fichier (output.txt)
add_custom_command(
    OUTPUT output.txt
    COMMAND ${CMAKE_COMMAND} -E echo "(2): COMMAND: Add Custom Target Depends" > output.txt
    COMMENT "(3): COMMENT: Add Custom Target Depends"
    VERBATIM
)

# demande le fichier (output.txt)
add_custom_target(
    c08-add-custom-target
    ALL
    DEPENDS output.txt
    COMMENT "(4): CUSTOM_TARGET: Add Custom Target Depends"
)
