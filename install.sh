#!/bin/bash

sudo apt install -y less
sudo apt install -y gdb
sudo apt install -y zsh

sudo apt install -y python3
sudo apt install -y python3-pip
pip3 install powerline-status

sudo apt install -y docker.io
sudo apt install -y docker-compose

sudo apt install -y nodejs
sudo apt install -y npm
sudo npm install -g yarn

ln -s ~/.dotfiles/.zshrc ~
ln -s ~/.dotfiles/.tmux.conf ~
ln -s ~/.dotfiles/.gitconfig ~
ln -s ~/.dotfiles/.gitignore ~

pushd $HOME

# Install on-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh) --unattended --keep-zshrc"

mkdir -p ~/.tmux/plugins
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

popd

