#!/bin/bash

echo "Performing Git Status Check"

git status

while true; do
    read -p "Is the git Status Check good?" yn
    case $yn in
        [Yy]* ) deploy; break;;
        [Nn]* ) echo "Deploy Cancelled";  exit;;
        * ) echo "Please answer yes or no.";;
    esac
done


git add .

git commit -m "Updates"

git push
