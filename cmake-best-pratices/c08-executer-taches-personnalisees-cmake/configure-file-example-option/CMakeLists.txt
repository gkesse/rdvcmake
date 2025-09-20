cmake_minimum_required(VERSION 3.21)

project(
    c08-configure-file-example-option
    VERSION 1.0
    DESCRIPTION "Configure File Example Option"
    LANGUAGES CXX
)

message(STATUS "(1): Configure File Example Option")

# demande le fichier (version.hpp)
add_executable(
    ${PROJECT_NAME}
    src/main.cpp
    ${CMAKE_CURRENT_BINARY_DIR}/version.hpp
)

# définit une option pour contôler la version
option(VERSION_ENABLE "Enable version display" ON)
if(VERSION_ENABLE)
    message(STATUS "(2): Version display is enabled")
    set(VERSION "1.0.2")
endif()

# génère le fichier (version.hpp)
# charge le fichier (version.hpp.in)
# remplace les patterns cmake (@VAR@)
configure_file(
    version.hpp.in
    version.hpp
    @ONLY
)

# indique l'emplacement du fichier (version.hpp)
include_directories(${CMAKE_CURRENT_BINARY_DIR})
