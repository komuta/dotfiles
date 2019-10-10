
### Added by Zplugin's installer
source "$HOME/.zplugin/bin/zplugin.zsh"
autoload -Uz _zplugin
(( ${+_comps} )) && _comps[zplugin]=_zplugin
### End of Zplugin installer's chunk

zplugin light zsh-users/zsh-autosuggestions
zplugin light zdharma/fast-syntax-highlighting
zplugin light Tarrasch/zsh-autoenv

zplugin ice depth=1
zplugin light romkatv/powerlevel10k

# TODO try migrating to https://github.com/sorin-ionescu/prezto?
# zplugin snippet PZT::modules/helper/init.zsh

zplugin ice atload"unalias grv"
zplugin snippet OMZ::plugins/git/git.plugin.zsh
zplugin snippet OMZ::lib/completion.zsh
zplugin snippet OMZ::lib/directories.zsh
zplugin snippet OMZ::lib/history.zsh
zplugin snippet OMZ::lib/key-bindings.zsh
zplugin snippet OMZ::lib/theme-and-appearance.zsh
zplugin ice wait lucid
zplugin snippet OMZ::plugins/history-substring-search/history-substring-search.zsh
zplugin ice wait lucid
zplugin snippet OMZ::plugins/colored-man-pages/colored-man-pages.plugin.zsh
UNBUNDLED_COMMANDS=(guard pry)
zplugin snippet OMZ::plugins/bundler/bundler.plugin.zsh

zplugin ice wait lucid
zplugin snippet OMZ::plugins/fzf/fzf.plugin.zsh

autoload -Uz compinit
compinit

# local customizations
[[ -d ~/.zshrc.d ]] && for file in ~/.zshrc.d/*; do source $file; done

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh
