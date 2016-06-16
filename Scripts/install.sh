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
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
./Scripts/homebrew.sh

echo "Installing Ruby 2.3.0…"
rbenv install 2.3.0
rbenv global 2.3.0
gem install bundler

echo "Done."
