#------------------------------------------------
# met en oeuvre l'instruction add_custom_command cmake
# met en oeuvre les commandes personnalisées
# demande un fichier pour construire la cible exécutable
# génère le fichier avant de construire la cible exécutable
# -----------------------------------------------

# nettoye le projet
cmake --build build --target clean

# compile le projet
cmake -S . -B build
cmake --build build

# exécute le projet sous msvc
.\build\Debug\c08-add-custom-command-output.exe
