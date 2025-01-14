#!/bin/bash

export NEW_REPO_NAME=$1;

function show_help() {
    echo "Usage: bash  $0 [repo_name]"
    echo
    echo "Examples:"
    echo " bash $0 my_new_py_project"
    exit 0
}

if [ -n "$NEW_REPO_NAME" ]; then
    echo "Initilizing $NEW_REPO_NAME"
    find . \( -path './.git' -o -path './local_data' \) -prune -o -type f -exec sed -i "s/repo_name/${NEW_REPO_NAME}/g" {} + 
    mkdir ./src/$NEW_REPO_NAME
    mv ./src/repo_name/* ./src/$NEW_REPO_NAME
    rm -r ./src/repo_name
    rm -r README.md
    mv  repo_name_README.md README.md
    git add -A
    echo "All the best building $NEW_REPO_NAME"
    echo "Self Destruct.... BYE!!"
    rm -- "$0"

else 
    show_help
fi