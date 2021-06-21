#!/bin/sh

# DISCLAIMER: Not tested, try this with a backup or VM first

cd $HOME

# Rename old dotfiles
mv .zshrc .zshrc.predot 2>/dev/null

# not quite sure how the actual installed and not cloned dir is named
mv .oh-my-zsh .oh-my-zsh.predot 2>/dev/null
mv .ohmyzsh .ohmyzsh.predot 2>/dev/null

# Symlink new files
ln -s .zshrc $HOME/dotfiles/.zshrc
ln -s .oh-my-zsh $HOME/dotfiles/.oh-my-zsh
