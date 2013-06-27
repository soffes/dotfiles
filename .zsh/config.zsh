# Editor
export EDITOR='nano'

# Paths
export PATH="./bin:$HOME/bin:$HOME/.rbenv/plugins/ruby-build/bin:/usr/local/heroku/bin:/usr/local/foreman/bin:/usr/local/bin:$PATH"
export MANPATH="/usr/local/man:/usr/local/mysql/man:/usr/local/git/man:$MANPATH"
# export JAVA_HOME="$(/usr/libexec/java_home -F)"

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

# EC2
# export EC2_PRIVATE_KEY="$(/bin/ls "$HOME"/.ec2/pk-*.pem | /usr/bin/head -1)"
# export EC2_CERT="$(/bin/ls "$HOME"/.ec2/cert-*.pem | /usr/bin/head -1)"
# export EC2_HOME="/usr/local/Library/LinkedKegs/ec2-api-tools/jars"
# export AWS_ACCESS_KEY_ID="$(cat "$HOME"/.ec2/access_key)"
# export AWS_SECRET_ACCESS_KEY="$(cat "$HOME"/.ec2/secret_access_key)"
# export EC2_REGION="us-west-1"
# export EC2_AVAILABILITY_ZONE="us-west-1a"

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
