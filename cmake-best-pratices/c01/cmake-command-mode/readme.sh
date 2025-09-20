#------------------------------------------------
# met en oeuvre cmake commande mode
# exécute des commandes externe à partir de cmake
# indépendantes de la plateforme
# -----------------------------------------------

# affiche la liste des commandes prises en charge
cmake -E

# affiche les fonctionnalités de cmake
cmake -E capabilities

# crée le répertoire spécifié
cmake -E make_directory tmp

# affiche les fonctionnalités de cmake dans le fichier spécifié
cmake -E capabilities > tmp/file-capabilities.json

# affiche le fichier spécifié
cmake -E cat tmp/file-capabilities.json

# change de répertoire
# exécute une commande dans le nouveau répertoire
# affiche le fichier spécifié
cmake -E chdir data cmake -E cat file-input.txt

# compare les fichiers spécifiés
cmake -E compare_files data/file-input.txt data/file-input.txt

# copie le fichier spécifié
cmake -E copy data/file-input.txt tmp

# affiche le fichier spécifié
cmake -E cat tmp/file-input.txt

# supprime le fichier spécifié
# accepte plusieurs fichiers
cmake -E rm tmp/file-input.txt

# affiche le message spécifié
cmake -E echo "(1): CMake Command Mode"

# liste les variables d'environnement
cmake -E environment

# modifie la varaible d'environnement spécifiée
# liste les variables d'environnement
cmake -E env LANG=fr_FR.UTF-8 -- cmake -E environment

# calcule le hachage du fichier spécifié
cmake -E sha256sum data/file-input.txt

# crée l'arhive spécifiée
cmake -E tar czf tmp/file-archive.zip data/file-input.txt

# extrait l'arhive spécifiée
cmake -E chdir tmp cmake -E tar xzf file-archive.zip

# liste le contenu de l'arhive spécifiée
cmake -E tar tzf tmp/file-archive.zip

# détermine le temps d'exécution de la commande spécifiée
cmake -E time cmake -E capabilities

# crée le fichier spécifié
cmake -E touch tmp/file-touch.txt
