cmake_minimum_required(VERSION 3.21)

project(
    c01-cmake-list
    VERSION 1.0
    DESCRIPTION "CMake List"
    LANGUAGES CXX
)

message(STATUS "(01): CMake List")

# création d'une liste
set(MYLIST def abc ghi)
message(STATUS "(02): ${MYLIST}")

# création d'une liste
set(MYLIST "def;abc;ghi")
message(STATUS "(03): ${MYLIST}")

# ajout d'un élément à la fin d'une liste
list(APPEND MYLIST "xyz")
message(STATUS "(04): ${MYLIST}")

# recherche de l'index d'un élément d'une liste
# index connu : l'index évolue entre 0 et n-1
list(FIND MYLIST def ABC_INDEX)
message(STATUS "(05): ${ABC_INDEX}")

# recherche de l'index d'un élément d'une liste
# index inconnu : l'index vaut -1
list(FIND MYLIST unknown ABC_INDEX_UNKNOWN)
message(STATUS "(06): ${ABC_INDEX_UNKNOWN}")

# lecture d'un élément à un index d'une liste
# index connu : on récupère le bon élément
list(GET MYLIST ${ABC_INDEX} ABC)
message(STATUS "(07): ${ABC}")

# lecture d'un élément à un index d'une liste
# index inconnu : on récupère le dernier élément
list(GET MYLIST ${ABC_INDEX_UNKNOWN} ABC_UNKNOWN)
message(STATUS "(08): ${ABC_UNKNOWN}")

# lecture de la longueur d'une liste
list(LENGTH MYLIST M_LENGTH)
message(STATUS "(09): ${M_LENGTH}")

# parcours d'une liste (foreach)
foreach(M_ITEM IN LISTS MYLIST)
    list(FIND MYLIST ${M_ITEM} M_INDEX)
    message(STATUS "(10): [${M_INDEX}] : ${M_ITEM}")
endforeach()

# parcours d'une liste (while)
set(M_INDEX 0)
while(M_INDEX LESS ${M_LENGTH})
    list(GET MYLIST ${M_INDEX} M_ITEM)
    message(STATUS "(11): [${M_INDEX}] : ${M_ITEM}")
    math(EXPR M_INDEX "${M_INDEX} + 1")
endwhile()

# tri d'une liste (ASCENDING)
# on trie du plus petit au plus grand
set(M_LIST ${MYLIST})
list(SORT M_LIST ORDER ASCENDING)
message(STATUS "(12): ${M_LIST}")

# tri d'une liste (DESCENDING)
# on trie du plus grand au plus petit
set(M_LIST ${MYLIST})
list(SORT M_LIST ORDER DESCENDING)
message(STATUS "(13): ${M_LIST}")

# tri d'une liste (SENSITIVE)
# on est sensible à la casse
set(M_LIST ${MYLIST})
list(SORT M_LIST CASE SENSITIVE)
message(STATUS "(14): ${M_LIST}")

# tri d'une liste (INSENSITIVE)
# on est insensible à la casse
set(M_LIST ${MYLIST})
list(SORT M_LIST CASE INSENSITIVE)
message(STATUS "(15): ${M_LIST}")

# tri d'une liste (STRING)
# on considère chaque élément comme une chaîne
# et on trie les chaînes
set(M_LIST ${MYLIST})
list(SORT M_LIST COMPARE STRING)
message(STATUS "(16): ${M_LIST}")

# tri d'une liste (FILE_BASENAME)
# on considère chaque élément comme un chemin de fichier
# et on les trie par leur nom de fichier de base
set(M_LIST ${MYLIST})
list(SORT M_LIST COMPARE FILE_BASENAME)
message(STATUS "(17): ${M_LIST}")

# tri d'une liste (NATURAL)
# on vérifie que chaque élément est un nombre ou une chaîne
# et on les trie comme des nombres ou des chaînes
set(M_LIST ${MYLIST})
list(SORT M_LIST COMPARE NATURAL)
message(STATUS "(18): ${M_LIST}")

# inversion d'une liste
set(M_LIST ${MYLIST})
list(REVERSE M_LIST)
message(STATUS "(19): ${M_LIST}")

# transformation des éléments d'une liste (APPEND)
# on ajoute une valeur à la fin de chaque élément
set(M_LIST ${MYLIST})
list(TRANSFORM M_LIST APPEND _com)
message(STATUS "(20): ${M_LIST}")

# transformation des éléments d'une liste (PREPEND)
# on ajoute une valeur au début de chaque élément
set(M_LIST ${MYLIST})
list(TRANSFORM M_LIST PREPEND com_)
message(STATUS "(21): ${M_LIST}")

# transformation des éléments d'une liste (TOUPPER)
# on met chaque élément en majuscule
set(M_LIST ${MYLIST})
list(TRANSFORM M_LIST TOUPPER)
message(STATUS "(22): ${M_LIST}")

# transformation des éléments d'une liste (TOLOWER)
# on met chaque élément en minuscule
set(M_LIST ${MYLIST})
list(TRANSFORM M_LIST TOLOWER)
message(STATUS "(23): ${M_LIST}")

# transformation des éléments d'une liste (STRIP)
# on supprime les espaces de fin et de début
# de chaque élément
set(M_LIST ${MYLIST})
list(TRANSFORM M_LIST STRIP)
message(STATUS "(24): ${M_LIST}")

# transformation des éléments d'une liste (GENEX_STRIP)
# on supprime les générateus d'expressions
# dans chaque élément
set(M_LIST ${MYLIST})
list(TRANSFORM M_LIST GENEX_STRIP)
message(STATUS "(25): ${M_LIST}")

# transformation des éléments d'une liste (REPLACE)
# on remplace la valeur (1) par la valeur (2)
# dans chaque élément
set(M_LIST ${MYLIST})
list(TRANSFORM M_LIST REPLACE a A)
message(STATUS "(26): ${M_LIST}")

# transformation des éléments d'une liste (AT)
# on définit les index des éléments concernés
set(M_LIST ${MYLIST})
list(TRANSFORM M_LIST TOUPPER AT 1 2)
message(STATUS "(27): ${M_LIST}")

# transformation des éléments d'une liste (FOR)
# on définit la plage des index des éléments
# concernés par la transfromation
set(M_LIST ${MYLIST})
list(TRANSFORM M_LIST TOUPPER FOR 1 3)
message(STATUS "(28): ${M_LIST}")

# transformation des éléments d'une liste (REGEX)
# on définit l'expression regulière des éléments
# concernés par la transfromation
set(M_LIST ${MYLIST})
list(TRANSFORM M_LIST TOUPPER REGEX a)
message(STATUS "(29): ${M_LIST}")
