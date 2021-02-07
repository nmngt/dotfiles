#: load colors
autoload -U colors && colors

#: enable colored output from ls, etc. on FreeBSD-based systems
export CLICOLOR=1

#: "human readable" colors
for COLOR in red green yellow blue magenta cyan black white; do
    eval $COLOR='%{$fg_no_bold[${(L)COLOR}]%}'  #wrap colours between %{ %} to avoid weird gaps in autocomplete
    eval BOLD_$COLOR='%{$fg_bold[${(L)COLOR}]%}'
done
eval RESET='%{$reset_color%}'

