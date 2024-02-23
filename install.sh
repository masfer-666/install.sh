#!/bin/bash

# Update package list
sudo apt update -y 

# Install required packages
sudo apt install apt-transport-https curl gnupg-agent ca-certificates software-properties-common nmap traceroute mtr neovim -y

# Add Docker's GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Add Docker repository
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"

# Install Docker
sudo apt install docker-ce docker-ce-cli containerd.io -y

# Install Docker Compose (Optional)
sudo apt install docker-compose -y

# Add the current user to the docker group
sudo usermod -aG docker $USER

# Start the Docker service
sudo systemctl start docker

# Enable Docker to start on boot
sudo systemctl enable docker

# Restart Docker
sudo systemctl restart docker

# Check Docker service status
sudo systemctl status docker

