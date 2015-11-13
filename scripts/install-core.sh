#!/bin/bash

echo "installing node, python, etc..."

# python repo
sudo add-apt-repository ppa:fkrull/deadsnakes

sudo apt-get update

sudo apt-get install -y nodejs nodejs-legacy npm python2.7-dev build-essentials

echo "done;"