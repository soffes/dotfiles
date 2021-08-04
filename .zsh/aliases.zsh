# cd
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# ls
alias ls='ls -F'

# Git
alias gsu='git submodule update --init --recursive'
alias gs='git status'
alias gp='git push'
alias gu='git up'
alias gc='git commit -a'
compdef _git gs=git-status
alias gut='git'
alias gi='git'
alias cleanup_branches='git branch --merged | grep -v "\*" | xargs -n 1 git branch -d'
alias rm_orig="find . -name '*.orig' -delete"

# Editor
alias s='subl .'
alias code='code-insiders'
alias vs='code .'
alias nv='nova .'

# Rails
alias tlog='tail -f log/development.log'
alias b='bundle exec'

# macOS
alias o='open .'

# Commands starting with % for pasting from web
alias %=' '
alias $=' '

# Homebrew
alias brewup='brew update && brew doctor && brew outdated && brew upgrade && brew cleanup -s --prune=1'
alias ibrew='arch -x86_64 /usr/local/bin/brew'

# Misc
alias http='ruby -run -ehttpd . -p8000'
alias rx='rake && x'
alias uuid='ruby -r securerandom -e "puts SecureRandom.uuid"'
