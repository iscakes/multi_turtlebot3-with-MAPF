# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include".split(';') if "${prefix}/include" != "" else []
PROJECT_CATKIN_DEPENDS = "geometry_msgs;roscpp;rospy;sensor_msgs;std_msgs;nav_msgs;mapf_msgs;costmap_2d;tf2_geometry_msgs;tf2_ros;move_base_msgs;actionlib;roslib;pluginlib".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lcbs_planner_ros;-lecbs_planner_ros;-lsipp_planner_ros".split(';') if "-lcbs_planner_ros;-lecbs_planner_ros;-lsipp_planner_ros" != "" else []
PROJECT_NAME = "mapf_ros"
PROJECT_SPACE_DIR = "/home/wlm/cbs-new/install"
PROJECT_VERSION = "0.0.0"
