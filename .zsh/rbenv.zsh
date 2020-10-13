autoload -U ~/.rbenv/shims
export PATH="$HOME/.rbenv/bin:$HOME/.rbenv/shims:$PATH"
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"
