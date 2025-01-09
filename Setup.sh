#!/bin/sh

sudo echo "Please Authenticate..."

# Update and Upgrade
sudo apt-get update -y

sudo apt update -y

sudo apt-get upgrade -y

sudo apt upgrade  -y

# Install dependencies
sudo apt install zsh awesome neovim alsa-utils ncat snapd snap lf -y 

sudo systemctl enable snapd

sudo systemctl start snapd

sudo snap install discord -y

sudo snap install spotify -y

# Download and install Awesome config
sudo git clone https://github.com/0w15h3115/Kali-Config.git/awesome.tgz

tar -xzf awesome.tgz

cd awesome

mv awesome_pkg/awesome ~/.config

mkdir -p ~/pictures

sudo rm -rf /usr/share/awesome/themes/zenburn

sudo mv awesome_pkg/zenburn /usr/share/awesome/themes

# Self-destruct
rm -rf awesome_pkg

rm -- "$0"

# Download and install nvim config
rm -rf ~/.config/nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim && git clone https://github.com/vinnydiehl/nvim-config.git ~/.config/nvim && git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim && mv ~/.config/nvim/after ~/aftertmp && nvim "+:PackerSync"

mv ~/aftertmp ~/.config/nvim/after && nvim


# Set zsh as default shell
    # chsh
    
# Run PackerSync in nvim, if needed try PackerSync again

# Login to firefox

# Add /snap/bin to path
    # sudo nvim /etc/environment



