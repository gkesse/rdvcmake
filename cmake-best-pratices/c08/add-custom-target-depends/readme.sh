#------------------------------------------------
# met en oeuvre l'instruction add_custom_target cmake
# met en oeuvre les cibles personnalisées
# crée une cible personnalisée attachée au processus de build ALL
# demande un fichier avant de construire la cible personnalisée
# génère le fichier à partir d'une commande personnalisée
# avant de construire la cible personnalisée
# -----------------------------------------------

# nettoye le projet
cmake --build build --target clean

# exécute la cible personnalisée
cmake --build build --target c08-add-custom-target

# compile le projet
cmake -S . -B build
cmake --build build

# exécute le projet sous msvc
.\build\Debug\c08-add-custom-target-depends.exe
