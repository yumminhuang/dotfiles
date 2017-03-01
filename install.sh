#!/usr/bin/env bash

echo 'clone dotfiles repository'
git clone https://github.com/yumminhuang/dotfiles.git /tmp/dotfiles
cd /tmp/dotfiles

echo 'copy dotfiles'
find base/ -maxdepth 1 -type f ! -path base/ | xargs cp -rt
case "$(uname)" in
    Darwin)
        find mac/ -maxdepth 1 -type f ! -path mac/ | xargs cp -t $HOME
        ;;
    Linux)
        find linux/ -maxdepth 1 -type f ! -path linux/ | xargs cp -t $HOME
        if which i3 >/dev/null; then
            echo 'i3 exists'
            # Create .config directory
            [ -d "$HOME/.config" ] || mkdir -p $HOME/.config
            find linux/ -maxdepth 1 -type d ! -path linux/ | xargs cp -rt $HOME/.config/
        else
            echo 'i3 does not exist, skip i3 configuration'
        fi

        # Dowload bash-powerline.sh
        curl https://raw.githubusercontent.com/riobard/bash-powerline/master/bash-powerline.sh -o ~/.bash-powerline.sh
        ;;
    *)
        echo 'Not support this OS'
esac
