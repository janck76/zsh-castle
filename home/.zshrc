# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

#export TERM=rxvt-unicode-256color
eval `tset -s rxvt-unicode-256color`

export RECOLL_CONFDIR=$HOME/.recoll

export MYGIT=git@github.com:janck76/

export RUBYLIB=.:./lib


# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"
#ZSH_THEME="agnoster"
#ZSH_THEME="norm"
#ZSH_THEME="pygmalion"
#ZSH_THEME="pure"
[[ -f ~/.zshrc_theme ]] && source ~/.zshrc_theme

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to disable command auto-correction.
# DISABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(vi-mode tmux zsh-syntax-highlighting archlinux)

source $ZSH/oh-my-zsh.sh

# User configuration


export PATH=$HOME/.gem/ruby/2.2.0/bin:$HOME/bin:$HOME/scripts:/usr/local/bin:$PATH
# export MANPATH="/usr/local/man:$MANPATH"
export CDPATH=~

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi
export EDITOR='vim'

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"
#


export DEFAULT_USER=$USER


# tmux
# ZSH_TMUX_AUTOSTART: Automatically start a tmux session upon logging in. Set to false by default.
# 
# ZSH_TMUX_AUTOSTART_ONCE: Only attempt to autostart tmux once. If this is disabled when the previous option is enabled, then tmux will be autostarted every time you source your zsh config files. Set to true by default.
# 
# ZSH_TMUX_AUTOCONNECT: When running tmux automatically connect to the currently running tmux session if it exits, otherwise start a new session. Set to true by default.
ZSH_TMUX_AUTOCONNECT=true
# 
# ZSH_TMUX_AUTOQUIT: Close the terminal session when tmux exits. Set to the value of ZSH_TMUX_AUTOSTART by default.
# 
# ZSH_TMUX_FIXTERM: When running tmux, the variable $TERM is supposed to be set to screen or one of its derivatives. This option will set the default-terminal option of tmux to screen-256color if 256 color terminal support is detected, and screen otherwise. The term values it uses can be overridden by changing the ZSH_TMUX_FIXTERM_WITH_256COLOR and ZSH_TMUX_FIXTERM_WITHOUT_256COLOR variables respectively. Set to true by default.#
# 

# Better help, se man zshcontrib (Accessing On-Line Help)
#unalias run-help
autoload -U run-help
HELPDIR=~/zsh-help

# Key bindings (testet i urxvt), man zshzle for mer info
#
#

# sjekk om kommando er bundet
bindkey '\ex' where-is
# Get help on a command
bindkey '\eh' run-help
# Esc+Ins
bindkey '\e[2~' overwrite-mode
# Esc+Home
bindkey '\e[7~' beginning-of-history
# Esc+End
bindkey '\e[8~' end-of-history
# Esc+Return, "linjeskift" på kommandolinjen
bindkey '\e^M'  self-insert-unmeta
# Ekspander history (!!) automatisk ved space
bindkey " " magic-space
# Repeter forrige kommando, søk og erstatt: $ <word><TAB><CTRL+X>c
bindkey -s '^xc' '\^¦\eI\^\t\e\$F¦xi'
#bindkey -s '^xc' '\t\^¦\eI\^\t\e\$F¦xi'
# Eks, erstatt arg2  (* cursor pos)
# $ echo arg1 arg2 arg3
# $ arg1 arg3 arg3
# $ !:2<CTRL+x>c
# $ echo arg1 * arg3

# Åpne kommandolinje i editor
bindkey '\ee' edit-command-line

# Handling lots of matches
zmodload zsh/complist
zstyle ':completion:*:default' list-prompt '%S%M matches%s'
bindkey -M listscroll q send-break

# Aksepter menyvalg med CTRL+o, men forbli i menyen etter valg:
bindkey -M menuselect '\C-o' accept-and-menu-complete

# 
setopt interactive_comments



# put new dir on the dirstck with cd or auto_cd
setopt auto_pushd
# dir is never put more than once on the stack
setopt pushd_ignore_dups

setopt extended_glob

# Nyttige rc shell opsjoner
setopt -o rc_expand_param

setopt -o rc_quotes # Tillat quoting vha '', ekse echo 'hello ''world'''


# Autoload functions
#autoload zmv
#autoload -U age


# Load modules
#zmodload zsh/stat

# Disable deadkey (^¨~), and make ~ default
if [[ $DISPLAY =~ :0 ]]; then
    setxkbmap no
    xmodmap -e 'keycode  35 = asciitilde asciicircum diaeresis asciicircum diaeresis macron asciitilde'
fi

[[ -f ~/.zshrc_local ]] && source ~/.zshrc_local

unset GREP_OPTIONS
