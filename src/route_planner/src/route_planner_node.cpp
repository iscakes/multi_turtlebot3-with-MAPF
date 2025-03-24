//
// Created by jalong on 2023/11/28.
//

#include "route_planner.hpp"

int main(int argc, char** argv) {
  ros::init(argc, argv, "route_planner_node");

  ros::NodeHandle nh("~");
  //route_planner::RoutePlanner rp(nh);
  tf2_ros::Buffer tf_buffer;
  tf2_ros::TransformListener tf_listener(tf_buffer);

  costmap_2d::Costmap2DROS costmap("global_costmap", tf_buffer);
  route_planner::RoutePlanner rp("route_planner", &costmap);
  ros::spin();
  return 0;
}
