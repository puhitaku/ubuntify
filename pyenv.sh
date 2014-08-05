#!/bin/sh

echo "Installing pyenv..."
sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm
curl -L https://raw.githubusercontent.com/yyuu/pyenv-installer/master/bin/pyenv-installer | bash

echo "Installing pyenv-pip-rehash and pyenv-virtualenv..."
git clone https://github.com/yyuu/pyenv-pip-rehash.git ~/.pyenv/plugins/pyenv-pip-rehash
git clone https://github.com/yyuu/pyenv-virtualenv.git ~/.pyenv/plugins/pyenv-virtualenv

echo "Adding the path to pyenv..."
echo "export PATH=\"~/.pyenv/bin:\$PATH\"" >> ~/.bashrc
eval "$(~/.pyenv/bin/pyenv init - >> ~/.bashrc)"
eval "$(~/.pyenv/bin/pyenv virtualenv-init - >> ~/.bashrc)"

echo "Done! Please do \"source ~/.bashrc\" and it will take a effect."

