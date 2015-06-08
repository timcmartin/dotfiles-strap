# Dotfiles

This repository borrows heavily from [jcarley/dotmatrix](https://github.com/jcarley/dotmatrix),
but was tweaked for use with [Boxen](https://boxen.github.com/) and [Dotbot](https://github.com/anishathalye/dotbot).

This config makes use of powerline and tmux-powerline.

It also references a private bitbucket repo that contains private_dotfiles.

I have included my preferred vimbundles as a submodule.  Upon running ./install, it will init and update all vimbundles as well.

## Standalone Setup: (without Boxen)

1. git clone this project

```
  git clone https://github.com/timcmartin/dotfiles.git ~/Dotfiles
```

2. Change into the ~/.dotfiles directory and run ./install

```
  cd ~/Dotfiles
  scripts/./install
```

Dotbot will update the submodules and create the requisite symlinks.

## Boxen Setup:

1. No need to do anything with this repo.

2. Clone the boxen repo and it will take care of everyting.

## Editing:

To edit the functionality, of Dotbot, edit the `install.conf.yaml` file.

See [Dotbot](https://github.com/anishathalye/dotbot) for more information and examples.

## Lanuchd Plist

There is a `subcron.sh` job and a properties job in the `properties` directory.
Dotbot will automatically symlink this to the LaunchAgents directory and every morning at 7 all Dotfiles submodules will be updated.
