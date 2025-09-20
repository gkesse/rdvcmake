cmake_minimum_required(VERSION 3.21)

project(
    c01-cmake-function
    VERSION 1.0
    DESCRIPTION "CMake Function"
    LANGUAGES CXX
)

message(STATUS "(1): CMake Function")

# définition d'une fonction
function(foo arg1)
    message(STATUS "(2): version-1: " ${arg1})
endfunction()

# appel d'une fonction
# une erreur est générée si la fonction
# est appelée sans arguments
# foo()

# appel d'une fonction
foo(abc)

# utilisation d'une fonction
# aucune erreur n'es t générée si la fonction
# est appelée avec plusieurs arguments
foo(abc efg)

# appel d'une fonction
# l'appel à la fonction est insensible à la casse
Foo(abc)

# appel d'une fonction
# utilisation de la macro (cmake_language)
cmake_language(CALL foo abc)

# redéfinition d'une fonction
# on peut redéfinir une fonction, donc soyez prudent
function(foo arg1 arg2)
    message(STATUS "(3): version-2: ${arg1} - ${arg2}")
endfunction()
foo(abc def ghi jkl)

# arguments d'une fonction
# on récupère le nombre de tous les arguments
function(foo arg1 arg2)
    message(STATUS "(4): ARGC : ${ARGC}")
endfunction()
foo(abc def ghi jkl)

# arguments d'une fonction
# on récupère la liste de tous les arguments
function(foo arg1 arg2)
    message(STATUS "(5): ARGV : ${ARGV}")
endfunction()
foo(abc def ghi jkl)

# arguments d'une fonction
# on récupère la liste des arguments supplémentaires
function(foo arg1 arg2)
    message(STATUS "(6): ARGN : ${ARGN}")
endfunction()
foo(abc def)
foo(abc def ghi jkl)

# arguments d'une fonction
# on récupère chaque élément de tous les arguments
function(foo arg1 arg2)
    set(M_INDEX 0)
    while(M_INDEX LESS ${ARGC})
        message(STATUS "(7): ARGV${M_INDEX} : ${ARGV${M_INDEX}}")
        math(EXPR M_INDEX "${M_INDEX} + 1")
    endwhile()
endfunction()
foo(abc def ghi jkl)

# fonction variadique
# toutes les fonctions sont variadiques par défaut
function(foo)
    foreach(M_ARG IN LISTS ARGN)
        message(STATUS "(8): M_ARG : ${M_ARG}")
    endforeach()
endfunction()
foo()
foo(abc def)
foo(abc def ghi jkl)

# fonction avec return
# le return dans une fonction à une portée locale
# cela est utile lorsqu'on ne veut pas agir sur l'extérieur
function(foo arg1)
    message(STATUS "(9): return: ${arg1}")
    return()
endfunction()
foo(1)
foo(2)
foo(3)
