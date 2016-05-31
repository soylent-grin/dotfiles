 #!/bin/bash
 
 sudo apt-get update && sudo apt-get install -y git
 
 git config --global user.name "soylent-grin"
 
 git clone git@github.com:soylent-grin/dotfiles.git && cd ./dotfiles
 
 bash ./init.sh
