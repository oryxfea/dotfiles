#!/bin/bash

sudo apt install -y less
sudo apt install -y gdb

pushd $HOME

# Install on-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh) --unattended --keep-zshrc"

popd