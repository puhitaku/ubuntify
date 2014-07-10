#!/bin/sh

echo "Your name on github?"
read USER
echo "Your E-mail address?"
read EMAIL
SSHDIR=~/.ssh

echo "Setting up git..."
echo "Username =" $USER
echo "E-mail =" $EMAIL

git config --global user.name "$USER"
git config --global user.email $EMAIL
git config --global color.ui auto

git config --global alias.cm 'commit -m'
git config --global alias.cam 'commit -am'
git config --global alias.st status
git config --global alias.di diff

echo "Generating SSH key. The passphrase is not needed so just press Enter some times."
ssh-keygen
chmod 600 $SSHDIR/id_rsa

touch $SSHDIR/config
echo "Host github.com" >> $SSHDIR/config
echo "    HostName github.com" >> $SSHDIR/config 
echo "    IdentityFile "$SSHDIR/id_rsa >> $SSHDIR/config
echo "    User git" >> $SSHDIR/config

xclip < $SSHDIR/id_rsa.pub
echo "The SSH public key is now copied! Paste it on github's \"Add an SSH Key\" page."

