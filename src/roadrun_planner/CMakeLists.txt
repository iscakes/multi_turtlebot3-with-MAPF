cmake_minimum_required(VERSION 3.0.2)
project(roadrun_planner)
find_package(catkin REQUIRED COMPONENTS
  actionlib
  costmap_2d
  geometry_msgs
  move_base
  nav_msgs
  roscpp
  rospy
  std_msgs
  tf
)
catkin_package(

)

include_directories(
  ${catkin_INCLUDE_DIRS}
)

add_executable(roadrun_planner src/roadrun_planner.cpp)

target_link_libraries(roadrun_planner ${catkin_LIBRARIES})

add_executable(robot_controller src/robot_controller.cpp)
target_link_libraries(robot_controller ${catkin_LIBRARIES}) 
