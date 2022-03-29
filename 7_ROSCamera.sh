sudo apt-get
sudo apt-get install ros-noetic-camera
sudo apt-get ros-noetic-libuvc-ros
sudo apt-get install v4l-utils

sudo apt-get update
sudo apt-get install ros-noetic-pcl-conversions
sudo apt-get install ros-noetic-pcl-ros
git clone https://github.com/ros-perception/ar_track_alvar.git -b noetic-devel
#copy on src of the catkin_ws´s Workspace
Catkin build
Source devel/setup.sh
