# Reload Completion Functions in ~/.oh-my-zsh/custom/completions

rcf() {
  local f
  # f=(~/.oh-my-zsh/custom/completions/*(.))
  f=(~/.oh-my-zsh/custom/completions/*)
  unfunction $f:t 2> /dev/null
  autoload -U $f:t
}


echoerr() {
    echo $@ 1>&2
}

fmod() { 
    setopt local_options extended_glob
    r=()
    agespec=$1
    shift
    for f in "$@"; do
        #print -l -- ">>$f<<"
        #r=($r $f(Ne:age $agespec:))
        r=($f(Ne:age $agespec:))
        (($#r)) && print -l $r
    done
    #print -l $r
}

# Toggle deadkey
tdk() {
    xmodmap -pke |grep \ 35\ =\ dead_diaeresis &>/dev/null \
    && xmodmap -e 'keycode  35 = asciitilde asciicircum diaeresis asciicircum diaeresis macron asciitilde'  && echo 'deadkey off' \
    || ( xmodmap -e 'keycode 35 = dead_diaeresis dead_circumflex dead_diaeresis dead_circumflex dead_tilde dead_caron dead_tilde' && echo deadkey on )
}

source_keychain() {
    /usr/bin/keychain -q $(print $HOME/.ssh/id_*~*pub*)
    source $HOME/.keychain/${HOST}-sh
}
