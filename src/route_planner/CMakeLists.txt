cmake_minimum_required(VERSION 3.0.2)
project(route_planner)

## Compile as C++11, supported in ROS Kinetic and newer
add_compile_options(-std=c++11)
find_package(catkin REQUIRED COMPONENTS
  roscpp
  pluginlib
  nav_core
  costmap_2d
  robint_msgs
  geometry_msgs  
  nav_msgs
  tf
)
find_package(Boost REQUIRED)
## DEPENDS: system dependencies of this project that dependent projects also need
catkin_package(
   #INCLUDE_DIRS include
   LIBRARIES route_planner
   #CATKIN_DEPENDS roscpp
#  DEPENDS system_lib
   CATKIN_DEPENDS roscpp pluginlib nav_core costmap_2d tf geometry_msgs nav_msgs
)
## Build ##
###########
include_directories(
  #include
  ${catkin_INCLUDE_DIRS}
)

file(GLOB_RECURSE CPP_FILES src/*.cpp)
#add_executable(route_planner
    #${CPP_FILES})
add_library(route_planner SHARED
    ${CPP_FILES})
add_dependencies(route_planner
    ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
#add_library(route_planner
    #src/route_planner.cpp)
target_link_libraries(route_planner
    ${catkin_LIBRARIES}
    ${Boost_LIBRARIES}
    yaml-cpp
    ${PLUGINLIB_LIBRARIES}
)
install(FILES 
  ${CMAKE_CURRENT_SOURCE_DIR}/plugin.xml
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)
install(TARGETS 
  route_planner
  #ARCHIVE DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
  LIBRARY DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
  #RUNTIME DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)


install(DIRECTORY 
  launch config
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)

