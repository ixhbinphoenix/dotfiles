#!/bin/sh
ANSWER=$(echo -e "Shutdown\nRestart\nLock\nLogout" | wofi -c ~/.config/wofi/powermenu -s ~/.config/wofi/powermenu.css)

if [[ $ANSWER = "Shutdown" ]]
then
  shutdown now
elif [[ $ANSWER = "Restart" ]]
then
  reboot
elif [[ $ANSWER = "Lock" ]]
then
  echo "does nothing"
elif [[ $ANSWER = "Logout" ]]
then
  echo "also does nothing lmao"
fi
