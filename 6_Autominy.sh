#                                    AutoMiny
git clone https://github.com/autominy/autominy
cd autominy/catkin_ws
sudo apt install python3-catkin-tools python3-osrf-pycommon
rosdep install --from-paths . --ignore-src --rosdistro=noetic -y
catkin build
source devel/setup.bash # if using bash
cd
echo "source \$HOME/autominy/catkin_ws/devel/setup.bash" >> ~/.bashrc
source .bashrc
sudo apt-get -y update
sudo apt-get -y upgrade
