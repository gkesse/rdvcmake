cmake_minimum_required(VERSION 3.21)

project(
    c08-add-custom-target-command
    VERSION 1.0
    DESCRIPTION "Add Custom Target Command"
    LANGUAGES CXX
)

message(STATUS "(1): Add Custom Target Command")

add_executable(
    ${PROJECT_NAME}
    src/main.cpp
)

# crée une liste (MYLIST)
list(APPEND MYLIST "A" "B" "C")

# crée une cible personnalisée
# exécute une commande personnalisée
# étend les listes dans la commande
add_custom_target(
    c08-add-custom-target ALL
    COMMAND ${CMAKE_COMMAND} -E echo "(2): COMMAND: Add Custom Target Command: ${MYLIST}"
    COMMAND_EXPAND_LISTS
)
