#pyenv -> pyenv-virtualenv -> select env -> pip cython, kivy -> glut

pyenv virtualenv --system-site-package 3.3.5 venv
pyenv shell venv

sudo apt-get install mesa-common-dev
sudo apt-get install libgl1-mesa-dev libglu1-mesa-dev
sudo apt-get build-dep python-pygame
sudo apt-get install mercurial

pip3 install cython
pip3 install kivy

# http://heritagerobotics.wordpress.com/2012/11/20/compiling-pygame-for-python-3-2-in-xubuntu/
sudo apt-get install python-dev python3-dev python3-numpy libsdl-dev libsdl-image1.2-dev libsdl-mixer1.2-dev libsdl-ttf2.0-dev libsmpeg-dev libportmidi-dev libavformat-dev libswscale-dev libjpeg-dev libfreetype6-dev

pip install hg+http://bitbucket.org/pygame/pygame
