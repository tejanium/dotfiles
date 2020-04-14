export ZPLUG_HOME=/usr/local/opt/zplug

# # Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# # Initialization code that may require console input (password prompts, [y/n]
# # confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source $ZPLUG_HOME/init.zsh

zplug romkatv/powerlevel10k, as:theme, depth:1

zplug "modules/history", from:prezto
zplug "modules/utility", from:prezto
zplug "modules/directory", from:prezto
zplug "plugins/vi-mode", from:oh-my-zsh

zplug "zsh-users/zsh-history-substring-search"
zplug "zsh-users/zsh-autosuggestions"
zplug "zdharma/fast-syntax-highlighting"

zplug "~/.sh/modules", from:local, defer:1

if ! zplug check; then
  zplug install
fi

zplug load

# # To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
source ~/.sh/p10k.zsh
