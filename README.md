# ngt-zdotfiles

## Documentation
This repository provides my dotfiles. After using BASH for years, I've switched to ZSH now. I think it's a good time to get rid of all the stuff cluttering my shell for years :) 

ps. I store every link or information about dotfiles in this README.md too. Maybe I add more functionality later...

> Please DO NOT USE this dotfiles unless you know what you are doing !!

## Installation
Open the terminal application and paste the following commands:

``` bash
cd $HOME
git clone git@github.com:nmngt/dotfiles.git .dotfiles

echo "ZDOTDIR=$HOME/.ngt/dotfiles" >> .zshenv
echo "source $ZDOTDIR/.zshenv" >> .zsnenv
```

## Usage
After following installation my .dotfiles would be loaded within your .zshenv and .zshrc

## ZSH Startup/Shutdown files
the zsh man pages under STARTUP/SHUTDOWN FILES section say: 

```bash
Commands  are  first  read from /etc/zshenv this cannot be overridden.
Subsequent behaviour is modified by the RCS and GLOBAL_RCS options; the
former  affects all startup files, while the second only affects global
startup files (those shown here with an path starting with  a  /).   If
one  of  the  options  is  unset  at  any point, any subsequent startup
file(s) of the corresponding type will not be read.  It is also  possi-
ble  for  a  file  in  $ZDOTDIR  to  re-enable GLOBAL_RCS. Both RCS and
GLOBAL_RCS are set by default.

Commands are then read from $ZDOTDIR/.zshenv.  If the shell is a  login
shell,  commands  are  read from /etc/zprofile and then $ZDOTDIR/.zpro-
file.  Then, if the  shell  is  interactive,  commands  are  read  from
/etc/zshrc  and then $ZDOTDIR/.zshrc.  Finally, if the shell is a login
shell, /etc/zlogin and $ZDOTDIR/.zlogin are read.

/etc/zshenv    # Read for every shell
~/.zshenv      # Read for every shell except ones started with -f
/etc/zprofile  # Global config for login shells, read before zshrc
~/.zprofile    # User config for login shells
/etc/zshrc     # Global config for interactive shells
~/.zshrc       # User config for interactive shells
/etc/zlogin    # Global config for login shells, read after zshrc
~/.zlogin      # User config for login shells
~/.zlogout     # User config for login shells, read upon logout
/etc/zlogout   # Global config for login shells, read after user logout file
```

## More Links & Infos, etc...

### more command line infos & examples
- https://github.com/jlevy/the-art-of-command-line
- https://github.com/herrbischoff/awesome-macos-command-line
- https://github.com/webpro/awesome-dotfiles
- https://www.reddit.com/r/zsh/
- https://www.reddit.com/r/commandline/

### ZSH PlugIns

#### Service-related
- https://github.com/voronkovich/apache2.plugin.zsh
- https://github.com/voronkovich/mysql.plugin.zsh

#### MacOS-related
- https://github.com/unixorn/tumult.plugin.zsh
- https://github.com/joow/macos
- https://github.com/mwilliammyers/plugin-osx
- https://github.com/zsh-users/zsh-apple-touchbar
- https://github.com/iam4x/zsh-iterm-touchbar
- https://github.com/mas-cli/mas
- 

#### Development Helper
- https://github.com/marshallmick007/osx-dev-zsh-plugin
- https://github.com/jessarcher/zsh-artisan
- https://github.com/wwilsman/zsh-clean-project
- https://github.com/zdharma/zsh-github-issues
- https://github.com/clauswitt/zsh-grunt-plugin
- https://github.com/LockonS/host-switch
- https://github.com/pfahlr/zsh_plugin_loremipsum

#### PHP related
- https://github.com/wilmoore/php-version/blob/master/README.md
- https://github.com/xellos866/php-version_rcfile-switcher
- https://github.com/voronkovich/phpcs.plugin.zsh

#### CLI Helper
- https://github.com/marzocchi/zsh-notify
- https://github.com/MichaelAquilina/zsh-you-should-use
- https://github.com/MichaelAquilina/zsh-emojis
- https://github.com/b4b4r07/emoji-cli
- https://github.com/oldratlee/hacker-quotes
- https://github.com/Czocher/gpg-crypt
- https://github.com/fALKENdk/mylocation
- https://github.com/amstrad/oh-my-matrix

#### Application related
- https://github.com/wuotr/zsh-plugin-vscode
- https://github.com/bernardop/iterm-tab-color-oh-my-zsh

#### Online Services related helpers
- https://github.com/denysdovhan/gitio-zsh

### Scripting Helper
- https://github.com/molovo/lumberjack
- https://github.com/molovo/crash
- https://github.com/molovo/revolver
- https://github.com/rocky/zshdb

### other usefull shell tools
- https://github.com/Peltoche/lsd
- https://github.com/miguelmota/cointop
- https://github.com/insanum/gcalcli
- https://hub.github.com/
- https://github.com/jarun/imgp
- https://github.com/busyloop/lolcat

## Unix porn
Follow this [subred](https://www.reddit.com/r/unixporn/) or watch some cli videos on [commandlinepoweruser.com](https://commandlinepoweruser.com/) or read [zsh-lovers](https://grml.org/zsh/zsh-lovers.html)

## Security
If you discover any security related issues, please email norm@ngeorg.com or use the issue tracker.
