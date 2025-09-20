#------------------------------------------------
# met en oeuvre l'instruction configure_file cmake
# met en oeuvre la génération de fichier
# génère un fichier de sortie à partir d'un fichier d'entrée
# en remplaçant les variables cmakes prédéfinies
# -----------------------------------------------

# nettoye le projet
cmake --build build --target clean

# compile le projet
cmake -S . -B build
cmake --build build

# exécute le projet sous msvc
.\build\Debug\c08-configure-file-example.exe
