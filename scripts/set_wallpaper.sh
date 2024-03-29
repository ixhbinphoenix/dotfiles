#!/bin/sh

function set_wallpaper() {
  swww img --transition-type top --transition-step 20 --transition-fps 60 $1
}

if [[ -f "$1" ]]; then
  set_wallpaper $1
elif [[ -f "$HOME/Pictures/wallpapers/$1" ]]; then
  set_wallpaper "$HOME/Pictures/wallpapers/$1"
else
  if [[ -f "$(which lsd)" ]]; then
    lsd -la $HOME/Pictures/wallpapers/
  else
    ls -la --color=auto $HOME/Pictures/wallpapers/
  fi
fi
