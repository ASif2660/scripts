#author : Mohammed Asif Chand

#Important parts of my thesis 
#socketCAN libraries
#ROS
#PCAN libraries
#BAsler Camera SDK
#TensorFlow
# blah blah ...


#https://wiki.linklayer.com/index.php/SocketCAN







socketPCANsupport(){


yes Y | sudo apt-get install can-utils

echo " also loads the modules for future use "


yes Y |sudo modprobe can
yes Y |sudo modprobe vcan
yes y |sudo modprobe slcan


#echo " loaded can, vcan, slcan"


#sudo slcand -o -c -s6 /dev/ttyACM0 can0

#echo " created a new device " 


#sudo ifconfig can0 up

#echo " can0 is up "


#create a virtual can instead
#sudo ip link add name vcan0 type vcan
#sudo ip link add name can0 type can


#use commands like candump and cansniffer

echo " Please save this downloadeble tar file in ~/Downloads folder" 

sleep 2

firefox www.peak-system.com/fileadmin/media/linux/files/peak-linux-driver-8.5.1.tar.gz &

while [ ! -f ~/Downloads/peak-linux-driver*.tar.gz ]
do 
sleep 2
done 
echo " Downloading is complete "

cd ~/Downloads

sleep 10
 
tar -xvf peak-linux-driver-8.5.1.tar.gz 

yes Y | sudo apt-get install libopt-dev
 
yes Y |sudo apt-get update && sudo apt-get upgrade
yes Y |sudo apt-get install aptitude
yes Y |sudo apt-get install libstdc++6

sudo make install 

}

ROS_installation(){

#link :http://wiki.ros.org/kinetic/Installation/Ubuntu

sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116
sudo apt-get update
sudo apt-get install ros-kinetic-desktop-full
sudo apt-get install python-rosinstall python-rosinstall-generator python-wstool build-essential
sudo rosdep init
rosdep update
echo "source /opt/ros/kinetic/setup.bash" >> ~/.bashrc
source ~/.bashrc
mkdir -p ~/catkin_ws/src
cd ~/catkin_ws/
source devel/setup.bash
catkin_make
 echo $ROS_PACKAGE_PATH

}


DownloadThesisSourceCode(){

##nothing here
##confidential
echo " does nothing" 

}

#socketPCANsupport
ROS_installation

















