#!/bin/bash

# Update and upgrade OS
sudo apt-get update -y && sudo apt-get upgrade -y

# Install Git
sudo apt-get install git -y

# Git clone the T-pot repository
git clone https://github.com/telekom-security/tpotce.git

# Execute installation script
cd tpotce/iso/installer/
printf '# tpot configuration file\n# myCONF_TPOT_FLAVOR=[STANDARD, SENSOR, INDUSTRIAL, COLLECTOR, NEXTGEN, MEDICAL]\nmyCONF_TPOT_FLAVOR='\''STANDARD'\''\nmyCONF_WEB_USER='\''tpotWebUser'\''\nmyCONF_WEB_PW='\''tpotWebUser'\''' > tpot.conf.dist
cp tpot.conf.dist tpot.conf
./install.sh --type=auto --conf=tpot.conf
