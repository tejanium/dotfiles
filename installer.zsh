#!/bin/zsh

setopt EXTENDED_GLOB
for rcfile in $HOME/.files/runcoms/*; do
  local dest="$HOME/.${rcfile:t}"
  echo "Symlinking $rcfile to $dest"
  ln -s $rcfile $dest
done
