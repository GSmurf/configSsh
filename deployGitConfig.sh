#!/bin/bash

# recupere le nom de l'utilisateur git en cours
nomUserGit=$(cat ~/.gitconfig|grep 'name ='|awk '/'^$'/ { print $3" "$4 }')
$(cat ~/.gitconfig|grep 'name ='|awk '/'^$'/ { print $3" "$4 }')
# recupere le nom de l'utilisateur git en cours
mailGit=$(cat ~/.gitconfig|grep 'email ='|awk '/'^$'/ { print $3 }')


function changeInfosUserGit
{
    echo "nom : $1, mail : $2"

    cp .gitconfig .gitconfigNew
    sed -i "s/#name = REALNAME/name = $1/g" .gitconfigNew 
    sed -i "s/#email = USERNAME/email = $2/g" .gitconfigNew 
    mv .gitconfigNew ~/.gitconfig
}


echo "Les informations GIT récupérées sont : $nomUserGit ($mailGit), vous confirmez (y/n) ?"
read ok

case $ok in
    "y" )
        echo "Remplacement des informations générique par les données : $nomUserGit ($mailGit)"
        changeInfosUserGit $nomUserGit $mailGit
    ;;
    "n" )
        echo "saisir le Nom user ex, Stéphane S. :"
        read nomUserGit
        echo "saisir l'email ex, test@gmail.com :"
        read mailGit
        changeInfosUserGit $nomUserGit $mailGit
    ;;
    *)
        echo "rien"
    ;;
esac
# copie du fichier du projet dans le systeme
#cp .gitconfig ~/.gitconfig
