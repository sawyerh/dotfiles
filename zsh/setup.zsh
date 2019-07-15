# Need this for Azure CLI bash completions
# https://github.com/Azure/azure-cli/issues/1722#issuecomment-370205593
autoload bashcompinit && bashcompinit

if  which brew > /dev/null; then
    # Load Azure CLI completions
    azCompletions="$(brew --prefix)/etc/bash_completion.d/az"
    [ -s $azCompletions ] && source $azCompletions

    # Load zsh-autosuggestions
    # https://github.com/zsh-users/zsh-autosuggestions
    autosuggestionsPath="$(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh"
    [ -s $autosuggestionsPath ] && source $autosuggestionsPath

    # zsh-syntax-highlighting.zsh wraps ZLE widgets. It must be sourced after all
    # custom widgets have been created
    syntaxHighlightingPath="$(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
    [ -s $syntaxHighlightingPath ] && source $syntaxHighlightingPath
fi;
