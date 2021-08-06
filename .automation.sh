#!/usr/bin/env bash

function create() {
    cd
    source ~/Projects/ProjectAutomation/.env
    remoteGit $1
    mkdir $PROJECT_FILEPATH/$1
    cd $PROJECT_FILEPATH/$1
    localGit $1
}

function remoteGit() {
    curl \
    -X POST \
    -H 'Accept: application/vnd.github.v3+json' \
    -H 'Authorization: token '$GIT_ACCESS_TOKEN \
    https://api.github.com/user/repos \
    -d '{"name":"'$1'"}'
}

function localGit() {
    git init
    git remote add origin https://github.com/$GIT_USERNAME/$1.git
    touch README.md
    touch .gitignore
    git add .
    git commit -m 'Initial commit'
    git push -u origin master
    code .
}