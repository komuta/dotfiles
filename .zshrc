# For benchmarks
# zmodload zsh/zprof

source ~/.dotfiles/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle git-flow-avh
antigen bundle pip
antigen bundle vagrant
antigen bundle npm
antigen bundle command-not-found
antigen bundle nojhan/liquidprompt --branch=develop

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Tell antigen that you're done.
antigen apply

# Avoid zsh interferences with screen/tmux window naming policy
# http://superuser.com/questions/306028/tmux-and-zsh-custom-prompt-bug-with-window-name
DISABLE_AUTO_TITLE=true

export PATH=~/bin:$PATH

eval `dircolors ~/.dircolors`

# Less Colors for Man Pages
export LESS_TERMCAP_mb=$'\E[01;31m'       # begin blinking
export LESS_TERMCAP_md=$'\E[01;38;5;74m'  # begin bold
export LESS_TERMCAP_me=$'\E[0m'           # end mode
export LESS_TERMCAP_se=$'\E[0m'           # end standout-mode
export LESS_TERMCAP_so=$'\E[38;5;246m'    # begin standout-mode - info box
export LESS_TERMCAP_ue=$'\E[0m'           # end underline
export LESS_TERMCAP_us=$'\E[04;38;5;146m' # begin underline

# aliases
alias ack=ack-grep

# rvm
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
