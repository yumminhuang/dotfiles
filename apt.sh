#!/bin/bash

set -e

# Install must-have apt-get packages
apt update
apt install -y ansible \
               awscli \
               htop \
               httpie \
               jq \
               python3-venv \
               tig \
               tmux \
               tree \
               xclip \
               yamllint \
               zsh

# Install Hashicorp apt repository
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
sudo apt-add-repository "deb [arch=$(dpkg --print-architecture)] https://apt.releases.hashicorp.com $(lsb_release -cs) main"

# Install Docker apt repository
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-add-repository "deb [arch=$(dpkg --print-architecture)]  https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
