#!/bin/bash

REPOS=(
  "ppa:fkrull/deadsnakes"
  "ppa:openjdk-r/ppa"
)

APPS=(
  nodejs 
  nodejs-legacy 
  npm 
  python2.7-dev 
  dpkg 
  jq 
  openjdk-8-jdk
)

echo "installing node, python, etc..."

for repo in "${REPOS[@]}"
do
  sudo add-apt-repository -y ${repo}
done

sudo apt-get update

for app in "${APPS[@]}"
do
  sudo apt-get install -y ${app} 
done

echo "done;"
