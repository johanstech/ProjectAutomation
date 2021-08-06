#!/usr/bin/env bash

function create() {
  cd
  source ~/Projects/ProjectAutomation/.env
  remote-git $1
  mkdir $PROJECTS_BASEDIR/$1
  cd $PROJECTS_BASEDIR/$1
  local-git $1
}

function remote-git() {
  curl \
  -X POST \
  -H 'Accept: application/vnd.github.v3+json' \
  -H 'Authorization: token '$GIT_ACCESS_TOKEN \
  https://api.github.com/user/repos \
  -d '{"name":"'$1'"}'
}

function local-git() {
  git init
  git remote add origin https://github.com/$GIT_USERNAME/$1.git
  touch README.md
  touch .gitignore
  git add .
  git commit -m 'Initial commit'
  git push -u origin master
  code .
}

function auto-env() {
  touch .env
  echo 'GIT_USERNAME="Username"' >> .env
  echo 'GIT_ACCESS_TOKEN="PersonalAccessToken"' >> .env
  echo 'PROJECTS_BASEDIR="your/projects/directory"' >> .env
  echo "source $PWD/.automation.sh" >> ~/.zshrc
}