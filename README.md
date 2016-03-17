README
===

Download and install dot files to simplify system configuration.

## Install
```
curl https://raw.githubusercontent.com/yumminhuang/dotfiles/master/install.sh | sh
```

## Acknowledgements

* Some configurations are inspired by examples in [dotfiles.github.io](https://dotfiles.github.io)
* Integrated [bash-powerline](https://github.com/riobard/bash-powerline) in Bash

## Notes
### Difference between .bashrc, .bash_profile and .profile
* `~/.profile` has the stuff NOT specifically related to bash, such as environment variable definitions (PATH and friends).
* `~/.bashrc` is the place to put stuff that applies only to bash itself, such as alias and function definitions, shell options, and prompt settings.
* `~/.bash_profile` should be super-simple and just load `.profile` and `.bashrc` (in that order). It is read by bash only, not by any other shell.

### Bash/Zsh startup files loading order
**Moral**:

* For **bash**, put stuff in `~/.bashrc`, and make `~/.bash_profile` source it.
* For **zsh**, put stuff in `~/.zshrc`, which is always executed.

Reference: [Zsh/Bash startup files loading order (.bashrc, .zshrc etc.)](https://shreevatsa.wordpress.com/2008/03/30/zshbash-startup-files-loading-order-bashrc-zshrc-etc/)


## LICENSE
This Project by [YumminHuang](https://github.com/yumminhuang) is licensed under MIT License.
