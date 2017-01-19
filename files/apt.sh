#!/bin/bash

set -e

# Install must-have apt-get packages
apt-get update && apt-get install -y htop \
    httpie \
    tig \
    xclip

# Run this script
# cat files/apt.sh | sudo bash
