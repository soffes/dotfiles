autoload -U ~/.rbenv/shims
export PATH="$HOME/.rbenv/bin:$HOME/.rbenv/shims:$PATH"

# Hardcoding instead of asking Homebrew greatly speeds up starting a new terminal session
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=/opt/homebrew/opt/openssl@3"
