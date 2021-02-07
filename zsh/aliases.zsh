#!/usr/bin/env zsh
#
# ngt-zdotfiles: aliases.zsh
#

# ---------------------------------------------------------------------------
#  ::: SUFFIX ALIASES ::::::::::::::::::::::::::::::::::::::::::::::::::::::
# ---------------------------------------------------------------------------
case "${OS:=darwin}" in
    darwin)
        alias -s txt="open -t"
        alias -s php="open -t"
        ;;
    *)
        alias -s txt="vim"
        alias -s php="vim"
        ;;
esac

# ---------------------------------------------------------------------------
#  ::: PHP ALIASES :::::::::::::::::::::::::::::::::::::::::::::::::::::::::
# ---------------------------------------------------------------------------

#: php composer
if [ -x /usr/local/bin/composer ]; 
then
	alias composer="php /usr/local/bin/composer"
fi

# ---------------------------------------------------------------------------
#  ::: CLIPBOARD :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
# ---------------------------------------------------------------------------
case "${OS:=darwin}" in
    darwin)
        alias clip='pbcopy'
        #: Trim new lines and copy to clipboard
        alias ct="tr -d '\n' | pbcopy"
        ;;
    linux*)
        alias clip='xsel --clipboard'
        alias open='xdg-open'
        ;;
    cygwin*)
        alias clip='getclip'
        alias open='cygstart'
        ;;
esac

# ---------------------------------------------------------------------------
#  ::: MacOS :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
# ---------------------------------------------------------------------------
if [ $IS_MAC ]; 
then  
    # sleep
    alias gn8="sudo pmset sleep 20"

    # start screensaver
    alias startscreensaver="/System/Library/CoreServices/ScreenSaverEngine.app/Contents/MacOS/ScreenSaverEngine"

    # suspend session
    alias afk="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"

    # Show/hide hidden files in Finder
	alias showdotfiles="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
	alias hidedotfiles="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

	# show/hide desktop icons
	alias showdeskicons="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"
	alias hidedeskicons="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"

    # Mute/Unmute the system volume. Plays nice with all other volume settings.
    alias mute="osascript -e 'set volume output muted true'"
    alias unmute="osascript -e 'set volume output muted false'"

    # Get OS X Software Updates, and update installed Ruby gems, Homebrew, and their installed packages
    #alias update='sudo softwareupdate -i -a; brew update; brew upgrade; brew cleanup; sudo gem update --system; sudo gem update'

    # Empty the Trash on all mounted volumes and the main HDD
    # Also, clear Apple’s System Logs to improve shell startup speed
    alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl"

    #: Find memory hogs
    alias cpu_hogs='ps wwaxr -o pid,stat,%cpu,time,command | head -10'
    alias memory_hogs_ps='ps wwaxm -o pid,stat,vsize,rss,time,command | head -10'
    alias memory_hogs_top='top -l 1 -o rsize | head -20'
fi

# ---------------------------------------------------------------------------
#  ::: PACKAGE-MANAGER :::::::::::::::::::::::::::::::::::::::::::::::::::::
# ---------------------------------------------------------------------------
if [ $IS_MAC ]; 
then
    if [ -x /usr/local/bin/brew ]; 
    then
        alias apti='brew install'
        alias aptii='brew install -y'
        alias aptu='brew -v selfupdate'
        alias aptuu='brew -v upgrade'
        alias aptua='brew -v upgrade all'
        alias aptr='brew uninstall'
        alias aptp='brew clean --all'
        alias aptl='brew list'
        alias aptt='brew test'
        alias aptc='brew configure'
        alias aptd='brew fetch'
        alias apts='brew search'
        alias brew='brew'
    fi
elif [ $IS_LINUX ]; 
then
    alias installed_packages='dpkg -l'                  # list all installed packets
    alias is_installed='dpkg -l | grep'                 # show if a package is installed
    alias edit_sources='sudo vi /etc/apt/sources.list'  # edit sources.list

    if [ -x /usr/bin/aptitude ]; 
    then
        #: aptitude
        alias apti='sudo aptitude install'
        alias aptii='sudo aptitude install -y'
        alias aptu='sudo aptitude update'
        alias aptuu='sudo aptitude safe-upgrade'
        alias aptr='sudo aptitude remove'
        alias aptp='sudo aptitude purge'
        alias aptd='sudo aptitude download'
        alias apts='aptitude search'
    else
        #: apt-get
        alias apti='sudo apt-get install'
        alias aptii='sudo apt-get install -y'
        alias aptu='sudo apt-get update'
        alias aptuu='sudo apt-get upgrade'
        alias aptr='sudo apt-get remove'
        alias aptp='sudo apt-get purge'
        alias aptd='sudo apt-get download'
        alias apts='apt-cache search'
    fi
fi

# ---------------------------------------------------------------------------
#  ::: SHELL-FUN :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
# ---------------------------------------------------------------------------
if [ $IS_MAC ]; 
then
	# Look busy
	alias busy='cat /dev/urandom | hexdump -C | grep "ca fe"'

	# Star Wars
	alias starwars='telnet towel.blinkenlights.nl'

	# tron
	alias tron='ssh sshtron.zachlatta.com'

	# rickroll
	alias roll='curl -s -L http://bit.ly/10hA8iC | bash'
fi

# ---------------------------------------------------------------------------
#  ::: TYPOS :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
# ---------------------------------------------------------------------------
alias xs='cd'
alias vf='cd'
alias moer='more'
alias moew='more'
alias kk='ll'
alias pdw='pwd'
alias mroe='more'
alias öö='ll'
alias ööo='ll'
alias ää='ll'
alias äää='ll'
alias mroe='more'
alias sl="ls ${LS_OPTIONS}"

