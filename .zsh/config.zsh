# Editor
export EDITOR='nano'

# Paths
export PATH="./bin:$HOME/bin:$HOME/.rbenv/plugins/ruby-build/bin:/usr/local/heroku/bin:/usr/local/foreman/bin:/usr/local/bin:$HOME/Code/go/bin:$PATH"
export MANPATH="/usr/local/man:/usr/local/mysql/man:/usr/local/git/man:$MANPATH"
# export JAVA_HOME="$(/usr/libexec/java_home -F)"
export SSL_CERT_FILE=/usr/local/opt/curl-ca-bundle/share/ca-bundle.crt
export GOPATH=$HOME/Code/go
export SSL_CERT_FILE=/usr/local/etc/openssl/cert.pem

# Colors
export CLICOLOR=1
autoload colors; colors;
export LSCOLORS="Gxfxcxdxbxegedabagacad"
setopt PROMPT_SUBST

# RENV
autoload -U ~/.rbenv/shims
export PATH="$HOME/.rbenv/bin:$HOME/.rbenv/shims:$PATH"

# Fast JRuby
export JAVA_OPTS="-d32"

# Timer
REPORTTIME=10 # print elapsed time when more than 10 seconds

# Quote pasted URLs
autoload -U url-quote-magic
zle -N self-insert url-quote-magic

# Tetris
autoload -U tetris
zle -N tetris
bindkey ^T tetris

# Misc options
setopt NO_BG_NICE # don't nice background tasks
setopt NO_HUP
setopt NO_LIST_BEEP
setopt LOCAL_OPTIONS # allow functions to have local options
setopt LOCAL_TRAPS # allow functions to have local traps
setopt COMPLETE_IN_WORD
setopt IGNORE_EOF
