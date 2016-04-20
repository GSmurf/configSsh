#!/usr/bin/env bash

set -o pipefail  # trace ERR through pipes
set -o errtrace  # trace ERR through 'time command' and other functions
set -o nounset   ## set -u : exit the script if you try to use an uninitialised variable
set -o errexit   ## set -e : exit the script if any statement returns a non-true return valueli

# SCRIPT_DIR=$(dirname $(readlink -f "$0"))
# NEW_REPONAME="infogene"
# for path in ; do
#     find ${SCRIPT_DIR}/../docker -name "Dockerfile" -type f -exec sed -i "s/FROM webdevops/FROM ${NEW_REPONAME,,}/g" {} \;
#     find ${SCRIPT_DIR}/.. -name "Makefile" -type f -exec sed -i "s/webdevops/${NEW_REPONAME,,}/g" {} \;
#     find ${SCRIPT_DIR}/../docker -name "Dockerfile" -type f -exec sed -i "    /^LABEL /d" {} \;
#     find ${SCRIPT_DIR}/../docker -name "*.md" -type f -exec sed -i "/^Automated build and tested by/d" {} \;
#     find ${SCRIPT_DIR}/../docker -name "*.md" -type f -exec sed -i "s/webdevops/${NEW_REPONAME,,}/g" {} \;
#     find ${SCRIPT_DIR}/../docker -name "*.md" -type f -exec sed -i "s/WebDevOps/${NEW_REPONAME^^}/g" {} \;
#     find ${SCRIPT_DIR}/../docker -name "*.md" -type f -exec sed -i "s/WebDevOps/${NEW_REPONAME^^}/g" {} \;
# done

for home in `ls /home/`;do
    echo ${home};
    for project in ariane back bo projects; do
        echo ${project};
            if [ -d "/home/${home}/${project}" ];then
                echo "exist"
            else
                echo "/!\ not exist"
            fi
    done
done
