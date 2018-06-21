#!/bin/bash

sudo dpkg -i cuda-repo-ubuntu1604_9.2.88-1_amd64.deb
sudo apt-key adv --fetch-keys http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/7fa2af80.pub

sudo apt-get update
sudo apt-get install cuda


#errors?: checkout https://developer.nvidia.com/cuda-downloads?target_os=Linux&target_arch=x86_64&target_distro=Ubuntu&target_version=1604&target_type=debnetwork
