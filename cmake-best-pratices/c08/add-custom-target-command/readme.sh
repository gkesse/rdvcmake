#------------------------------------------------
# met en oeuvre l'instruction add_custom_target cmake
# met en oeuvre les cibles personnalisées
# crée une cible personnalisée attachée au processus de build ALL
# exécute une commande personnalisée avant la compilation
# -----------------------------------------------

# nettoye le projet
cmake --build build --target clean

# exécute la cible personnalisée
cmake --build build --target c08-add-custom-target

# compile le projet
cmake -S . -B build
cmake --build build

# exécute le projet sous msvc
.\build\Debug\c08-add-custom-target-command.exe
