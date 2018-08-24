# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH=/home/goldameir/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME=robbyrussell
ZSH_THEME="bullet-train"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

#BULLETTRAIN_PROMPT_ORDER=(
#	git
#	context
#	dir
#	time
#)

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Custom configurations

export JAVA_HOME=/usr/lib/jvm/java-9-oracle
export TERM="xterm-256color"
export EDITOR=vim

if ! [[ $PATH =~ "/home/goldameir/.pythonrc/bin" ]]
then
  export PATH="/home/goldameir/.pythonrc/bin:$PATH"
fi

if ! [[ $PATH =~ "/home/goldameir/Garbage" ]]
then
  export PATH="/home/goldameir/Garbage:$PATH"
fi

venvwrap="virtualenvwrapper.sh"
which $venvwrap > /dev/null
if [ $? -eq 0 ]; then
	venvwrap=`/usr/bin/which $venvwrap` > /dev/null
	source $venvwrap > /dev/null
fi

# Dart path
export PATH="/usr/lib/dart/bin:$PATH"

# Extras
neofetch| grep Uptime | sed -e 's/\(.*43C\)\{1\}//g'
cat /home/goldameir/Garbage/currency-prices.txt
cat /home/goldameir/Garbage/tamil-panchang.txt

git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

# Aliases
f() { gedit "$@" &; }
endorse() { echo Congratulations, $1! You\'ve been successfully endorsed for $3 $4. }

alias sudo='sudo '
alias gedit=f
alias emsdk=~/Downloads/emsdk-portable/emsdk
alias F="echo 'Respects have been paid.'"
alias Shannon-Nyquist="echo 'If a function x(t) contains no frequencies higher than B hertz, it is completely determined by giving its ordinates at a series of points spaced 1/(2B) seconds apart.'"
alias clera='clear'
alias scheme='mit-scheme'
alias scm='scheme'

# Directories
alias tibetan='/home/goldameir/Documents/school/tibetan'
alias cs61b='/home/goldameir/Documents/school/cs61b/labs/lab01/'
alias Garbage='/home/goldameir/Garbage'
alias cs61a='/home/goldameir/Documents/school/17-fall/cs61a'
alias landships='/home/goldameir/Downloads/Unity-Linux-2017.2.0b11/unity-editor-2017.2.0b11/Projects'

# Virtualenv
alias workoff='deactivate'
alias mkvirtualenv='mkvirtualenv --python=python3'

# Ethereum
alias geth-rinkeby='geth --rinkeby --syncmode "fast" --datadir=devchain --rpc --rpccorsdomain "*" --rpcapi "eth,web3,personal,net,miner,admin,debug" --verbosity 0 console'
alias ganache-cli="./node_modules/.bin/ganache-cli"
alias solc="./node_modules/.bin/solcjs"
alias truffle='./node_modules/.bin/truffle'

# Jython
alias jython="java -jar /home/goldameir/Garbage/jython/jython.jar"
alias jip="/home/goldameir/Garbage/jython/bin/pip"

# thefuck
eval $(thefuck --alias)

