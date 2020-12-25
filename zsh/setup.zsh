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

if  which pyenv > /dev/null; then
    eval "$(pyenv init -)"
fi;
