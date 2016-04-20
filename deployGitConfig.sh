#!/bin/bash

# recupere le nom de l'utilisateur git en cours
nomUserGit=$(cat ~/.gitconfig|grep 'name ='|awk '/'^$'/ { print $3" "$4 }')
$(cat ~/.gitconfig|grep 'name ='|awk '/'^$'/ { print $3" "$4 }')
# recupere le nom de l'utilisateur git en cours
mailGit=$(cat ~/.gitconfig|grep 'email ='|awk '/'^$'/ { print $3 }')

echo "Les informations GIT récupérées sont : $nomUserGit ($mailGit), vous confirmez (y/n) ?"
read ok

case $ok in
    "y" )
        echo "Remplacement des informations générique par les données : $nomUserGit ($mailGit)"
        pattern1="s/#name = REALNAME/name = $nomUserGit/g"
        pattern2="s/#email = USERNAME/email = $mailGit/g"
        cp .gitconfig .gitconfigNew
        sed -i $pattern1 .gitconfigNew
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
