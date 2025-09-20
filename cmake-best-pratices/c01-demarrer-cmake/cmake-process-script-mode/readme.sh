#------------------------------------------------
# met en oeuvre cmake process mode
# exécute des scripts écrits en langage cmake
# -----------------------------------------------

# exécute le script cmake spécifié
cmake -P cmake/process.cmake

# exécute la commande externe spécifiée
# supprime le répertoire spécifié
cmake -E remove_directory tmp

# exécute la commande externe spécifiée
# crée le répertoire spécifié
cmake -E make_directory tmp

# exécute le script cmake spécifié
# analyse les arguments transmis au script spécifié
cmake -DVERSION=1.0.1 -P cmake/args.cmake abc opq ijk efg


# exécute le script cmake spécifié
# met en oeuvre les variables cmake
cmake -P cmake/variable.cmake

# exécute le script cmake spécifié
# met en oeuvre les conditions cmake
cmake -P cmake/condition.cmake

# exécute le script cmake spécifié
# met en oeuvre l'instruction file cmake
cmake -P cmake/file.cmake

# exécute le script cmake spécifié
# met en oeuvre l'instruction math cmake
cmake -P cmake/math.cmake

# exécute le script cmake spécifié
# met en oeuvre l'instruction string cmake
cmake -P cmake/string.cmake





