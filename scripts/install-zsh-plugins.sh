#!/bin/bash

pushd ~/.zsh

echo "installing zsh-syntax-highlighting.."
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
echo "source ${(q-)PWD}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc
source ./zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

echo "installing zsh-autosuggestions.."
git clone git://github.com/zsh-users/zsh-autosuggestions 
source zsh-autosuggestions/zsh-autosuggestions.zsh

