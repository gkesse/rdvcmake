#------------------------------------------------
# met en oeuvre le projet rdvcmake
#------------------------------------------------

# clone le dépôt
git clone https://github.com/gkesse/rdvcmake.git

# affiche l'état du dépôt
git status -u

# indexe tous les fichiers
git add --all

# commite les modifications
git commit -m "Initial commit"

# affiche les serveurs
git remote -v

# affiche les branches
git branch -a

# pousse les modifications
git push origin main

# récupère les modifications
git pull

# résout les problème de fin de ligne
# warning: in the working copy of 'readme.sh',
# LF will be replaced by CRLF the next time Git touches it
git config core.eol lf
git config core.autocrlf input
