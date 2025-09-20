#------------------------------------------------
# met en oeuvre l'instruction execute_process cmake
# exécute une commande personnalisée pour alimenter une variable
# pendant le processus de configuration
# -----------------------------------------------

# nettoye le projet
cmake --build build --target clean

# compile le projet
cmake -S . -B build
cmake --build build

# exécute le projet sous msvc
.\build\Debug\c08-execute-process.exe
