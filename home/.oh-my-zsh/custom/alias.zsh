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
alias lu='ls -lU'
alias lf='ls -fl'
alias lud='ls -lUd'
alias la='ls -lah'
alias lsd='ls -fdl'
alias ll='ls -lh'
alias ls='ls --color=auto'
alias ltr='ls -ltrh'
alias lz='ls -lrhS'
alias nasenoff='ls /net/nasenoff/c/home'
alias pacman='pacmatic'
alias pld='pkg-list_dependents'
alias pow=' sudo poweroff'
alias pto='pkg-list_true_orphans'
alias r='1'
alias rew='java -jar /home/janck/REW/RoomEQ_Wizard_obf.jar &'
alias s='sudo '
alias se='sudoedit'
alias ssh='eval $(/usr/bin/keychain --nogui --eval --agents ssh -Q --quiet ~/.ssh/id_rsa) && ~/bin/ssh.sh'
alias sslverify='echo|openssl s_client -port 443 -CAfile /etc/ssl/certs/ca-certificates.crt -host'
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
alias wicd='wicd-curses'
alias wol_brum='wol -h brum 4C:60:DE:24:DA:58'
alias wol_nasenoff='wol -h nasenoff 4C:60:DE:24:9F:94'
alias omz='cd ~/.oh-my-zsh/'
alias pdf='zathura --fork'
alias xrdm='xrdb -merge ~/.Xresources'
alias doc="cd $DOC"
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
alias zref="$HOME/janck76@gmail.com/Linux/howto/zsh/zsh_refcard.pdf"
alias stp='kill -STOP'
alias cnt='kill -CONT'
alias hup='kill -HUP'
#alias lsig='{i=1; for s in $(kill -l); print ${(l:2:)$((i++))} $s}'
alias lsig='{ i=1; for s in $(kill -l); printf "%2d %s\n" $((i++)) $s }'
alias zlove='man zsh-lovers'
alias kc='eval $(keychain --eval id_rsa --nogui)'
alias rs='rsync -avh --progress'

# Git aliases
alias gst='git status '
alias gad='git add '
alias gbr='git branch '
alias gcom='git commit'
alias gdif='git diff'
alias go='git checkout '
alias gk='gitk --all&'
alias gx='gitx --all'
alias gl='git log '
alias glo='git log --oneline'


# Global aliases
alias -g L="| less"
alias -g LV="| /usr/share/vim/vim7[4-9]/macros/less.sh"
alias -g S="| sort"
alias -g SN="| sort --numeric-sort"
alias -g SH="| sort --human-numeric-sort" # Kb, Mb, Gb
alias -g T="| tail"
alias -g C="| wc -l"
alias -g X="| xargs"
alias -g X0="| xargs -0"
alias -g G="| pcregrep"
alias -g PE="| perl -e"
# Konverter første kolonne fra KB til GB
alias -g K2G='| perl -e ''grep { if ( /^(\d+)\s+(.*)/ ) { printf "%6.2fG \%s\n", $1/1024/1024, $2 } } sort { $a <=> $b} <STDIN>'''
alias -g DN=/dev/null
alias -g NE=2>/dev/null
alias -g NUL=">/dev/null 2>&1"



# Suffix aliases
alias -s pdf='zathura --fork'
alias -s html=friefox
alias -s txt=vim



