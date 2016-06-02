#!/bin/bash

echo "installing all.."

bash ./install-core.sh
bash ./install-apps.sh
bash ./install-shell.sh
bash ./misc.sh

echo "done;"