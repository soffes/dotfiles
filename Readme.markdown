# ~samsoffes

Based on [Ryan Bates](http://github.com/ryanb/dotfiles) and [Ryan Tomayko](http://github.com/rtomayko/dotfiles).

## Environment

I am running on Mac OS X, but it will likely work on Linux as well with minor fiddling. I primarily use zsh, but this includes some older bash files as well. If you would like to switch to zsh, you can do so with the following command.

    $ chsh -s /bin/zsh

## Installation

    $ cd ~
    $ git init
    $ git remote add origin git://github.com/samsoffes/dotfiles.git
    $ git pull origin master

## Stuff To Change

**Please change** the `.gitconfig` so you don't commit everything as me. Everything else shouldn't need tweaking.

If you don't want to see `Readme.markdown` in your home folder (it drives me nuts seeing it in there), just run this:

    $ SetFile -a "V" ~/Readme.markdown

### Git Exclude

If you are annoyed by running `git status` in your home directory and seeing a ton of stuff that isn't added (like I am), you can easily fix this.

Add a single line with a `*` on it in `~/.git/info/exclude` to simply exclude everything. If you want to add a file, simply `git add` it. (Thanks to [Ryan Tomayko](http://github.com/rtomayko/dotfiles) for this technique.)

## Now What?

[Install Homebrew](https://github.com/mxcl/homebrew/wiki/installation):

    # Install Xcode first
    $ /usr/bin/ruby -e "$(curl -fsSL https://raw.github.com/gist/323731)"

[Install rbenv](https://github.com/sstephenson/rbenv#section_2) and [ruby-build](https://github.com/sstephenson/ruby-build):

    $ git clone git://github.com/sstephenson/rbenv.git ~/.rbenv
    # Restart shell
    $ git clone git://github.com/sstephenson/ruby-build.git
    $ cd ruby-build
    $ install.sh
    $ cd ..
    $ rm -rf ruby-build
    $ ruby-build 1.9.2-p290 ~/.rbenv/versions/1.9.2-p290
    $ rbenv rehash
    $ rbenv global 1.9.2-p290

Enjoy.
