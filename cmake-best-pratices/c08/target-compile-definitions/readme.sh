#------------------------------------------------
# met en oeuvre l'instruction find_package cmake
# recherche un package pendant la phase de configuration
# -----------------------------------------------

# nettoye le projet
cmake --build build --target clean

# compile le projet
cmake -S . -B build
cmake --build build

# exécute le projet sous msvc
.\build\Debug\c08-target-compile-definitions.exe
