#!/bin/sh

# ! DISCLAIMER: Not tested, try this with a backup or VM first

echo "SCRIPT NOT TESTED!"
echo "Script will continue in 1 seconds..."
sleep 1


cd $HOME

echo "Backing up old dotfiles..."
mv .zshrc .zshrc.predot 2>/dev/null
# not quite sure how the actual installed and not cloned dir is named
mv .oh-my-zsh .oh-my-zsh.predot 2>/dev/null
mv .ohmyzsh .ohmyzsh.predot 2>/dev/null
mv .zsh_custom .zsh_custom.predot 2>/dev/null
mv .alacritty.yml .alacritty.yml.predot 2>/dev/null
mv .actrc .actrc.predot 2>/dev/null
mv .config/kitty .config/kitty.predot 2>/dev/null
mv .config/i3 .config/i3.predot 2>/dev/null
mv .config/rofi .config/rofi.predot 2>/dev/null
mv .config/picom.conf .config/picom.conf.predot 2>/dev/null
echo "Completed!"

echo "Symlinking new dotfiles..."
ln -s ~/dotfiles/.zshrc ~/.zshrc
ln -s ~/dotfiles/.oh-my-zsh ~/.oh-my-zsh
ln -s ~/dotfiles/.zsh_custom ~/.zsh_custom
ln -s ~/dotfiles/.alacritty.yml ~/.alacritty.yml
ln -s ~/dotfiles/.actrc ~/.actrc
ln -s ~/dotfiles/.config/kitty ~/.config/kitty
ln -s ~/dotfiles/.config/rofi ~/.config/rofi
ln -s ~/dotfiles/.config/i3 ~/.config/i3
ln -s ~/dotfiles/.config/picom.conf ~/.config/picom.conf
echo "Completed!"
