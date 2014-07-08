#!/bin/sh

USER="who the fuck are you"
EMAIL="what_the@fuck.com"

if test $USER = "who the fuck are you" -o $EMAIL = "what_the@fuck.com" ; then
  echo "Write your username and e-mail address in this script. Aborting."
  exit
fi

echo "Setting up git..."
git config --global user.name "$USER"
git config --global user.email EMAIL

echo "Generating SSH key. The passphrase is not needed so just press Enter some times."
ssh-keygen
chmod 600 $SSHDIR/id_rsa

touch $SSHDIR/config
echo "Host github.com" > $SSHDIR/config
echo "    HostName github.com" > $SSHDIR/config 
echo "    IdentifyFile "$SSHDIR/id_rsa > $SSHDIR/config
echo "    User git" > $SSHDIR/config

xclip < $SSHDIR/id_rsa.pub
echo "The SSH public key is now copied! Paste it on github's \"Add an SSH Key\" page."

