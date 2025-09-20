cmake_minimum_required(VERSION 3.21)

project(
    c01-cmake-loop
    VERSION 1.0
    DESCRIPTION "CMake Loop"
    LANGUAGES CXX
)

message(STATUS "(1): CMake Loop")

# réalisation d'une bouble (while)
set(M_COUNT 0)
while(M_COUNT LESS 5)
    message(STATUS "(2): white: " ${M_COUNT})
    math(EXPR M_COUNT "${M_COUNT} + 1")
endwhile()

# réalisation d'une bouble (foreach)
# on utilise une plage d'index
foreach(M_COUNT RANGE 0 5)
    message(STATUS "(3): foreach-range: " ${M_COUNT})
endforeach()

# réalisation d'une bouble (foreach)
# on utilise liste d'éléments
set(M_LIST abc xzy opq fgh ijk)
foreach(M_ITEM IN LISTS M_LIST)
    message(STATUS "(4): foreach-list: " ${M_ITEM})
endforeach()
