# cd
alias ..='cd ..'
alias db='cd ~/Dropbox'

# ls
alias ls="ls -F"
alias l="ls -lAh"
alias ll="ls -l"
alias la='ls -A'

# Git
alias gsu="git submodule update --init --recursive"
alias gs='git status'
compdef _git gs=git-status

# Rails
alias tlog='tail -f log/development.log'
alias b='bundle exec'
alias bake='bundle exec rake'
alias rr='rbenv rehash'

# Chocolat
alias co='choc .'

# TextMate
alias m='mate .'

# Mac OS X
alias o='open .'
alias screensaver='/System/Library/Frameworks/ScreenSaver.framework/Versions/A/Resources/ScreenSaverEngine.app/Contents/MacOS/ScreenSaverEngine'

# Xcode
alias x='open *.xcodeproj' # This override X Window stuff, but who cares

# Commands starting with % for pasting from web
alias %=' '
alias $=' '

# PostgreSQL
alias pg_start="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias pg_stop="pg_ctl -D /usr/local/var/postgres stop -s -m fast"
