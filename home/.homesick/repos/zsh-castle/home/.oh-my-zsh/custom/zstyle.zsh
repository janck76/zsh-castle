# Context format:
#:completion:function:completer:command:argument:tag

zstyle ':completion:*' verbose yes
zstyle ':completion:*:descriptions' format '%B%d%b'
zstyle ':completion:*:messages' format '%d'
zstyle ':completion:*:warnings' format 'No matches for: %d'
zstyle ':completion:*' group-name 

# Enable menu for howto kommandoen
zstyle ':completion:*:*:howto:*:*' menu on
