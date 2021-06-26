#!/bin/bash

# Run this script
# cat files/apt.sh | sudo bash

set -e

# Install must-have apt-get packages
apt update
apt install -y fonts-font-awesome \
               htop \
               httpie \
               tig \
               xclip
