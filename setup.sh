#!/bin/sh

# ! DISCLAIMER: Not tested, try this with a backup or VM first

echo "SCRIPT NOT TESTED!"
echo "Script will continue in 1 seconds..."
sleep 1

cd $HOME

echo "Backing up old dotfiles..."

# Zsh

mv .zshrc .zshrc.predot 2>/dev/null

# Other ~ files

mv .alacritty.yml .alacritty.yml.predot 2>/dev/null
mv .actrc .actrc.predot 2>/dev/null

#
# .config folder files
#

# rice
mv .config/kitty .config/kitty.predot 2>/dev/null
mv .config/sway .config/sway.predot 2>/dev/null
mv .config/waybar .config/waybar.predot 2>/dev/null
mv .config/i3 .config/i3.predot 2>/dev/null
mv .config/dunst .config/dunst.predot 2>/dev/null
mv .config/rofi .config/rofi.predot 2>/dev/null
mv .config/picom.conf .config/picom.conf.predot 2>/dev/null

# other .config
mv .config/nvim .config/nvim.predot 2>/dev/null

#
# /etc/
#

doas mv /etc/pacman.conf /etc/pacman.conf.predot 2>/dev/null
echo "Completed!"

echo "Symlinking new dotfiles..."

# Zsh
ln -s ~/dotfiles/.zshrc ~/.zshrc

# Other ~ files
ln -s ~/dotfiles/.alacritty.yml ~/.alacritty.yml
ln -s ~/dotfiles/.actrc ~/.actrc

# .config

# rice
ln -s ~/dotfiles/.config/kitty ~/.config/kitty
ln -s ~/dotfiles/.config/rofi ~/.config/rofi
ln -s ~/dotfiles/.config/i3 ~/.config/i3
ln -s ~/dotfiles/.config/sway ~/.config/sway
ln -s ~/dotfiles/.config/waybar ~/.config/waybar
ln -s ~/dotfiles/.config/dunst ~/.config/dunst
ln -s ~/dotfiles/.config/picom.conf ~/.config/picom.conf

# other .config
ln -s ~/dotfiles/.config/nvim ~/.config/nvim

# /etc/

doas ln -s ~/dotfiles/etc/pacman.conf /etc/pacman.conf
echo "Completed!"
