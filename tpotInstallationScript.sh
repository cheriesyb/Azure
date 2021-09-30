#!/bin/bash

# Update and upgrade OS
sudo apt-get update -y && sudo apt-get upgrade -y

# Install Git
sudo apt-get install git -y

# Git clone the T-pot repository
git clone https://github.com/telekom-security/tpotce.git

# Execute installation script
cd tpotce/iso/installer/
./install.sh --type=user