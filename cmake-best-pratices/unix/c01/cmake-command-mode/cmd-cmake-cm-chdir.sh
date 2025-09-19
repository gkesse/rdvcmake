#!/bin/bash

# execution d'une commande indépendamment de la plateforme
# on change de répertoire et on exécute une commande
# dans le nouveau répertoire courant
cmake -E chdir data cat capabilities.json
