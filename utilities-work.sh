#!/bin/bash

sudo apt-get install update


python_running(){

echo " Installs both pip and pip3 "

sudo apt-get install python-pip

sudo apt-get install python-pip3

echo " Updates only python-pip, not a big of pip3, add your own updates ;) "

pip install -U pip


}


python_libraries_basic() {

echo " This modules does not install deep learning libraries !!"

#python -m pip install --user numpy scipy matplotlib ipython jupyter pandas sympy nose
#below command installs system wide, above command does it for a specific user

sudo apt-get install python-numpy python-scipy python-matplotlib ipython ipython-notebook python-pandas python-sympy python-nose


}

python_running
python_libraries_basic
