#!/bin/bash

echo "hello $(whoami); let's begin.."

sudo apt-get update && sudo apt-get upgrade

pushd ./scripts
    bash ./install.sh
    bash ./copy.sh
popd

echo "done; bye!"