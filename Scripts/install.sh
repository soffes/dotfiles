echo "Changing shell…"
chsh -s /bin/zsh

echo "Cloning Sublime Text configuration…"
rm -rf ~/Library/Application\ Support/Sublime\ Text\ 3
git clone https://github.com/soffes/sublime.git ~/Library/Application\ Support/Sublime\ Text\ 3

echo "Hiding files…"
SetFile -a "V" ~/Readme.markdown ~/LICENSE ~/Scripts

echo "Excluding everything from git…"
echo '*' >> ~/.git/info/exclude

echo "Installing Homebrew…"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/opt/homebrew/bin/brew shellenv)"
brew bundle --file ~/Scripts/Brewfile
 
echo "Done."
