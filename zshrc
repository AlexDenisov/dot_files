ZSH=~/.oh-my-zsh
ZSH_THEME="muse"
alias zshconfig="vim ~/.zshrc"
DISABLE_AUTO_UPDATE="true"
plugins=(git rbenv ruby pod gem hub)
source $ZSH/oh-my-zsh.sh

export PATH=~/.rbenv/shims:/usr/bin:/usr/local/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin
export PATH=~/.git-scripts:$PATH

. ~/.dotfiles/aliases

export EDITOR=vim

zstyle ':completion:*' accept-exact '*(N)'
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/cache

export PAGER="most"

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

export LANG=en_US 
