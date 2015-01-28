# Dotmatrix

This config makes use of powerline and tmux-powerline.
You will also need to create a crypt_config.vim file and a
crypt_tmux.conf file to house password sensitive information not stored in GIT.

## Setup:

1. git clone this project
2. cd <project directory>/bin/
3. run hlink
4. run vimbundles.sh

##  Gotchas:

For git completion, make sure you've run `brew install bash-completion` and sourced ~/.bashrc

## Setup Effortless Ctags with Git
http://tbaggery.com/2011/08/08/effortless-ctags-with-git.html

## VIM

To update vim plugins:

    cd ~/.vimbundles
    find . -maxdepth 1 -type d -exec sh -c '(cd {} && git pull)' ';'

Line 2 will search change in and out of all directories and do a git pull on the repos.
