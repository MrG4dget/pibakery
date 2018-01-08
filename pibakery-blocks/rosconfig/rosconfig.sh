#!/bin/bash

sed -i "/ROS_MASTER_URI/c ROS_MASTER_URI=http://$1:11311" /home/pi/.bashrc




