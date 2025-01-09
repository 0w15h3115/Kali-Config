#!/bin/sh

sudo echo "Please Authenticate..."

# Update and Upgrade
sudo apt-get update -y

sudo apt update -y

sudo apt-get upgrade -y

sudo apt upgrade  -y

# Install dependencies
sudo echo "Installing dependencies..."

sudo apt install zsh awesome neovim alsa-utils ncat snapd snap lf -y 

sudo systemctl enable --now snapd

sudo systemctl enable --now snapd.apparmor

sudo snap install discord -y

sudo snap install spotify -y

# Download and install Awesome config
sudo echo "Installing Awesome config.."

sudo git clone https://github.com/0w15h3115/Kali-Config.git/awesome.tgz

tar -xzf awesome.tgz

cd awesome

sudo rm -rf ~/.config/awesome

sudo mv awesome_pkg/awesome ~/.config

mkdir -p ~/pictures

sudo rm -rf /usr/share/awesome/themes/zenburn

sudo mv awesome_pkg/zenburn /usr/share/awesome/themes

# Remove awesome_pkg
sudo echo "Removing awesome_pkg..."

rm -rf awesome_pkg

# Download and install nvim config
sudo echo "Installing neovim config..."

rm -rf ~/.config/nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim && git clone https://github.com/vinnydiehl/nvim-config.git ~/.config/nvim && git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim && mv ~/.config/nvim/after ~/aftertmp && nvim "+:PackerSync"

mv ~/aftertmp ~/.config/nvim/after && nvim


# Set zsh as default shell
sudo echo "Please change the default shell..."

sudo chsh

sudo echo "Don't forget to Run PackerSync in nvim, if needed try PackerSync again \Login to firefox \Add /snap/bin to path with sudo nvim /etc/environment"

#Uncomment to self destruct script
# rm -- "$0"


