# Dotfiles

This repository borrows heavily from [jcarley/dotmatrix](https://github.com/jcarley/dotmatrix),
but was tweaked for use with [Boxen](https://boxen.github.com/) and [Dotbot](https://github.com/anishathalye/dotbot).

This config makes use of powerline and tmux-powerline.

It also references a private bitbucket repo that contains private_dotfiles.

## Setup:

1. git clone this project

```
  git clone https://github.com/timcmartin/dotfiles.git ~/.dotfiles
```

2. Change into the ~/.dotfiles directory and run ./install

```
  cd ~/.dotfiles
  ./install
```

Dotbot will update the submodules and create the requisite symlinks.
