cmake_minimum_required(VERSION 3.21)

project(
    c08-execute-process
    VERSION 1.0
    DESCRIPTION "Execute Process"
    LANGUAGES CXX
)

message(STATUS "(1): Execute Process")

add_executable(
    ${PROJECT_NAME}
    src/main.cpp
)

# exécute une commande de configuration
# alimente la variable (M_OUTPUT_VARIABLE)
execute_process(
    COMMAND ${CMAKE_COMMAND} -E echo "Version-1.0.2"
    OUTPUT_VARIABLE M_OUTPUT_VARIABLE
    OUTPUT_STRIP_TRAILING_WHITESPACE
    COMMAND_ERROR_IS_FATAL ANY
    WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
)

message(STATUS "(2): M_OUTPUT_VARIABLE: ${M_OUTPUT_VARIABLE}")
