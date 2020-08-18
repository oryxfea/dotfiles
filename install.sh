#!/bin/bash

sudo apt install -y less

pushd $HOME

# Install on-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh) --unattended --keep-zshrc"

popd