message(STATUS "(1): CMake Process Script Mode: Math")

# expression mathématique
math(EXPR M_MATH "22 / 7")
message(STATUS "(2): M_MATH: ${M_MATH}")

# partie entière
math(EXPR M_MATH "22 / 7")
message(STATUS "(3): M_MATH: ${M_MATH}")

# incrémentation
set(M_MATH 10)
math(EXPR M_MATH "${M_MATH} + 1")
message(STATUS "(4): M_MATH: ${M_MATH}")

# décrémentation
set(M_MATH 10)
math(EXPR M_MATH "${M_MATH} - 1")
message(STATUS "(5): M_MATH: ${M_MATH}")

# base décimale
math(EXPR M_MATH "0xA" OUTPUT_FORMAT DECIMAL)
message(STATUS "(6): M_MATH: ${M_MATH}")

# base hexadécimale
math(EXPR M_MATH "0xA" OUTPUT_FORMAT HEXADECIMAL)
message(STATUS "(7): M_MATH: ${M_MATH}")
