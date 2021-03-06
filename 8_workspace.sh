sudo apt-get -y update
sudo apt-get -y upgrade

source /opt/ros/noetic/setup.bash
mkdir -p ~/laviria/catkin_ws/src
cd ~/laviria/catkin_ws/
catkin build
echo "source \$HOME/laviria/catkin_ws/devel/setup.bash" >> ~/.bashrc
source .bashrc 
##        AR_TRAC_ALVAR
cd
git clone https://github.com/ros-perception/ar_track_alvar/tree/noetic-devel
cd ar_track_alvar/
mv ar_track_alvar ar_track_alvar_msgs/ ar_track_alvar.rosinstall /home/miguel/laviria/catkin_ws/
cd
cd ~/laviria/catkin_ws/
catkin build
source devel/setup.sh
###       trabajo con AR_TRAC_ALVAR
cd
git clone https://github.com/MiguelSantillanL/ROS_Cam_ARTag.git
cd ROS_Cam_ARTag/catkin_ws/
mv src/ /home/miguel/laviria/catkin_ws/
cd
cd ~/laviria/catkin_ws/
catkin build
source devel/setup.sh

