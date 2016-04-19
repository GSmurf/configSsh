#!/bin/bash

# mise à jour du projet
git fetch -p && git rebase
# copie du fichier utilisé par le systeme dans le dossier projet
cp ~/.gitconfig .
# TODO supprime les spécificité de l'utilisateur pour commit une configuration générique
# sed ...
# affichage de la différence
git status -sb
