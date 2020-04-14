# History substring
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# Autojump
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

# asdf
source "$HOME/.asdf/asdf.sh"

# ITerm
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

export PATH="/usr/local/opt/mysql@5.6/bin:$PATH"
export PATH="/usr/local/opt/node@10/bin:$PATH"
