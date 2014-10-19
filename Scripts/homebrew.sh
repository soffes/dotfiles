brew update
brew upgrade

TAPS=(
    homebrew/dupes
    homebrew/versions
    caskroom/cask
    caskroom/fonts
    caskroom/versions
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
    caskroom/cask/brew-cask
)
brew install ${FORMULAS[@]}

CASKS=(
    skype
    rdio
    reveal
    google-hangouts
    silverlight
    sonos
    dropbox
    google-chrome
    flash
    kdiff3
)
brew cask install ${CASKS[@]}

brew cleanup
