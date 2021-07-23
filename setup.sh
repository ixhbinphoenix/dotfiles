#!/bin/sh

# ! DISCLAIMER: Not tested, try this with a backup or VM first

echo "SCRIPT NOT TESTED!"
echo "Script will continue in 1 seconds..."
sleep 1

install_deps() {
    echo "Install Dependencies? [y/n]"
    read -p ">" ideps
    if [ $ideps == "y" ]
    then
        echo "Install qtile? [y/n]"
        read -p ">" iqtile
        if [ $ideps == "y" ] then sudo pacman -S qtile fi
        echo "Install rustup? (required by onefetch) [y/n]"
        read -p ">" irustup
        if [ $irustup == "y"] then curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh fi
        echo "Installing other dependencies..."
        $HOME/.cargo/bin/cargo install onefetch
        sudo pacman -S bat pfetch qtile
        echo "Completed!"
        echo "Install addon dependencies? [y/n]"
        read -p ">" iaddon
        if [ $iaddon == "y" ]
        then
            echo "Install youtube-dl (requires python-pip) [y/n]"
            read -p ">" iyt
            if [ $iyt == "y"] then python3 -m pip install --upgrade youtube-dl fi
        fi
    fi
}


install_deps()
cd $HOME

echo "Backing up old dotfiles..."
mv .zshrc .zshrc.predot 2>/dev/null
# not quite sure how the actual installed and not cloned dir is named
mv .oh-my-zsh .oh-my-zsh.predot 2>/dev/null
mv .ohmyzsh .ohmyzsh.predot 2>/dev/null
mv .zsh_custom .zsh_custom.predot 2>/dev/null
mv .config/qtile .config/qtile.predot 2>/dev/null
echo "Completed!"

echo "Symlinking new dotfiles..."
ln -s ./dotfiles/.zshrc .zshrc
ln -s ./dotfiles/.oh-my-zsh .oh-my-zsh
ln -s ./dotfiles/.zsh_custom .zsh_custom
ln -s ./dotfiles/qtile/ .config/qtile
echo "Completed!"
