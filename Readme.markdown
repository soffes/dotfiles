# ~samsoffes

Based on [Ryan Bates](http://github.com/ryanb/dotfiles) and [Ryan Tomayko](http://github.com/rtomayko/dotfiles).

## Environment

I am running on Mac OS X, but it will likely work on Linux as well with 
minor fiddling. I primarily use zsh, but this includes some older bash 
files as well. If you would like to switch to zsh, you can do so with 
the following command.

    chsh -s /bin/zsh

## Stuff To Change

You'll probably want to change the `.gitconfig` so you don't commit everything as me. Everything else shouldn't need tweaking.

If you don't want to see `Readme.markdown` in your home folder (it drives me nuts seeing it in there), just run this:

    $ SetFile -a "V" ~/Readme.markdown
