message(STATUS "(1): CMake Process Script Mode: Args")

# nombre des arguments
message(STATUS "(2): CMAKE_ARGC: ${CMAKE_ARGC}")

# parcours des arguments
set(M_INDEX 0)
while(M_INDEX LESS CMAKE_ARGC)
    message(STATUS "(3): CMAKE_ARGV${M_INDEX}: ${CMAKE_ARGV${M_INDEX}}")
    math(EXPR M_INDEX "${M_INDEX} + 1")
endwhile()

# acces aux arguments
message(STATUS "(4): VERSION: ${VERSION}")
message(STATUS "(5): CMAKE_ARGV4: ${CMAKE_ARGV4}")
message(STATUS "(6): CMAKE_ARGV5: ${CMAKE_ARGV5}")
message(STATUS "(7): CMAKE_ARGV6: ${CMAKE_ARGV6}")
message(STATUS "(8): CMAKE_ARGV7: ${CMAKE_ARGV7}")
