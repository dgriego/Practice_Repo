#Bash Profile

export DYLD_LIBRARY_PATH="/usr/local/mysql/lib:$DYLD_LIBRARY_PATH"
export PATH=~/bin:~/.rvm/bin:$PATH
export EDITOR='subl -w'
PATH=${PATH}:/usr/local/mysql/bin


alias mysqladmin=/usr/local/mysql/bin/mysqladmin
alias fe="cd ~/src/slippery/feeds"
alias desk="cd ~/Desktop"
alias src="cd ~/src"
alias prep="cd ~/Desktop/prep"

function gll() { grep -C 2 -i "$1" ~/src/slippery/feeds/*.xml | egrep '<(name|component)'; }
function ogll() { grep -C 2 -i "$1" ~/Downloads/*.xml | egrep -i '<(name|component)'; }
function hll() { grep -i "$1" ~/Desktop/TA/*.csv | egrep -o -h -m1 "Matched|Updated"; }
function sll() { grep -C 1 -i "$1" ~/Downloads/FeedImport*/*.csv | egrep -o -m1 "Matched|Updated"; }
function cll() { grep -C 1 -i "$1" ~/Downloads/hotel_list_jackrabbit(1).csv }

function start_apache() { echo Starting Apache httpd; sudo /opt/local/apache2/bin/apachectl start; }
function stop_apache()  { echo Stopping Apache httpd; sudo /opt/local/apache2/bin/apachectl stop; }

function start_mysql() { echo Starting MySQL; sudo /usr/local/mysql/bin/mysqld_safe & }
function stop_mysql()  { echo Stopping MySQL; sudo /usr/local/mysql/bin/mysqladmin shutdown; }

function start_redis() { echo Starting Redis; sudo redis-server /opt/local/etc/redis.conf & }
function stop_redis()  { echo Stopping Redis; sudo killall "redis-server"; }

function start_memcache() { echo Starting Memcache; /usr/bin/memcached & }
function stop_memcache()  { echo Stopping Memcache; sudo killall "memcached"; }

function dev_status {
    echo Apache: `ps aux | grep "httpd" | grep -v grep | wc -l`;
    echo MySQL: `ps aux | grep "mysqld" | grep -v grep | wc -l`;
    echo Redis: `ps aux | grep "redis-server" | grep -v grep | wc -l`;
    echo MemCache: `ps aux | grep "memcached" | grep -v grep | wc -l`;
}

function start_all() {
    start_apache
    start_mysql
    start_redis
    start_memcache
}

function stop_all() {
    stop_apache
    stop_mysql
    stop_redis
    stop_memcache
}

function restart_pow()
{
  lsof | grep 20560 | awk '{print $2}' | xargs kill -9
  launchctl unload ~/Library/LaunchAgents/cx.pow.powd.plist
  launchctl load ~/Library/LaunchAgents/cx.pow.powd.plist
}



[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm

source ~/.profile

export DEVELOPER_DIR="/Applications/Xcode.app/Contents/Developer"

#end of bash_profile stuff



# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="af-magic"

# Example aliases
  alias zsh="subl ~/.zshrc"
  alias ozsh="subl ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

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
plugins=(git)


source $ZSH/oh-my-zsh.sh

# Customize to your needs...
