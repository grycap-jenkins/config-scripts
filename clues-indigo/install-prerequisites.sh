#!/bin/bash

cd /tmp

# Install cpyutils
git clone https://github.com/grycap/cpyutils.git
cd cpyutils
sudo python setup.py install

cd /tmp 

# Install clues
git clone https://github.com/grycap/clues.git
cd clues
sudo python setup.py install
