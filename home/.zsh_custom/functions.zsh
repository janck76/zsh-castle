# Reload Completion Functions in ~/.oh-my-zsh/custom/completions
genpasswd() {
	l=$1
    [[ "$l"=="" ]] && l=16
    tr -dc A-Za-z0-9_ < /dev/urandom | head -c ${l} | xargs
}

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
    /usr/bin/keychain --systemd -q $(print $HOME/.ssh/id_*~*pub*)
    source $HOME/.keychain/${HOST}-sh
}

# ------------------------------------
# Docker functions
# ------------------------------------

# Stop all containers
dstop() { docker stop $(docker ps -a -q); }

# Remove all containers
drm() { docker rm $(docker ps -a -q); }

# Remove all images
dri() { docker rmi $(docker images -q); }

# Dockerfile build, e.g., $dbu tcnksm/test 
dbu() { docker build -t=0.89€ .; }

# Show all alias related docker
dalias() { alias | grep 'docker' | sed "s/^\([^=]*\)=\(.*\)/\1 => \2/"| sed "s/['|\']//g" | sort; }
