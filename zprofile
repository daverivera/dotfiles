alias restart='sudo shutdown -r now'

# Add all --untracked and commit
alias gaac='gaa && gc'

case "$OSTYPE" in
  "linux-gnu")
    export PATH="$PATH:/usr/local/sbin:/usr/local/bin:/usr/bin:/opt/java/bin:/opt/java/db/bin:/opt/java/jre/bin:/usr/bin/core_perl"
    alias open=nemo
    export NVM_DIR="~/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
    # Rbenv
    if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
    export PATH="$HOME/.rbenv/bin:$PATH"
    eval "$(rbenv init -)"
    ;;
  "darwin"*)
    export PATH=~/.nvm/versions/node/v4.2.6/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:${PATH} 
    # Enables bluetooth
    alias enable-bluetooth='sudo rm -rf Library/Preferences/com.apple.Bluetooth.plist && sudo restart'
    export LC_ALL=en_US.UTF-8
    export LANG=en_US.UTF-8
    ;;
esac

