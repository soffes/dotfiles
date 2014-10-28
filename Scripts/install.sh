echo "Changing shell…"
sudo echo "/usr/local/bin/zsh" >> /etc/shells && chsh -s /bin/zsh

echo "Cloning Sublime Text configuration…"
rm -rf ~/Library/Application\ Support/Sublime\ Text\ 3
git clone https://github.com/soffes/sublime.git ~/Library/Application\ Support/Sublime\ Text\ 3

echo "Hiding files…"
SetFile -a "V" ~/Readme.markdown ~/LICENSE ~/Scripts

echo "Excluding everything from git…"
echo '*' >> ~/.git/info/exclude

echo "Installing Homebrew…"
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
./Scripts/homebrew.sh

echo "Installing Ruby…"
rbenv install 2.1.3
rbenv global 2.1.3

echo "Done."
