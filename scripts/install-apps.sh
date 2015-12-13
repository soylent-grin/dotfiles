#!/bin/bash

REPOS=(
  "ppa:me-davidsansome/clementine"
  "ppa:webupd8team/sublime-text-3"
)

APPS=(
  sublime-text-installer
  clementine
  guake 
  git 
  maven 
  python-pip 
  httpie 
  nginx
  vlc
  transmission
  skype
  openssh-server
)

NODE_MODULES=(
  nodemon
  n
  eslint 
  grunt-cli 
  trash 
  vtop 
  ttystudio 
  node-inspector
)

echo "installing apps..."

for repo in "${REPOS[@]}"
do
  sudo add-apt-repository -y ${repo}
done

sudo apt-get update

for app in "${APPS[@]}"
do
  sudo apt-get install -y ${app} 
done

for module in "${NODE_MODULES[@]}"
do
  sudo npm install -g ${module} 
done

# thefuck
sudo pip install thefuck

# chrome
sudo apt-get install -y libxss1 libappindicator1 libindicator7
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome*.deb

echo "done;"
