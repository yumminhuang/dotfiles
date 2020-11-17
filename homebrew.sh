#!/usr/bin/env bash

set -e

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Install must-have homebrew packages
brew install ansible awscli azure-cli diff-so-fancy httpie ipcalc jq oath-toolkit tig tmux traefik wget yamllint yq
# Install must-have homebrew softwares
brew cask install docker drawio iterm2 multipass session-manager-plugin sublime-text virtualbox visual-studio-code wireshark
# Install Hashicorp softwares
brew install hashicorp/tap/consul hashicorp/tap/nomad hashicorp/tap/packer hashicorp/tap/vault
