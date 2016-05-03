# Set name of the theme to load.
ZSH_THEME="amuse"

# Would you like to use another custom folder than $ZSH/custom?
ZSH_CUSTOM=$HOME/.zsh_custom

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(git archlinux)

source $ZSH/oh-my-zsh.sh

[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm


case "$OSTYPE" in
  "linux-gnu")
    path=(~/.nvm/versions/node/v4.2.6/bin /usr/local/sbin /usr/local/bin /usr/bin /opt/java/bin /opt/java/db/bin /opt/java/jre/bin /usr/bin/core_perl $HOME/.rbenv/bin $path)
    alias open=nemo

    # Rbenv
    if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
    eval "$(rbenv init -)"
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
