export ZSH=$HOME/.oh-my-zsh

export EDITOR=vim

export NVM_DIR=~/.nvm

# Set name of the theme to load.
ZSH_THEME="amuse"

# Would you like to use another custom folder than $ZSH/custom?
ZSH_CUSTOM=$HOME/.zsh_custom

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(git archlinux)

source $ZSH/oh-my-zsh.sh

[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
# nvm alias stable 4.2.6
#nvm use 9.2.0


case "$OSTYPE" in
  "linux-gnu")
    path=(~/.nvm/versions/node/v9.2.0/bin /usr/local/sbin /usr/local/bin /usr/bin /opt/java/bin /opt/java/db/bin /opt/java/jre/bin /usr/bin/core_perl ~/.gem/ruby/2.5.0/bin $path)
    alias open=nemo

    alias xclip='xclip -selection clipboard'

    ;;

  "darwin"*)
    path=(~/.nvm/versions/node/v4.2.6/bin /usr/local/bin /usr/bin /bin /usr/sbin /sbin $path)
    alias restart='sudo shutdown -r now'

    # Enables bluetooth
    alias enable-bluetooth='sudo rm -rf Library/Preferences/com.apple.Bluetooth.plist && sudo restart'
    export LC_ALL=en_US.UTF-8
    export LANG=en_US.UTF-8
    ;;
esac


# Add all --untracked and commit
alias gaac='gaa && gc'
alias gstas='git stash save'
alias gstd='gstl'


# VIm mode on zsh
bindkey -v
# autoload -U up-line-or-beginning-search
# autoload -U down-line-or-beginning-search
#zle -N up-line-or-beginning-search
#zle -N down-line-or-beginning-search

# bindkey -v
bindkey "^[OA" up-line-or-beginning-search
bindkey "^[OB" down-line-or-beginning-search
stty -ixon
# bindkey "^[[A" history-beginning-search-backward
# bindkey "^[[B" history-beginning-search-forward

alias mux='tmuxinator'

export PATH="$HOME/.yarn/bin:$PATH"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
