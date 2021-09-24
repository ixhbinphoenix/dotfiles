#!/bin/sh

# Script to sync all music files to android music directory
# sshelper needs to be installed on the phone and the phone needs to be added under ~/.shh/config with port 2222

rsync -rvcP --inplace --omit-dir-times --no-perms $HOME/Music/ android:SDCard/Music/