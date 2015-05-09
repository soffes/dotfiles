brew update
brew upgrade

TAPS=(
    homebrew/dupes
    homebrew/versions
)
brew tap ${TAPS[@]}

FORMULAS=(
    rbenv
    ruby-build
    rbenv-gem-rehash
    redis
    postgresql
    heroku
    npm
    wget
    hg
    go
    tree
    imagemagick
    libxml2
    libxslt
    libiconv
    kdiff3
)
brew install ${FORMULAS[@]}

brew cleanup
