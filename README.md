README
===

* setup script is modified from [riobard](https://github.com/riobard)/[dotfiles](https://github.com/riobard/dotfiles)
* Some configuration are inspired by example in [dotfiles.github.io](https://dotfiles.github.io)


##Notes
### Difference between .bashrc, .bash_profile and .profile
* `~/.profile` has the stuff NOT specifically related to bash, such as environment variable definitions (PATH and friends).
* `~/.bashrc` is the place to put stuff that applies only to bash itself, such as alias and function definitions, shell options, and prompt settings.
* `~/.bash_profile` should be super-simple and just load `.profile` and `.bashrc` (in that order). It is read by bash only, not by any other shell.


##LICENSE
[CC0 1.0 Universal](http://creativecommons.org/publicdomain/zero/1.0/)