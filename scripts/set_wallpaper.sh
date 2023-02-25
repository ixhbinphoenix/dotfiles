#!/bin/sh

if [[ -f "$1" ]]; then
  swaymsg "output \"*\" bg $1 fill"
elif [[ -f "$HOME/Pictures/wallpapers/$1" ]]; then
  swaymsg "output \"*\" bg $HOME/Pictures/wallpapers/$1 fill"
else
  if [[ -f "$(which lsd)" ]]; then
    lsd -la $HOME/Pictures/wallpapers/
  else
    ls -la --color=auto $HOME/Pictures/wallpapers/
  fi
fi
