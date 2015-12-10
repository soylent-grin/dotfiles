#!/bin/bash

echo "installing node, python, etc..."

# python repo
sudo add-apt-repository -y ppa:fkrull/deadsnakes

# java repo
sudo add-apt-repository -y ppa:openjdk-r/ppa

sudo apt-get update
sudo apt-get install -y nodejs nodejs-legacy npm python2.7-dev dpkg jq openjdk-8-jdk

echo "done;"