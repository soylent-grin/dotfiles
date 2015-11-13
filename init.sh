#!/bin/bash

echo "hello $(whoami); let's begin.."

bash ./scripts/install.sh
bash ./scripts/create-links.sh

echo "done; bye!"