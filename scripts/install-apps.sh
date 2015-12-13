#!/bin/bash

APPS=(
  guake 
  git 
  maven python-pip httpie nginx 
  openssh-server
)

echo "installing apps..."

# chrome
sudo apt-get install -y libxss1 libappindicator1 libindicator7
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome*.deb

# clementine
sudo add-apt-repository -y ppa:me-davidsansome/clementine
sudo apt-get update
sudo apt-get install -y clementine

# sublime
sudo add-apt-repository -y ppa:webupd8team/sublime-text-3
sudo apt-get update
sudo apt-get install sublime-text-installer

# other
sudo apt-get install -y guake git maven python-pip httpie nginx openssh-server

# node modules
sudo npm i -g n nodemon eslint grunt-cli trash vtop ttystudio node-inspector

# thefuck
sudo pip install thefuck

echo "done;"
