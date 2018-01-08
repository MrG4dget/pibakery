#!/bin/bash


raspi-config nonint do_hostname "$2"
hostname -b "$2"
systemctl restart avahi-daemon
echo "export ROS_MASTER_URI=http://$2:11311" >> ~/.bashrc
echo "export ROS_HOSTNAME=$2" >> ~/.bashrc


mkdir -p /home/pi/"$1"/src
cd /home/pi/"$1"
catkin_make



