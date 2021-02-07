
#export PATH="/Applications/MAMP/Library/bin/:$PATH"
export PATH=$HOME/bin:/usr/local/bin:$HOME/.composer/vendor/bin:$PATH

# path to oh-my-zsh
export ZSH="/Users/norman/.oh-my-zsh"

#: zsh config
# ZSH_THEME="mh"
ZSH_THEME="spaceship"
#ZSH_COLORIZE_TOOL=pygmentize
#ZSH_COLORIZE_STYLE="colorful"
ZSH_COLORIZE_TOOL=chroma
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="yyyy-mm-dd"

plugins=(
	brew 
	emoji 
	colored-man-pages 
	colorize 
	command-not-found 
	extract 
	git 
	gitignore 
	osx 
	systemadmin 
	wp-cli 
	zsh-z
	zsh-syntax-highlighting		# https://github.com/zsh-users/zsh-syntax-highlighting
	zsh-autosuggestions			# https://github.com/zsh-users/zsh-autosuggestions
	tumult 						# https://github.com/unixorn/tumult.plugin.zsh
	zsh-apple-touchbar 			# https://github.com/zsh-users/zsh-apple-touchbar
	you-should-use 				# https://github.com/MichaelAquilina/zsh-you-should-use
)

#
#: spaceship prompt plugins
#-> https://github.com/denysdovhan/spaceship-prompt/blob/master/docs/Options.md
#
SPACESHIP_PROMPT_ORDER=(
  time          # Time stamps section
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  #package       # Package version
  node          # Node.js section
  #xcode         # Xcode section
  #swift         # Swift section
  #golang        # Go section
  php           # PHP section
  #rust          # Rust section
  #docker        # Docker section
  #aws           # Amazon Web Services section
  gcloud        # Google Cloud Platform section
  #venv          # virtualenv section
  #pyenv         # Pyenv section
  #kubectl       # Kubectl context section
  exec_time     # Execution time
  #line_sep      # Line break
  #battery       # Battery level and status
  vi_mode       # Vi-mode indicator
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)

source $ZSH/oh-my-zsh.sh
source $NGT/ngt.zsh

# start up iTerm macOS integration
test -e "${HOME}/.iterm2_shell_integration.zsh" && \
	source "${HOME}/.iterm2_shell_integration.zsh" || true
