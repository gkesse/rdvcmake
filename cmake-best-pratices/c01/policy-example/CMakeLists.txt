cmake_minimum_required(VERSION 3.21)

project(
    c01-policy-example
    VERSION 1.0
    DESCRIPTION "Policy Example"
    LANGUAGES CXX
)

# définition de la politique CMP0121 sur le nouveau comportement.
# La politique CMP0121 a été introduite avec la version 3.21 de CMake.
# cmake_policy(SET CMP0121 NEW)

# définition de la politique CMP0121 sur l'ancien comportement.
# La politique CMP0121 a été introduite avec la version 3.21 de CMake.
cmake_policy(SET CMP0121 OLD)

# création d'une liste
list(APPEND MYLIST "abc;def;ghi")

# Cette commande échouera si la stratégie est définie sur NEW
# ou si l'appel à cmake_policy ci-dessus est supprimé
# car CMake 3.21 définit cette stratégie automatiquement
list(GET MYLIST "any" OUT_VAR)

# Ajout d'une cible exécutable
add_executable(c01-policy-example)

# Ajout des sources à la cible
target_sources(c01-policy-example PRIVATE
    src/main.cpp
)
