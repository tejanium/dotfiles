local zplug_home="$(brew --prefix)/opt/zplug"
local dotfiles_home=~/.files

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

autoload -U compinit
compinit

source $zplug_home/init.zsh

zplug romkatv/powerlevel10k, as:theme, depth:1

zstyle ':prezto:*:*' color 'yes'
zplug "modules/history", from:prezto
zplug "modules/utility", from:prezto
zplug "modules/directory", from:prezto
zplug "plugins/vi-mode", from:oh-my-zsh

zplug "zsh-users/zsh-history-substring-search"
zplug "zsh-users/zsh-autosuggestions"
zplug "zdharma/fast-syntax-highlighting"

zplug "$dotfiles_home/modules", from:local, defer:1

if ! zplug check; then
  zplug install
fi

zplug load

source $dotfiles_home/p10k.zsh
