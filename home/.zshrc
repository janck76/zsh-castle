#export TERM=rxvt-unicode-256color
eval `tset -s rxvt-unicode-256color`

export RECOLL_CONFDIR=$HOME/.recoll

# Ikke støttet av rvm
# export RUBYLIB=.:./lib

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Git
export MYGIT=git@github.com:janck76/
export OMM='origin/master..master'
export MOM='master..origin/master'
export OM='origin/master'

# oh-my-zsh vars

COMPLETION_WAITING_DOTS="true"
# --------------
# antigen
# https://github.com/zsh-users/antigen
# 
# Commands
# update
# revert
# selfupdate
# bundle
# bundles
# list
# cleanup
# use
# theme
# apply
# snapshot
# restore
# :w

source $HOME/git/antigen/antigen.zsh

antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundles <<EOFBUNDLE
archlinux
command-not-found
git
systemd
tmux
tmuxinator
vi-mode
zsh_reload
per-directory-history
EOFBUNDLE

# Per directory history, use CTRL+G to toggle between global and per-directory history

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Additional completion definitions for Zsh.
antigen bundle zsh-users/zsh-completions src 

# Load the theme.
if [[ $(id -u) -eq 0 ]]; then
    antigen theme funky
else
    antigen theme robbyrussell
fi

# Custom stuff
antigen bundle $HOME/.zsh_custom
antigen bundle $HOME/.zsh_custom/completions

# Tell antigen that you're done.
antigen apply


# User configuration
[[ -z "$PERL_MB_OPT" ]] && eval "$(perl -I$HOME/perl5/lib/perl5 -Mlocal::lib)"

[[ -z $PATH_ORIG ]] && export PATH_ORIG=$PATH

#if [[ ! $PATH =~ ".*$HOME/.rvm/bin:.*" ]]; then
export PATH=$HOME/.npm-global/bin:$HOME/perl5/bin:$HOME/git/git-hooks:$HOME/bin:$HOME/scripts::$PATH_ORIG
#fi

#[[ ! $PATH =~ ".*$HOME/perl5/bin:.*" ]] && export PATH=$HOME/perl5/bin:$PATH

#echo $PATH

#export PATH=$HOME/.npm-global/bin:$HOME/git/git-hooks:$HOME/.gem/ruby/2.2.0/bin:$HOME/bin:$HOME/scripts:/usr/local/bin:$PATH
# export MANPATH="/usr/local/man:$MANPATH"
export CDPATH=~:/

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

# Custom completion dir
fpath=($HOME/.zsh_custom/completions $fpath)

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
if [[ $DISPLAY =~ :[0123456789] ]]; then
    setxkbmap no -v nodeadkeys &>/dev/null
    xmodmap -e 'keycode  35 = asciitilde asciicircum diaeresis asciicircum diaeresis macron asciitilde'
fi

# Remember the dirstack last visited folders
# put new dir on the dirstck with cd or auto_cd
setopt auto_pushd pushdsilent pushdtohome 

# Remove duplicate enries
setopt pushdignoredups

# Reverts the +/- operators
setopt pushdminus

DIRSTACKFILE="$HOME/.cache/zsh/dirs"
[[ -d $DIRSTACKFILE/.. ]] || mkdir -p ${DIRSTACKFILE:s/dirs//}
if [[ -f $DIRSTACKFILE ]] && [[ $#dirstack -eq 0 ]]; then
  dirstack=( ${(f)"$(< $DIRSTACKFILE)"} )
  # [[ -d $dirstack[1] ]] && cd $dirstack[1]
  # Av en eller anne grunn kommer $HOME med 2 ganger i dirstack
  # Fix:
  popd $HOME
  #[[ $SHLVL < 5 ]] && cd $HOME
fi
chpwd() {
  print -l $PWD ${(u)dirstack} >$DIRSTACKFILE
}

DIRSTACKSIZE=20

[[ -f ~/.zshrc_local ]] && source ~/.zshrc_local

unset GREP_OPTIONS
unset LESS

#eval "$(perl -I$HOME/perl5/lib/perl5 -Mlocal::lib)"
