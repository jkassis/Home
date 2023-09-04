#!/usr/bin/env bash

# init the local file
touch "$HOME/.zshrc.local"

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
