cmake_minimum_required(VERSION 3.21)

if(CMAKE_ARGC LESS 5)
    message(FATAL_ERROR "Usage: cmake -P WriteMain.cmake message_file target_file")
endif()

# récupère les arguments
set(MESSAGE_FILE ${CMAKE_ARGV3})
set(TARGET_FILE ${CMAKE_ARGV4})

file(READ ${MESSAGE_FILE} MESSAGE)

# crée le contenu du fichier cible (TARGET_FILE)
set(MAIN_CC_CODE "
#include <iostream>
int main() {
    std::cout << \"${MESSAGE}\";
}
"
)

# génère le fichier cible (TARGET_FILE)
file(WRITE "${TARGET_FILE}" "${MAIN_CC_CODE}")
