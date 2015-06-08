# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
ZSH_THEME="muse"
#ZSH_THEME="tim"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
if [ -f ~/.bash_aliases ]; then
    source ~/.bash_aliases
else
    print "404: ~/.bash_aliases not found."
fi

# Powerline Support
# ~/.vimbundles/powerline/powerline/bindings/zsh/powerline.zsh
source /Users/timcmartin/Dotfiles/powerline/powerline/bindings/zsh/powerline.zsh

# Vim Editor
export EDITOR='vim'

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
export UPDATE_ZSH_DAYS=7

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# Recommended for Tmuxinator
DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(rails ruby sublime brew vagrant postgres redis-cli bundler golang git git-flow git-extras last-working-dir osx ssh-agent web-search zsh-syntax-highlighting tmuxinator)

source $ZSH/oh-my-zsh.sh
unsetopt correct_all

zrcl="$HOME/.zshrc.local"
[[ ! -a $zrcl ]] || source $zrcl

# Tmux Powerline
# PS1="$PS1"'$([ -n "$TMUX" ] && tmux setenv TMUXPWD_$(tmux display -p "#D" | tr -d %) "$PWD")'
#PROMPT="$PS1"'$([ -n "$TMUX" ] && tmux setenv TMUXPWD_$(tmux display -p "#D" | tr -d %) "$PWD")'

source ~/.profile
export PATH=/usr/local/sbin:$PATH

# todo.txt - this needs to be installed still
export PATH=$PATH:"/opt/boxen/homebrew/Cellar/todo-txt/2.10/bin"

export PATH="/opt/boxen/rbenv/bin:$PATH"
eval "$(rbenv init -)"