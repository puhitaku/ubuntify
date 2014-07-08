#!/bin/sh

echo "PPA repos are going to be installed. Proceed with installation pressing Enter."
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo apt-get update

echo "Going to install GNOME Panel, vim, Guake and Chrome."
sudo apt-get install gnome-panel vim guake google-chrome-stable
