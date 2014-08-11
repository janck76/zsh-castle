# Reload Completion Functions in ~/.oh-my-zsh/completions

rcf() {
  local f
  f=(~/.oh-my-zsh/completions/*(.))
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

