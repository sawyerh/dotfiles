local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )"
PROMPT='%{$fg_bold[green]%}%c%{$reset_color%} ${ret_status}%{$reset_color%} '

# Configure color of the autosuggestions
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=239"