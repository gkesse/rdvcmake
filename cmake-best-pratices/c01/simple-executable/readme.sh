#------------------------------------------------
# exécute un projet cmake simple
# affiche un message d'accueil
# -----------------------------------------------

# compile le projet
cmake -S . -B build
cmake --build build

# exécute le projet sous msvc
.\build\Debug\c01-simple-executable
