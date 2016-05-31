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
  openssl libssl-dev
  libxss1 libappindicator1 libindicator7 # chrome deps
)

NODE_MODULES=(
  nodemon
  npm-check
  bower
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
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome*.deb
rm -f google-chrome*.deb

echo "done;"
