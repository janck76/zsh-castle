alias -- -='cd -'
alias 0='cd -0'
alias 1='cd -1'
alias uke='date +%V'
alias s='sudo'
alias cal='cal -m -3'
alias ck='echo con kolivas'
alias cpan='cpanp'
alias d='dirs -v'
alias diett='vim ~/documents/trening/diett'
alias drcd_bk='(pushd /home/janck/DRCDesigner_bk && ./DRCDesigner.bat && popd)&'
alias drcd_bk2='(pushd /home/janck/DRCDesigner_bk2 && ./DRCDesigner.bat && popd)&'
alias drcd_bk3='(pushd /home/janck/DRCDesigner_bk3 && ./DRCDesigner.bat && popd)&'
alias drcd_custom='(pushd /home/janck/DRCDesigner_custom && ./DRCDesigner.bat && popd)&'
alias drcd_flat='(pushd /home/janck/DRCDesigner_flat && ./DRCDesigner.bat && popd)&'
alias ducks='du -cksh * | sort -hr | head -11'
alias foxit='wine "/home/janck/.wine/drive_c/Program Files/Foxit Software/Foxit Phantom/Foxit Phantom.exe"'
alias gpghome='export GNUPGHOME=~/truecrypt/.gnupg'
alias l='ls -1'
alias less='less -RFX'
alias lu='ls -lU'
alias lf='ls -fl'
alias lud='ls -lUd'
alias la='ls -lah'
alias lsd='ls -fdl'
alias ll='ls -lh'
alias ls='ls --color=auto'
alias ltr='ls -ltrh'
alias lz='ls -lrhS'
alias mymux='/home/janck/scripts/urxvt_tmux.sh'
alias nasenoff='ls /net/nasenoff/c/home'
alias pacman='pacmatic'
alias p='print -l ${(s.:.)PATH}'
alias path='pwd -P'
alias pld='pkg-list_dependents'
alias pow=' sudo poweroff'
alias pp='print'
alias pto='pkg-list_true_orphans'
alias r='1'
alias rew='java -jar /home/janck/REW/RoomEQ_Wizard_obf.jar &'
alias s='sudo '
alias se='sudoedit'
alias sshk='eval $(/usr/bin/keychain --nogui --eval --agents ssh -Q --quiet ~/.ssh/id_rsa) && ~/bin/ssh.sh'
alias sslverify='echo|openssl s_client -port 443 -CAfile /etc/ssl/certs/ca-certificates.crt -host'
# Eksekver kommando i zsh shell med current user sitt enviroment 
# Kommando som skal eksevers i root context må legges inn mello fnutter
# Eks.: zsu "prin -l /root/**/*" C
alias suz='sudo -E zsh -c'
# Åpne root shell med current bruker sitt environment og $SHELL
alias sush='sudo -Es'
alias svi='sudo -E vim'
alias svim='sudo -E vim'
alias tcm='truecrypt -t --fs-options=users,uid=$(id -u),gid=$(id -g),fmask=0113,dmask=0002 --mount /media/E05C-5865/keep/private.tc"" ~/truecrypt'
alias tcu='truecrypt -d'
alias trs='translate {en=no}'
alias truecrypt='truecrypt -t'
alias tx='tx3'
alias tx2='tmux source-file ~/.tmux/2panes \; attach'
alias tx3='tmux source-file ~/.tmux/3panes \; attach'
alias tx4='tmux source-file ~/.tmux/4panes \; attach'
alias wol_brum='wol 4C:60:DE:24:DA:58'
alias wol_nasenoff='wol 4C:60:DE:24:9F:94'
alias omz='cd ~/.oh-my-zsh/'
alias pdf='zathura --fork'
alias xpwd='pwd|xsel -p;pwd'
alias xrdm='xrdb -merge ~/.Xresources'
alias doc="cd $DOC"
alias cdj='cd $JANCK'
alias usbremove="truecrypt -d && devmon -r"
alias history="\history"
alias gt='translate {EN=NO}'
alias atop='sudo atop'
alias showargs="printf '>>%s<<\n'"
alias lock='xscreensaver-command -lock'
alias srcz='source ~/.zsh_custom/*.zsh'
alias ecm='ecryptfs-mount-private'
alias ecu='ecryptfs-umount-private'
# PDF books
alias pdfzsh='zathura --fork "$HOME/Dropbox/Books/Linux/From Bash to Z Shell.pdf"'
alias zatc='zathura -c /tmp --fork'
alias zat='zathura --fork'
alias zref="$HOME/janck76@gmail.com/Linux/howto/zsh/zsh_refcard.pdf"
alias stp='kill -STOP'
alias cnt='kill -CONT'
alias hup='kill -HUP'
#alias lsig='{i=1; for s in $(kill -l); print ${(l:2:)$((i++))} $s}'
alias lsig='{ i=1; for s in $(kill -l); printf "%2d %s\n" $((i++)) $s }'
alias zlove='man zsh-lovers'
alias kc='eval $(keychain --eval id_rsa --nogui)'
alias rs='rsync -avh --progress'
alias usbstat='echo Autosuspend status \(auto/on\); for d in /sys/bus/usb/devices/[0-9]* ; do if [[ -e $d/product ]] ; then echo -e "`basename $d`\t`cat $d/power/control`\t`cat $d/speed`\t`cat $d/product`" ; fi ; done'
alias lj='$DOC/../linux_journal/1994_2013/start_linux.sh'
alias bc='bc -l'
alias synergys='sudo systemctl start synergys@janck' 
alias xhd=/usr/local/bin/xhdmi
alias pkg-update_all='packer --quickcheck|grep -v linux-ck|xargs -I{} -n1 yaourt -S {} --noconfirm'
# Git aliases
alias gst='git status '
unalias gsr &>/dev/null
alias gad='git add '
alias gau='git add -u'
alias gaa='git add -A'
alias gap='git add -p'
alias gbr='git branch '
alias gcom='git commit'
alias gcomm='git commit -m'
alias gamend='git commit --amend --no-edit'
alias gdif='git diff'
alias go='git checkout '
alias gk='gitk --all&'
alias gx='gitx --all'
alias gl='git log '
alias glo='git log --oneline'
alias gpom='git push origin master'
alias grbom='git rebase origin/master'
alias grbi='git rebase -i'
alias gmnff='git merge --no-ff'
alias reset_eth0='sudo ifconfig eth0 down; sudo ifconfig eth0 up'
alias rsync='rsync -avh --progress'
alias mhogs='ps -A --sort -rss -o pid,comm,pmem,rss | head -n 11'
alias pubip='wget -qO- http://ipinfo.io/ip'
alias ya=yaourt
alias perls='perl -MSmart::Comments'

# systemctl aliases
alias sc=systemctl
alias scr='systemctl restart'
alias scs='systemctl start'
alias scx='systemctl stop'
alias sci='systemctl status'
alias scu='systemctl --user'
alias jc='journalctl'
alias jcx='journalctl -xe'
alias psc='ps xawf -eo pid,user,cgroup,args'
# alias snippets="print -l ~/.vim/bundle/vim-snippets/{snippets,UltiSnips}/* ~/.vim/UltiSnips/*|cut -d'/' -f4-"
# alias snip_jasmine="snippet | grep javascript-jasmine.snippets | xargs grep -h '^snippet '"
# alias snip_angular="snippet | grep javascript-angular.snippets | xargs grep -h '^snippet '"
# alias snip_bash="snippet | grep '/sh.snippets' | xargs grep -h '^snippet '"

# ------------------------------------
# Docker aliases
# ------------------------------------
alias dk='docker'

# Get latest container ID
alias dl="docker ps -l -q"

# Get container process
alias dps="docker ps"

# Get process included stop container
alias dpa="docker ps -a"

# Get images
alias di="docker images"

# Get container IP
alias dip="docker inspect --format '{{ .NetworkSettings.IPAddress }}'"

# Run deamonized container, e.g., $dkd base /bin/echo hello
alias dkd="docker run -d -P"

# Run interactive container, e.g., $dki base /bin/bash
alias dki="docker run -i -t -P"

# Execute interactive container, e.g., $dex base /bin/bash
alias dex="docker exec -i -t"

# Stop all containers - se functions.zsh
# dstop() { docker stop $(docker ps -a -q); }

# Remove all containers - se functions.zsh
# drm() { docker rm $(docker ps -a -q); }

# Stop and Remove all containers
alias drmf='docker stop $(docker ps -a -q) && docker rm $(docker ps -a -q)'

# Remove all images - se functions.zsh - se functions.zsh
# dri() { docker rmi $(docker images -q); }

# Dockerfile build, e.g., $dbu tcnksm/test  - se functions.zsh
# dbu() { docker build -t=0.89€ .; }

# Show all alias related docker - se functions.zsh
# dalias() { alias | grep 'docker' | sed "s/^\([^=]*\)=\(.*\)/\1 => \2/"| sed "s/['|\']//g" | sort; }

# Global aliases
alias -g L="| less"
alias -g LV="| /usr/share/vim/vim7[4-9]/macros/less.sh"
alias -g S="| sort"
alias -g SN="| sort --numeric-sort"
alias -g SH="| sort --human-numeric-sort" # Kb, Mb, Gb
alias -g T="| tail"
alias -g TF="| tail -f"
alias -g C="| wc -l"
alias -g X="| xargs"
alias -g X0="| xargs -0"
alias -g G="| pcregrep"
alias -g GV="| pcregrep -v"
alias -g PE="| perl -e"
# Konverter første kolonne fra KB til GB
alias -g K2G='| perl -e ''grep { if ( /^(\d+)\s+(.*)/ ) { printf "%6.2fG \%s\n", $1/1024/1024, $2 } } sort { $a <=> $b} <STDIN>'''
alias -g DN=/dev/null
alias -g NE='2>/dev/null'
alias -g NUL=">/dev/null 2>&1"



# Suffix aliases
alias -s pdf='zathura --fork'
alias -s html=chromium
alias -s txt=vim

alias gvimruby='eval $(echo gvim $(for f in $(ls **/*.rb); do echo -e "$f";done))'
alias xx='xclip -selection primary </dev/null; xclip -selection secondary </dev/null; xclip -selection clipboard </dev/null; xclip -selection buffer-cut </dev/null'
