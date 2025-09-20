message(STATUS "(1): CMake Process Script Mode: Variable")

# initialisation d'une variable
set(M_VAR "Hello")

# lecture d'une variable
message(STATUS "(2): M_VAR: ${M_VAR}")

# assignation d'une variable
set(M_VAR "Hello World")
message(STATUS "(3): M_VAR: ${M_VAR}")

# auto-assignation d'une variable
set(M_VAR "Hello")
set(M_VAR "${M_VAR} World")
message(STATUS "(4): M_VAR: ${M_VAR}")

# déréférencement d'une variable
set(M_VAR "Hello")
set(M_REF "M_VAR")
message(STATUS "(5): [M_REF]: ${M_REF}")
message(STATUS "(6): {M_REF}: ${${M_REF}}")

# suppression d'une variable
set(M_VAR "Hello")
unset(M_VAR)
message(STATUS "(7): M_VAR: ${M_VAR}")
