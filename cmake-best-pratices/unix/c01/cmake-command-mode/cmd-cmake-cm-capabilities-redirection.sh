#!/bin/bash

# execution d'une commande indépendamment de la plateforme
# on affiche les fonctionnalités internes de cmake
# et on redirige la sortie dans un fichier json
cmake -E capabilities > data/capabilities.json
