#!/bin/bash

source init.sh


sudo apt -y install tmux
sudo apt -y install zsh
chsh -s $(which zsh)
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
sudo apt -y install fonts-powerline
