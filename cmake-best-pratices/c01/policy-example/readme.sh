#------------------------------------------------
# met en oeuvre les politiques cmake
# accède à une liste avec un index invalid
# fait échouer ou non la compilation en fonction
# de la politique cmake définie
# -----------------------------------------------

# compile le projet
cmake -S . -B build
cmake --build build

# exécute le projet sous msvc
.\build\Debug\c01-policy-example
