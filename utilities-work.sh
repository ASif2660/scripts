#!/bin/bash

sudo apt-get install update
working_dir=`pwd`

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
python -m  pip install --user jupyter

}


gcc_gplusplus_update(){

sudo apt-get install gcc
sudo apt-get install build-essential


}


opencv_three_install(){

#install dependencies first
 




#install necessary tools 

sudo apt-get install cmake

sudo apt-get install ccmake

#clone the repo


cd ~/Downloads

git clone https://github.com/opencv/opencv.git 

git clone https://github.com/opencv/opencv_contrib.git

echo "opencv_contrib is also downloaded but not installed" 

echo "install at your own discretion" 

cd opencv

mkdir build

cd build


cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=/usr/local ..

sudo apt-get install cmake-curses-gui

echo " ccmake is also installed for graphical configuration of cmake based files" 

read -p "Would you like to run ccmake and configure manually  (y/n)?" choice
case "$choice" in 
  y|Y ) ccmake ..;;
  n|N ) cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=/usr/local ..
	echo " going with default cmake installation" 
;;
  * ) echo "invalid answer, Y or N ?"
	exit 1
;;
esac

}


cuda_install_from_deb(){

cd $working_dir/setup

chmod +x cudaInstallation.sh

./cudaInstallation.sh #this file is located in the /setup folder

echo "Complete installation of cuda requires a reboot "

echo " Please reboot later "

sleep 4

echo " Continue "

sleep 1

}





gcc_gplusplus_update
python_running
python_libraries_basic
cuda_install_from_deb
opencv_three_install

