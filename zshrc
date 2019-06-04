# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH="/home/lane/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="random"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
ZSH_THEME_RANDOM_CANDIDATES=( 
"af-magic"
"alanpeabody"
"amuse"
"avit"
"awesomepanda"
"bureau"
"clean"
"crunch"
"cypher"
"daveverwer"
"dieter"
"dpoggi"
"dstufft"
"dst"
"eastwood"
"edvardm"
"essembeh"
"evan"
"fishy"
"flazz"
"fletcherm"
"frisk"
"frontcube"
"fwalch"
"gallifrey"
"gallois"
"garyblessington"
"gentoo"
"gnzh"
"gozilla"
"half-life"
"imajes"
"intheloop"
"jaischeema"
"jbergantine"
"jispwoso"
"jnrowe"
"josh"
"jreese"
"jtriley"
"juanghurtado"
"kardan"
"kennethreitz"
"kolo"
"kphoen"
"lambda"
"lukerandall"
"macovsky-ruby"
"macovsky"
"maran"
"mgutz"
"mh"
"michelebologna"
"minimal"
"muse"
"nebirhos"
"nicoulaj"
"norm"
"peepcode"
"pmcgee"
"pure"
"pygmalion"
"re5et"
"refined"
"rgm"
"risto"
"rixius"
"sammy"
"simple"
"skaro"
"sonicradish"
"sorin"
"sporty_256"
"steeef"
"sunak"
"sunrise"
"takashiyoshida"
"terminalparty"
"theunraveler"
"tjkirch_mod"
"tjkirch"
"tonotdo"
"wedisagree"
"wezm"
"wezm+"
"wuffers"
"ys"
"zhann"
)

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias ls='ls -lh --color=tty'
alias lsd='ls -lh --color=tty -d'
alias cl='clear'
alias du='du -d1 -h'
alias df='df -h'
alias free='free -hw'
alias cpu='lscpu'
alias rm='echo sudo rm '

umask 022

export PATH="/home/lane/Apps/miniconda3/bin:$PATH"
