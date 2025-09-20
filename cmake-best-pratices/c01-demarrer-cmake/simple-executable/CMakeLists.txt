cmake_minimum_required(VERSION 3.21)

# Définition d'un projet CMake
project(
  c01-simple-executable
  VERSION 1.0
  DESCRIPTION "Simple Executable"
  LANGUAGES CXX)

# Ajout d'une cible exécutable
add_executable(c01-simple-executable)

# Ajout des sources à la cible
target_sources(c01-simple-executable PRIVATE
    src/main.cpp
)

