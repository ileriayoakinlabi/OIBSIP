#!/bin/bash

# Update package list
sudo apt update

# Install UFW
sudo apt install ufw -y

# Reset firewall
sudo ufw --force reset

# Default policies
sudo ufw default deny incoming
sudo ufw default allow outgoing

# Allow SSH
sudo ufw allow 22/tcp

# Block HTTP
sudo ufw deny 80/tcp

# Allow HTTPS
sudo ufw allow 443/tcp

# Block FTP
sudo ufw deny 21/tcp

# Enable firewall
sudo ufw --force enable

# Display firewall status
sudo ufw status verbose