#!/bin/bash

#code directly copied from https://github.com/andrewwakeling/alienware-13-r3-ubuntu-16.04

sudo apt purge 'nvidia.*'
sudo add-apt-repository ppa:graphics-drivers/ppa
sudo apt update
sudo apt install nvidia-367 nvidia-prime

sudo prime-select intel
sudo apt-get update
sudo apt-get upgrade
sudo apt-get dist-upgrade


prime-select query

echo " modify grup " 

sleep 3

echo " Change the GRUB_CMD_LINUX_DEFAULT="quiet splash nogpumanager acpi_osi=! acpi_osi=\"Windows 2009\"

echo " the update the grub with sudo update-grub "


sudo add-apt-repository ppa:bumblebee/testing
sudo apt update
sudo apt install bumblebee
sudo vi /etc/modprobe.d/bumblebee.conf


blacklist nvidia-367
blacklist nvidia-367-updates
blacklist nvidia-experimental-367


sudo vi /etc/bumblebee/bumblebee.conf

echo " 
    Driver=nvidia"
echo" KernelDriver=nvidia-367"
echo "    LibraryPath=/usr/lib/nvidia-367:/usr/lib32/nvidia-367"
echo "    XorgModulePath=/usr/lib/nvidia-367/xorg,/usr/lib/xorg/modules"

echo " follow further steps from the website "


