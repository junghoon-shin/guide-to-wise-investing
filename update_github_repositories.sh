#!/bin/bash

current_directory=$(cd $(dirname ${BASH_SOURCE[0]}) && pwd)

cd "$current_directory"

git add --all
git commit -m "Regular update"
git push -u origin master

github_pages_repository_directory="$current_directory"/../junghoon-shin.github.io

rm -rf "$github_pages_repository_directory"/docs/*
cp -r "$current_directory"/_book/* "$github_pages_repository_directory"/docs
touch "$github_pages_repository_directory"/docs/.nojekyll

cd "$github_pages_repository_directory"

git add --all
git commit -m "Regular update"
git push -u origin master
