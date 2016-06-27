brew update
brew upgrade

FORMULAS=(
    rbenv
    ruby-build
    redis
    postgresql
    heroku
    wget
    git
    tree
    imagemagick
    libxml2
    libxslt
    libiconv
    kdiff3
    elixir
    hg
    go
    python
)
brew install ${FORMULAS[@]}

brew cleanup
