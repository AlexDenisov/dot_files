ZSH_THEME="muse"
alias zshconfig="vim ~/.zshrc"
DISABLE_AUTO_UPDATE="true"
plugins=(git rvm ruby pod)
source $ZSH/oh-my-zsh.sh

export PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin

export PATH=/usr/local/Cellar/subversion/1.7.7/bin/:$PATH

. ~/.dotfiles/aliases

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

rvm use 1.9.3 > /dev/null

export EDITOR=vim

zstyle ':completion:*' accept-exact '*(N)'
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/cache

export PAGER="most"

