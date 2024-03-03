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

# Print completion message
echo "System configuration completed."

