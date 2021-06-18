export NVM_DIR="$HOME/.nvm"

# Add node to path
# Inspired by https://www.ioannispoulakas.com/2020/02/22/how-to-speed-up-shell-load-while-using-nvm/
export PATH="$NVM_DIR/versions/node/v16.3.2/bin:$PATH"

# Load nvm
[[ -s "$NVM_DIR/nvm.sh" ]] && source "$NVM_DIR/nvm.sh" --no-use
