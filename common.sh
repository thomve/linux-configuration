#!/bin/bash

sudo apt update
sudo apt upgrade -y

# essential packages
sudo apt install -y git curl wget

# git
git config --global user.name "User Name"
git config --global user.email "your_email@example.com"

# Install and configure firewall (UFW)
sudo apt install -y ufw
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw enable

# SSH
sudo apt install -y openssh-server
sudo systemctl start ssh
sudo systemctl enable ssh

# timezone
sudo dpkg-reconfigure tzdata

# common development tools
sudo apt install -y build-essential

# Vim
sudo apt install -y vim

# Chrome
sudo sh -c 'echo "deb [arch=amd64] https://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google-chrome.list'
wget -O- https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo tee /etc/apt/trusted.gpg.d/linux_signing_key.pub
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 78BD65473CB3BD13
sudo apt-get update
sudo apt-key export D38B4796 | sudo gpg --dearmour -o /etc/apt/trusted.gpg.d/chrome.gpg
sudo apt-get install google-chrome-stable

# Remove Firefox
sudo apt remove firefox
sudo rm -Rf /usr/bin/firefox
sudo rm -Rf /usr/loca/firefox

# Print completion message
echo "System configuration completed."