#------------------------------------------------
# met en oeuvre l'instruction add_subdirectory cmake
# met en oeuvre la décomposation d'un projet en sous-projets
# crée un projet de fichier exécutable
# utilise un projet de fichier librairie statique
# -----------------------------------------------

# nettoye le projet
cmake --build build --target clean

# compile le projet
cmake -S . -B build
cmake --build build

# exécute le projet sous msvc
.\build\main\Debug\main.exe
