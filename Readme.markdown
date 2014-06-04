# ~soffes

Based on [Ryan Bates](http://github.com/ryanb/dotfiles), [Ryan Tomayko](http://github.com/rtomayko/dotfiles), and [Oh My ZSH](https://github.com/robbyrussell/oh-my-zsh).

## Environment

I am running on Mac OS X, but it will likely work on Linux as well with minor fiddling. You'll need to switch to ZSH with the following command:

    $ chsh -s /bin/zsh

## Installation

    $ cd ~
    $ git init
    $ git remote add origin https://github.com/soffes/dotfiles.git
    $ git pull origin master

## Stuff To Change

**Please change the `.gitconfig` so you don't commit everything as me.** Everything else shouldn't need tweaking.

If you don't want to see `Readme.markdown` in your home folder (it drives me nuts seeing it in there), just run this:

    $ SetFile -a "V" ~/Readme.markdown
    $ SetFile -a "V" ~/LICENSE
    $ SetFile -a "V" ~/Brewfile

### Git Exclude

If you are annoyed by running `git status` in your home directory and seeing a ton of stuff that isn't added (like I am), you can easily fix this:

    $ echo '*' >> ~/.git/info/exclude

This will simply exclude everything. If you want to add a file, simply `git add` it. (Thanks to [Ryan Tomayko](http://github.com/rtomayko/dotfiles) for this technique.)

## Now What?

[Install Homebrew](http://brew.sh):

    # Install Xcode first
    $ ruby -e "$(curl -fsSkL raw.github.com/mxcl/homebrew/go)"

Install [my usual stuff](Brewfile) from Homebrew:

    $ cd ~
    $ brew bundle

[Install rbenv](https://github.com/sstephenson/rbenv) and [ruby-build](https://github.com/sstephenson/ruby-build):

    $ rbenv install 2.1.1
    $ rbenv global 2.1.1

Download the cURL CA bundle:

    $ curl http://curl.haxx.se/ca/cacert.pem -o /usr/local/etc/openssl/cert.pem

Enjoy.
