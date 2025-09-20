cmake_minimum_required(VERSION 3.21)

project(
    c08-configure-file-example
    VERSION 1.0
    DESCRIPTION "Configure File Example"
    LANGUAGES CXX
)

message(STATUS "(1): Configure File Example")

# demande le fichier (version.hpp)
add_executable(
    ${PROJECT_NAME}
    src/main.cpp
    ${CMAKE_CURRENT_BINARY_DIR}/version.hpp
)

# initialise la version
set(VERSION_ENABLE ON)
set(VERSION "1.0.1")

# génère le fichier (version.hpp)
# charge le fichier (version.hpp.in)
# remplace les variables cmake (@VAR@)
configure_file(
    version.hpp.in
    version.hpp
    @ONLY
)

# indique l'emplacement du fichier (version.hpp)
include_directories(${CMAKE_CURRENT_BINARY_DIR})
