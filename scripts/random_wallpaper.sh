#!/bin/sh

function set_wallpaper() {
  swww img --transition-type top --transition-step 20 --transition-fps 60 $1
}

PICTURE=$(find /home/phoenix/Pictures/wallpapers/ -type f | shuf -n 1)
set_wallpaper $PICTURE
