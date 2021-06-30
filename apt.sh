#!/bin/bash

# Run this script
# cat files/apt.sh | sudo bash

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
