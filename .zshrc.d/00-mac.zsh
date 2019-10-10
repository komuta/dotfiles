if [[ $(uname -s) = "Darwin" ]]
then
    BREW_PREFIX="$(brew --prefix)"
    PATH="$BREW_PREFIX/opt/coreutils/libexec/gnubin:$PATH"
    PATH="$BREW_PREFIX/opt/grep/libexec/gnubin:$PATH"
    PATH="$BREW_PREFIX/opt/gnu-tar/libexec/gnubin:$PATH"
fi
