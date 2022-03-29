#       Instalacion de ROS Noetic
sudo apt-get -y update

#       Setup your computer to accept software from packages.ros.org.
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'

#       Set up your keys
sudo apt install curl # if you haven't already installed curl
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -

#       Installation - First, make sure your Debian package index is up-to-date:
sudo apt update

#       Now pick how much of ROS you would like to install.
#       Desktop-Full Install: (Recommended) : Everything in Desktop plus 2D/3D simulators and 2D/3D perception packages
sudo apt install ros-noetic-desktop-full
#Desktop Install: Everything in ROS-Base plus tools like rqt and rviz
#sudo apt install ros-noetic-desktop
#ROS-Base: (Bare Bones) ROS packaging, build, and communication libraries. No GUI tools.
#sudo apt install ros-noetic-ros-base

#           Environment setup
#           You must source this script in every bash terminal you use ROS in.
source /opt/ros/noetic/setup.bash

echo "source /opt/ros/noetic/setup.bash" >> ~/.bashrc
source ~/.bashrc

#       Dependencies for building packages
sudo apt install python3-rosdep python3-rosinstall python3-rosinstall-generator python3-wstool build-essential

#               Initialize rosdep
sudo apt install python3-rosdep

#               With the following, you can initialize rosdep.
sudo rosdep init
rosdep update

