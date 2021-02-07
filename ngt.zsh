# ---------------------------------------------------------------------------
#  ::: DOTFILES / ngt.zsh ::::::::::::::::::::::::::::::::::::::::::::::::::
# ---------------------------------------------------------------------------

NGT_VERSION="0.0.1"
NGT_LOGFILE=${NGT_LOGFILE:-${NGT}/ngt.log}

NGT_REPOSITORY=${NGT_REPOSITORY:-nmngt/ngt-zdotfiles}
NGT_ORIGIN=${NGT_ORIGIN:-https://github.com/${NGT_REPOSITORY}.git}
NGT_BRANCH=${NGT_BRANCH:-main}

#: propaganda
NGT_PROPAGANDA="Norman Georg-Tusel <norm@ngeorg.com>"
NGT_COPYRIGHT="(c) 2004-$(date +"%Y"), ${NGT_PROPAGANDA}."


#source $NGT/init.zsh
source $NGT/aliases.zsh
source $NGT/bindkey.zsh


# load functions
# 
# @TODO: 
# Sourcing function files is not the ZSH way to load functions into shell
# I need to rewrite the whole functions part to use the ZSH functions 
# autoloader here.
# 
# read more about it:
# - https://dev.to/lukeojones/1up-your-zsh-abilities-by-autoloading-your-own-functions-2ngp
# - http://zsh.sourceforge.net/Doc/Release/Functions.html
# - https://unix.stackexchange.com/questions/33255/how-to-define-and-load-your-own-shell-function-in-zsh
# 
# Example functions file: 
# - https://sourceforge.net/p/zsh/code/ci/master/tree/Completion/Unix/Command/_tmux 
# 
# for function_file ($NGT/functions/*.zsh); do
#     source $function_file
# done



# echo ""
# echo "${NGT_PREFIX} ngt.zsh successfully loaded ${icon[happy]}"
# echo ""

#: set NGT_ZDOTFILES_LOADED when reaching this line
if [ -z "$NGT_ZDOTFILES_LOADED" ]; 
then
    export NGT_ZDOTFILES_LOADED=1
fi
