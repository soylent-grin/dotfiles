#!/bin/bash

echo "increasing defaul limit of file watchers"
echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p

echo "updgrading npm and node.."
sudo npm i -g npm
sudo n stable
