#!/usr/bin/env bash

HUB=https://raw.githubusercontent.com/yumminhuang/dotfiles/master/files

# Function Declarations

# $1: File name
# $2: Directory name
download_to () {
    file=$1
    destination=$2
    echo Download .$file to $destination
    if [ ! -z "$3" ]
      then
        new_name=$3
        curl -L $HUB/$file > $destination/$new_name
    else
        curl -L $HUB/$file > $destination/.$file
    fi
}

# Mian Logic: Downloading dot files
main () {
    # what OS?
    case "$(uname)" in
        Darwin)
            echo 'Install dotfiles for Mac'
            download_to 'zshrc' ~
            ;;
        Linux)
            echo 'Install dotfiles for Linux'
            download_to 'bash_profile' ~
            download_to 'bashrc' ~
            # Create .config directory
            if [ ! -d '~/.config' ]; then
              mkdir -p ~/.config
            fi
            download_to 'i3_config' ~/.config/i3 config
            download_to 'i3status_config' ~/.config/i3status config
            ;;
        *)
            echo 'Not support this OS'
    esac
    # Both Linux and Mac need following files
    download_to 'profile' ~
    download_to 'vimrc' ~
    download_to 'gitconfig' ~
    download_to 'gitignore_global' ~
}

main "$@"
