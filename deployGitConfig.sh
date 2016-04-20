#!/bin/bash

# recupere le nom de l'utilisateur git en cours
nomUserGit=$(cat ~/.gitconfig|grep 'name ='|awk '/'^$'/ { print $3" "$4 }')
$(cat ~/.gitconfig|grep 'name ='|awk '/'^$'/ { print $3" "$4 }')
# recupere le nom de l'utilisateur git en cours
mailGit=$(cat ~/.gitconfig|grep 'email ='|awk '/'^$'/ { print $3 }')

echo "Les informations GIT récupérées sont : $nomUserGit ($mailGit), vous confirmez (y/n) ?"
read test

case $test in
    "y" )
    echo "oui"
    ;;
    "n" )
    echo "non"
    ;;
    *)
    echo "rien"
    ;;
esac
# copie du fichier du projet dans le systeme
#cp .gitconfig ~/.gitconfig
