#!/usr/bin/env bash

set -e

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install must-have homebrew packages
brew install ansible \
             awscli \
             azure-cli \
             diff-so-fancy \
             httpie \
             ipcalc \
             jq \
             oath-toolkit \
             tig \
             tmux \
             traefik \
             wget \
             yamllint \
             yapf \
             yq

# Install must-have homebrew softwares
brew install --cask docker \
                    drawio \
                    insomnia \
                    iterm2 \
                    intellij-idea-ce \
                    multipass \
                    pycharm-ce \
                    session-manager-plugin \
                    virtualbox \
                    visual-studio-code \
                    wireshark

# Install alternative homebrew softwares
brew install --cask basictex\
                    dropbox \
                    microsoft-teams \
                    qqmusic \
                    shadowsocksx-ng \
                    skype \
                    tex-live-utility \
                    texmacs \
                    typora \
                    zoomus

# Install Hashicorp softwares
brew install hashicorp/tap/consul \
             hashicorp/tap/nomad \
             hashicorp/tap/packer \
             hashicorp/tap/terraform \
             hashicorp/tap/vault
