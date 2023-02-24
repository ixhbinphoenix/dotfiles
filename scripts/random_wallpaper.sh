#!/bin/sh
PICTURE=$(find /home/phoenix/Pictures/wallpapers/ -type f | shuf -n 1)
swaymsg "output \"*\" bg $PICTURE fill"
