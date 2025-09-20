message(STATUS "(1): CMake Process Script Mode: String")

# concatenation de chaînes
set(M_HELLO "hello")
set(M_WORLD "world")
set(M_STRING "${M_HELLO} ${M_WORLD}")
message(STATUS "(2): M_STRING: ${M_STRING}")

# chaîne en majuscule
string(TOUPPER "hello" M_STRING)
message(STATUS "(3): M_STRING: ${M_STRING}")

# chaîne en minuscule
string(TOLOWER "HELLO" M_STRING)
message(STATUS "(4): M_STRING: ${M_STRING}")

# sous-chaîne
string(TOLOWER "hello world" 0 5 M_STRING)
message(STATUS "(5): M_STRING: ${M_STRING}")
