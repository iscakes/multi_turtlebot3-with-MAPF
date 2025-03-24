//
// Created by jalong on 2023/11/28.
//

#include "route_planner.hpp"
#include <nav_msgs/GetMap.h> 
#include <nav_msgs/OccupancyGrid.h>
#include <pluginlib/class_list_macros.h>

namespace route_planner {

RoutePlanner::RoutePlanner() : initialized(false) {}
RoutePlanner::RoutePlanner(std::string name, costmap_2d::Costmap2DROS* costmap_ros) {
  initialize(name, costmap_ros);
}
//RoutePlanner::RoutePlanner(ros::NodeHandle& pnh) {
void RoutePlanner::initialize(std::string name, costmap_2d::Costmap2DROS* costmap_ros) {
  if(!initialized){
  // Initialize ros related stuff
  costmap_ros_ = costmap_ros;
  ros::NodeHandle pnh("~" + name); 
  get_plan_srv_ = pnh.advertiseService("get_plan", &RoutePlanner::HandleGetPlan, this);
  current_map_info_sub_ = pnh.subscribe("/map", 1,
                                        &RoutePlanner::CurrentMapInfoCallback, this);
  // TODO:: maintain a map container for nav_graph storage
  // TODO:: each map has their own nav_graph
  // Initialize NavGraph
  nav_graph_.reset(new nav_graph::NavGraph);
  std::string yaml_path = "/home/wlm/cbs-new/src/route_planner/0.yaml";
  nav_graph_->BuildGraph(yaml_path);
  initialized = true;
  //std::string map_uuid = nav_graph_->GetMapUUID();
  //std::cout << "map_uuid -> " << map_uuid << std::endl;
  //auto map_info = QueryMapInfo(map_uuid);
  //if (map_info) {
    //printf("Set Map Info Success\n");
    //nav_graph_->SetMapInfo(*map_info);
    //nav_msgs::OccupancyGrid converted_map_info = *map_info;
    //converted_map_info.width = map_info->info.width;
    //converted_map_info.height = map_info->info.height;
    //converted_map_info.resolution = map_info->info.resolution;
    //nav_graph_->SetMapInfo(converted_map_info);
    //nav_graph_->SetMapInfo(*map_info);
  }

}

bool RoutePlanner::makePlan(const geometry_msgs::PoseStamped& start,
                            const geometry_msgs::PoseStamped& goal,
                            std::vector<geometry_msgs::PoseStamped>& plan) {
  if (!initialized) {
    ROS_ERROR("RoutePlanner has not been initialized, cannot create plan!");
    return false;
  }
//bool RoutePlanner::HandleGetPlan(nav_msgs::GetPlanRequest& req,
                                 //nav_msgs::GetPlanResponse& res) {

  auto start_vertex = nav_graph_->QueryNearestVertex(start);//req.start);
  if (!start_vertex) {
    //res.success = false;
    return false;
  }

  auto end_vertex = nav_graph_->QueryNearestVertex(goal);//req.goal);
  if (!end_vertex) {
    //res.success = false;
    return false;
  }

  auto vertex_path = dijkstra_planner::DijkstraShortestPath(*nav_graph_, *start_vertex, *end_vertex);

  if (vertex_path.empty()) {
    //res.success = false;
    return false;
  } else {
    //res.plan = nav_graph_->ConvertToNavMsgPath(vertex_path);
    nav_msgs::Path path = nav_graph_->ConvertToNavMsgPath(vertex_path);
    plan = path.poses; 
    //res.success = true;
  }
  return true;
}

//void RoutePlanner::CurrentMapInfoCallback(const nav_msgs::MapInfoConstPtr& msg) 
void RoutePlanner::CurrentMapInfoCallback(const nav_msgs::OccupancyGrid::ConstPtr& msg){
    current_map_uuid_ = "default_map";
  //current_map_uuid_ = msg->uuid;
}

boost::optional<nav_msgs::OccupancyGrid> RoutePlanner::QueryMapInfo(const std::string& map_uuid) {
  std::string service_name = "/static_map";
  while (ros::ok()) {
    if (ros::service::exists(service_name.c_str(), true)) {
      break;
    }
  }
    nav_msgs::GetMap::Request req;
    nav_msgs::GetMap::Response res;
  //robint_msgs::GetMapInfo::Request req;
  //robint_msgs::GetMapInfo::Response res;
  //req.map_uuid = map_uuid;
  if (ros::service::call(service_name, req, res)) {
    return res.map;
   // if (res.success) {
     // MapInfo map_info;
      //map_info.map_uuid = map_uuid;
      //map_info.origin = res.map_info.origin;
      //map_info.width = res.map_info.width;
      //map_info.height = res.map_info.height;
     // return map_info;
   // } else {
      //return boost::none;
    //}
    //return boost::none;
  }
  return boost::none;
}

}
PLUGINLIB_EXPORT_CLASS(route_planner::RoutePlanner, nav_core::BaseGlobalPlanner)

