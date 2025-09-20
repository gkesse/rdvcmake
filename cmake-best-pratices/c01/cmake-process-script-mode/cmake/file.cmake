message(STATUS "(1): CMake Process Script Mode: File")

# liste des fichiers
file(
    GLOB M_FILES
    RELATIVE ${CMAKE_CURRENT_SOURCE_DIR}
    "*.bat" "*.cmake"
)
list(LENGTH M_FILES M_LENGTH)
message(STATUS "(2): M_FILES: ${M_LENGTH}: ${M_FILES}")

# liste recursive des fichiers
file(
    GLOB_RECURSE M_FILES
    RELATIVE ${CMAKE_SOURCE_DIR}
    "*.bat" "*.cmake"
)
list(LENGTH M_FILES M_LENGTH)
message(STATUS "(3): M_FILES: ${M_LENGTH}: ${M_FILES}")

# hachage d'un fichier (SHA256)
set(M_FILE ${CMAKE_CURRENT_SOURCE_DIR}/data/file-input.txt)
file(SHA256 "${M_FILE}" M_HASH)
message(STATUS "(4): M_HASH: ${M_HASH}")

# téléchargement d'un fichier
file(
    DOWNLOAD
    "https://example.com/"
    "${CMAKE_CURRENT_SOURCE_DIR}/tmp/file-download.html"
)
message(STATUS "(5): File Download")

# lecture d'un fichier
set(M_FILE_IN ${CMAKE_CURRENT_SOURCE_DIR}/data/file-input.txt)
file(READ ${M_FILE_IN} M_CONTENT)
message(STATUS "(6): READ: M_CONTENT: ${M_CONTENT}")

# écriture d'un fichier
set(M_FILE_IN ${CMAKE_CURRENT_SOURCE_DIR}/data/file-input.txt)
set(M_FILE_OUT ${CMAKE_CURRENT_SOURCE_DIR}/tmp/file-output.txt)
file(READ ${M_FILE_IN} M_CONTENT)
file(WRITE ${M_FILE_OUT} ${M_CONTENT})
file(READ ${M_FILE_OUT} M_CONTENT)
message(STATUS "(7): WRITE: M_CONTENT: ${M_CONTENT}")

# création d'un répertoire
set(M_DIR_OUT ${CMAKE_CURRENT_SOURCE_DIR}/tmp/dir)
file(MAKE_DIRECTORY ${M_DIR_OUT})
message(STATUS "(8): Make Directory")

# lecture d'un fichier sous forme de liste de chaînes
set(M_FILE_IN ${CMAKE_CURRENT_SOURCE_DIR}/data/file-input.txt)
file(STRINGS ${M_FILE_IN} M_LIST ENCODING UTF-8)
list(TRANSFORM M_LIST STRIP)
list(LENGTH M_LIST M_LENGTH)
message(STATUS "(9): M_LIST: ${M_LENGTH}: ${M_LIST}")
