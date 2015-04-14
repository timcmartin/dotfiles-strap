# Convenience Commands
alias propane_font='vi +49 /Users/randland/Library/Application\ Support/Propane/styles/cf_chat.css'
alias hosts='sudo vi /etc/hosts'
alias pizza='be slice -a thin'
alias cain='be slice -a thin candidate'

# Bash Commands
alias bashedit='vi ~/.bash_aliases'
alias callme='sudo su -'
alias m.='mate .'
alias m=mate
alias please=sudo
alias psack='ps aux | ack'
alias psgrep='ps aux | grep'
alias rebash='START_DIR=`pwd`;cd ..;source ~/.bash_aliases;cd $START_DIR; c; l'
alias v='vim'
alias v.='vim .'
alias vimupdate='cd ~/.vimbundles;find . -maxdepth 1 -type d -exec sh -c "'"(cd {} && git pull)"'" "'";"'"'

# Pickler Commands
alias curtest='cr cucumber FEATURE=$CURTEST'
alias curpush='pickler push $CURTEST'
alias curpull='pickler pull $CURTEST'
alias curstart='pickler start $CURTEST'
alias curfinish='pickler finish $CURTEST'
alias curdeliver='pickler deliver $CURTEST'
alias curspec='rspec $CURSPEC'

# Directory Navigation
alias ...='cd ../..'
alias ..='cd ..'
alias ::='cd ../..'
alias :::='cd ../../..'
alias ::::='cd ../../../..'
alias :::::='cd ../../../../..'
alias ~='cd ~'
alias b='cd -'
alias c=clear
alias d='ls -bF'
alias l='ls -aFG'
alias ll='l -l'
alias ls="ls -G"
alias la='ls -A'

# Git Commands
alias g='git'
alias gac='git add . -A && git commit'
alias gadd='git add .'
alias gap='git add -p'
alias gbr='git branch'
alias gbra='git branch -a'
alias gc='git commit'
alias gci='git commit -am'
alias gcl='git clone'
alias gco='git checkout'
alias gd='git diff'
alias gdel='git add -u'
alias gdf='clear; git diff -a -w'
alias gf='git flow'
alias gfull='clear; git status; git add .; git add -u; echo "****************"; git status; git ci -am'
alias gl='git pull'
alias glog='clear; git log'
alias gfl='git log -u'
alias gwho='git shortlog -s --'
alias gme='git merge --no-ff'
alias gmv='git mv'
alias gp='git push'
alias gpull='git pull'
alias gpush='git push'
alias greset='git reset --hard HEAD && git clean -fd'
alias grm='git rm'
alias gst='git status'
alias gtr="git tr"
alias gtree="git tree"
alias gtrim="sed -i '' -e 's/[[:space:]]*$//g'"
alias viuntracked='vi $(git ls-files -o -X .gitignore)'
alias glastfive="git reflog | egrep -io \"moving from ([^[:space:]]+)\" | awk '{ print $3 }' | head -n5"

# Gem Commands
alias audit='gem list'
alias buy='gem install'
alias polish='gem update'
alias price='gem list -r'
alias recut='gem edit -e mvim'
alias sell='gem uninstall'
alias shop='gem search -r'
alias surplus='gem list | ack ","'

# Rails Commands
alias cr='c; yn rake'
alias deploy='cap_deploy.sh'
alias mysqlup='mysql.server start'
alias mysqldown='mysql.server stop'
alias pgup='pg_ctl -w -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias pgdown='pg_ctl -D /usr/local/var/postgres stop -s -m fast'
alias redisup='redis-server /usr/local/etc/redis.conf'
alias rakedbtestkill='RAILS_ENV=test rake db:drop && RAILS_ENV=test rake db:create && rake db:test:prepare'
alias rb='ruby'
alias testenv='RAILS_ENV=test'

function rails_command {
  local cmd=$1
  shift
  if [ -e script/rails ]; then
    echo "script/rails $cmd \"$@\""
    script/rails $cmd "$@"
  else
    echo "script/$cmd \"$@\""
    script/$cmd "$@"
  fi
}
function ss {
  rails_command "server" "$@"
}
function sc {
  rails_command "console" "$@"
}
function sg {
  rails_command "generate" "$@"
}
function sr {
  rails_command "runner" "$@"
}
function sdb {
  rails_command "dbconsole" "$@"
}

# Bundle Commands
alias be='bundle exec'
alias becr='c; yn bundle exec rake'
alias berake='bundle exec rake'

function bundle_command {
  local cmd=$1
  shift
  if [ -e script/rails ]; then
    echo "bundle exec script/rails $cmd \"$@\""
    script/rails $cmd "$@"
  else
    echo "bundle exec script/$cmd \"$@\""
    script/$cmd "$@"
  fi
}
function bess {
  bundle_command "server" "$@"
}
function besc {
  bundle_command "console" "$@"
}
function besg {
  bundle_command "generate" "$@"
}
function besr {
  bundle_command "runner" "$@"
}
function besdb {
  bundle_command "dbconsole" "$@"
}

alias unhitch='hitch -u'

# Finicky Local MySQL - need to test
# TODO - Not working
# export MYSQL_HOME=/usr/local/mysql
# alias start_mysql='sudo $MYSQL_HOME/bin/mysqld_safe &'
# alias stop_mysql='sudo $MYSQL_HOME/bin/mysqladmin shutdown'

#bind 'set bind-tty-special-chars off'

[ ! -f "$HOME/.bash_aliases.local" ] || . "$HOME/.bash_aliases.local"

# Alias for the TODO plugin
alias t='todo.sh -d ~/.todo.cfg'

# iStock Memcache
alias memcache='echo "flush_all" | nc 127.0.0.1 11211'

# Edit Work Site
alias devwork='vim ~/www/work/wwwroot/index.php'

# Empty iStock Log
alias istocklog='echo : > /Users/tmartin/Code/Getty/istock/codebase/timlog'

# Tail istocklog
alias timlog='tail -f /Users/tmartin/Code/Getty/istock/codebase/timlog'

# start postgres
alias postgres='/Applications/Postgres.app/Contents/Versions/9.3/bin/psql -p5432'

# reset memcache
alias reset-memcache='memcached -u memcached -d -m 30 -l 127.0.0.1 -p 11211'

# cd to wurstwings codebase
alias wurstwings='cd ~/Code/wurstwings'

# start wurstwings redis
alias wwredis='redis-server /usr/local/etc/redis.conf'

# personal: cd dotfiles
alias dotfiles='cd ~/Dotfiles'

# personal: cd code
alias mycode='cd ~/Code'

# six safety: cd api
alias api='cd ~/src/api'

# six safety: cd ui
alias ui='cd ~/src/ui'

# six safety boxen repo: cd repo
alias ourboxen='cd /opt/boxen/repo'

# update submodules
alias updatesubs='git submodule foreach --recursive git fetch'

# tail API-Sandbox log
alias tailapi='cx tail -s "API-Sandbox" -e staging Dove staging.log'

# tail UI-Sandbox log
alias tailui='cx tail -s "UI-Sandbox" -e staging Dolphin staging.log'

# ssh API-Sandbox
alias sshapi='cx ssh -s "API-Sandbox" -e staging Dove'

# ssh UI-Sandbox
alias sshui='cx ssh -s "UI-Sandbox" -e staging Dolphin'

# Start Redis
# Use redisup

# Shutdown Redis
alias redisstop='redis-cli shutdown'

# Clear Logs
alias clearlogs='rake log:clear'
