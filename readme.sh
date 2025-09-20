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

# pousse les modifications
git push origin master

# récupère les modifications
git pull


# résout les problème de fin de ligne
# warning: in the working copy of 'readme.sh',
# LF will be replaced by CRLF the next time Git touches it
git config core.eol lf
git config core.autocrlf input
