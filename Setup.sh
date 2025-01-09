#!/usr/bin/env bash

echo "Please authenticate to run the script"

sudo -v

# Update and Upgrade
sudo apt-get update -y

sudo apt-get upgrade -y

sudo apt upgrade  -y

# Install dependencies
echo "Installing dependencies and packages..."

sudo apt install zsh awesome neovim alsa-utils obsidian ncat snapd snap lf -y 

sudo systemctl enable --now snapd

sudo systemctl enable --now snapd.apparmor

sudo snap install discord -y

sudo snap install spotify -y

# Download and install Awesome config
echo "Installing Awesome config.."

sudo git clone https://github.com/0w15h3115/Kali-Config.git/awesome.tgz

tar -xzf awesome.tgz

cd awesome

sudo rm -rf ~/.config/awesome

sudo mv awesome_pkg/awesome ~/.config

mkdir -p ~/pictures

sudo rm -rf /usr/share/awesome/themes/zenburn

sudo mv awesome_pkg/zenburn /usr/share/awesome/themes

# Remove awesome_pkg
echo "Removing awesome_pkg..."

rm -rf awesome_pkg

# Change wallpaper
echo "Changing wallpaper..."

rm ~/pictures/wallpaper/abstract.png

wget https://github.com/0w15h3115/Kali-Config/blob/main/abstract.png > ~/pictures/wallpaper/abstract.png

# Change kitty config
echo "Changing kitty theme..."

rm ~/.config/kitty/themes/current-theme.conf

wget https://github.com/0w15h3115/Kali-Config/blob/main/current-theme.conf > ~/.config/kitty/themes/current-theme.conf


# Download and install nvim config
echo "Installing neovim config..."

rm -rf ~/.config/nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim && git clone https://github.com/vinnydiehl/nvim-config.git ~/.config/nvim && git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim && mv ~/.config/nvim/after ~/aftertmp && nvim "+:PackerSync"

mv ~/aftertmp ~/.config/nvim/after && nvim


# Set zsh as default shell
echo "Please change the default shell to zsh..."

sudo chsh

echo "Don't forget to Run PackerSync in nvim, if needed try PackerSync again \nLogin to firefox \nAdd /snap/bin to path with sudo nvim /etc/environment"

# Self-destruct script
rm -- "$0"


