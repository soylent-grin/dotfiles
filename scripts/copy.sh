#!/bin/bash

echo "copying configurations..."

cp -f ../.bashrc ~/.bashrc
cp -f ../.zshrc ~/.zshrc
cp -f ../.eslintrc.json ~/.eslintrc.json

echo "done;"
