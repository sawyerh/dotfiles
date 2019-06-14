# load SSH keys from the start so you don't have to add them on each reboot.
# (https://github.com/jirsbek/SSH-keys-in-macOS-Sierra-keychain/issues/2)
/usr/bin/ssh-add -A &> /dev/null

if  which brew > /dev/null; then
    # Load zsh-autosuggestions
    # https://github.com/zsh-users/zsh-autosuggestions
    autosuggestionsPath="$(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh"
    [ -s $autosuggestionsPath ] && source $autosuggestionsPath
    
    # zsh-syntax-highlighting.zsh wraps ZLE widgets. It must be sourced after all
    # custom widgets have been created
    syntaxHighlightingPath="$(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
    [ -s $syntaxHighlightingPath ] && source $syntaxHighlightingPath
fi;
