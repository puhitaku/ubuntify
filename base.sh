#!/bin/sh

echo "PPA repos are going to be installed. Proceed with installation pressing Enter."
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo apt-get update

echo "Installing GNOME Panel, vim, Guake, Chrome and additional tools..."
sudo apt-get -y install git gnome-panel vim guake google-chrome-stable xsel ibus-mozc

echo "Launching ibus-setup..."
ibus-setup

echo "Logout this session and re-login with GNOME Panel."

