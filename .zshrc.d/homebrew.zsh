BREW_PREFIX="$(brew --prefix)"
PATH="$BREW_PREFIX/opt/ruby/bin:$PATH"
# PATH="$(gem env gemdir)/bin:$PATH" # too slow!
PATH="/usr/local/lib/ruby/gems/2.6.0/bin:$PATH"
