#!/bin/bash

sudo apt install less

pushd $HOME

[ -d dotfiles ] && mv dotfiles .dotfiles

ln -s .dotfiles/.gitconfig .
ln -s .dotfiles/.gitignore .
rm .zshrc
ln -s .dotfiles/.zshrc .

# Install on-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh) --unattended --keep-zshrc"

popd