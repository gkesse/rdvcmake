variable_watch(foo)
cmake_minimum_required(VERSION 3.21)

project(
    c01-cmake-macro
    VERSION 1.0
    DESCRIPTION "CMake Macro"
    LANGUAGES CXX
)

message(STATUS "(1): CMake Macro")

# définition d'une macro
macro(foo arg1)
    message(STATUS "(2): version-1: " ${arg1})
endmacro()

# appel d'une macro
# une erreur est générée si la macro
# est appelée sans arguments
# foo()

# appel d'une macro
foo(abc)

# utilisation d'une macro
# aucune erreur n'es t générée si la macro
# est appelée avec plusieurs arguments
foo(abc efg)

# appel d'une macro
# l'appel à la macro est insensible à la casse
Foo(abc)

# appel d'une macro
# utilisation de la macro (cmake_language)
cmake_language(CALL foo abc)

# redéfinition d'une macro
# on peut redéfinir une macro, donc soyez prudent
macro(foo arg1 arg2)
    message(STATUS "(3): version-2: ${arg1} - ${arg2}")
endmacro()
foo(abc def ghi jkl)

# arguments d'une macro
# on récupère le nombre de tous les arguments
macro(foo arg1 arg2)
    message(STATUS "(4): ARGC : ${ARGC}")
endmacro()
foo(abc def ghi jkl)

# arguments d'une macro
# on récupère la liste de tous les arguments
macro(foo arg1 arg2)
    message(STATUS "(5): ARGV : ${ARGV}")
endmacro()
foo(abc def ghi jkl)

# arguments d'une macro
# on récupère la liste des arguments supplémentaires
macro(foo arg1 arg2)
    message(STATUS "(6): ARGN : ${ARGN}")
endmacro()
foo(abc def)
foo(abc def ghi jkl)

# arguments d'une macro
# on récupère chaque élément de tous les arguments
macro(foo arg1 arg2)
    set(M_INDEX 0)
    while(M_INDEX LESS ${ARGC})
        message(STATUS "(7): ARGV${M_INDEX} : ${ARGV${M_INDEX}}")
        math(EXPR M_INDEX "${M_INDEX} + 1")
    endwhile()
endmacro()
foo(abc def ghi jkl)

# macro variadique
# toutes les macros sont variadiques par défaut
macro(foo)
    foreach(M_ARG IN LISTS ARGN)
        message(STATUS "(8): M_ARG : ${M_ARG}")
    endforeach()
endmacro()
foo()
foo(abc def)
foo(abc def ghi jkl)

# macro avec return
# le return dans une macro à une portée globale
# cela est utile lorsqu'on veut agir sur l'extérieur
macro(foo arg1)
    message(STATUS "(9): return: ${arg1}")
    return()
endmacro()
foo(1)
foo(2)
foo(3)
