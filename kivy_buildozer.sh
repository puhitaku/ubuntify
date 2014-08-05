#!/bin/sh

echo "Please make sure that you have installed Android SDK."
echo "JDK will be installed automatically."

pip install buildozer
sudo apt-get install lib32stdc++6 lib32z1

sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install oracle-java7-installer
