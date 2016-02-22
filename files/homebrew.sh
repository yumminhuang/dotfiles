#!/usr/bin/env bash

set -e

# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install must-have homebrew packages
packages=( hugo tig httpie tree htop )

for i in "${packages[@]}"
do
    brew install $i
done
