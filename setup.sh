#!/bin/sh

# DISCLAIMER: Not tested, try this with a backup or VM first

echo "!!! WARNING !!! NOT TESTED, MAKE A BACKUP OR TRY ON VM !!! WARNING !!!"
echo "Script will continue in 5 seconds..."
sleep 5

cd $HOME

# Rename old dotfiles
mv .zshrc .zshrc.predot 2>/dev/null
# not quite sure how the actual installed and not cloned dir is named
mv .oh-my-zsh .oh-my-zsh.predot 2>/dev/null
mv .ohmyzsh .ohmyzsh.predot 2>/dev/null
mv .config/qtile .config/qtile.predot 2>/dev/null

# Symlink new files
ln -s ./dotfiles/.zshrc .zshrc
ln -s ./dotfiles/.oh-my-zsh .oh-my-zsh
ln -s ./dotfiles/qtile/ .config/qtile
