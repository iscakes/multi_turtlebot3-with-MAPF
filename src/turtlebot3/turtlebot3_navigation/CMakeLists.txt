# Set minimum required version of cmake, project name and compile options
################################################################################
cmake_minimum_required(VERSION 3.0.2)
project(turtlebot3_navigation)

################################################################################
# Find catkin packages and libraries for catkin and system dependencies
find_package(catkin REQUIRED)
# Setup for python modules and scripts
# Declare ROS messages, services and actions
# Declare ROS dynamic reconfigure parameters
# Declare catkin specific configuration to be passed to dependent projects
################################################################################
catkin_package()
# Build
# Install
################################################################################
install(DIRECTORY launch maps param rviz
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)
# Test
################################################################################
catkin_install_python(PROGRAMS
  metrics_logger.py
  multi_robot_goal_sender.py

  DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)

