cmake_minimum_required(VERSION 3.21)

project(
    c08-add-custom-command-output-append
    VERSION 1.0
    DESCRIPTION "Add Custom Command Output: Append"
    LANGUAGES CXX
)

message(STATUS "(1): Add Custom Command Output: Append")

add_executable(
    ${PROJECT_NAME}
    src/main.cpp
)

# génère le fichier (output.txt)
add_custom_command(
    OUTPUT output.txt
    COMMAND ${CMAKE_COMMAND} -E echo "(2): COMMAND: Add Custom Command Output: Append" > output.txt
    COMMENT "(3): COMMENT: Add Custom Command Output: Append"
    VERBATIM
)

# ajoute à la fin du fichier (output.txt)
add_custom_command(
    OUTPUT output.txt
    COMMAND ${CMAKE_COMMAND} -E echo "(4): COMMAND: Add Custom Command Output: Append" >> output.txt
    COMMENT "(5): COMMENT: Add Custom Command Output: Append"
    VERBATIM APPEND
)


# demande le fichier (output.txt)
add_custom_target(
    c08-add-custom-target
    ALL
    DEPENDS output.txt
    COMMENT "(6): CUSTOM_TARGET: Add Custom Command Output: Append"
)
