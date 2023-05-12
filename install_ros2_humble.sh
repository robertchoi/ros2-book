#!/bin/bash
# Apache License 2.0
# Copyright (c) 2012, KNLabs CO., LTD.

echo ""
echo "[Note] Target OS version  >>> Ubuntu 22.04.x (Jammy Jellyfish)"
echo "[Note] Target ROS version >>> ROS2 Humble Hawksbill"
echo ""
echo "PRESS [ENTER] TO CONTINUE THE INSTALLATION"
echo "IF YOU WANT TO CANCEL, PRESS [CTRL] + [C]"
read

echo "[#Update the package lists and upgrade them]"
sudo apt-get update -y
sudo apt-get upgrade -y

echo "[#Setup Locale]"
sudo locale-gen en_US en_US.UTF-8
sudo update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8
export LANG=en_US.UTF-8

echo "[#Setup Sources add Repository]"
sudo apt update && sudo apt install curl gnupg lsb-release -y
sudo curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -o /usr/share/keyrings/ros-archive-keyring.gpg
# add the repository to your sources list
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $(source /etc/os-release && echo $UBUNTU_CODENAME) main" | sudo tee /etc/apt/sources.list.d/ros2.list > /dev/null

echo "[#Install ROS2 Humble packages (for Desktop)]"
sudo apt update -y
sudo apt upgrade -y
#Desktop Install (Recommended): ROS, RViz, demos, tutorials.
sudo apt install ros-humble-desktop -y

echo "[#Execute ROS2 Environment]"
source /opt/ros/humble/setup.bash
echo "[#ROS2 Environment Setup]"
sh -c "echo \"source /opt/ros/humble/setup.bash\" >> ~/.bashrc"




echo "[Complete!!!!!]"
exit 0
