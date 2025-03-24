//
// Created by jalong on 2023/11/28.
//

#ifndef SRC_ROBINTROS_ROBINT_NAVIGATION_ROUTE_PLANNER_SRC_ROUTE_PLANNER_H_
#define SRC_ROBINTROS_ROBINT_NAVIGATION_ROUTE_PLANNER_SRC_ROUTE_PLANNER_H_
#include <ros/ros.h>
#include <nav_core/base_global_planner.h>
#include <nav_msgs/GetPlan.h>
#include <costmap_2d/costmap_2d_ros.h>
#include <geometry_msgs/PoseStamped.h>
#include <tf2_ros/transform_listener.h>
#include <tf2_ros/buffer.h>


#include "nav_graph.hpp"
#include "dijkstra_planner.hpp"

namespace route_planner {

class RoutePlanner : public nav_core::BaseGlobalPlanner{
 public:
  //RoutePlanner(ros::NodeHandle& pnh);
  RoutePlanner();
  RoutePlanner(std::string name, costmap_2d::Costmap2DROS* costmap_ros);
  void initialize(std::string name, costmap_2d::Costmap2DROS* costmap_ros) override;
  bool makePlan(const geometry_msgs::PoseStamped& start,
                const geometry_msgs::PoseStamped& goal,
                std::vector<geometry_msgs::PoseStamped>& plan) override;
 private:
  bool HandleGetPlan(nav_msgs::GetPlanRequest& req,
                     nav_msgs::GetPlanResponse& res);
  void CurrentMapInfoCallback(const nav_msgs::OccupancyGrid::ConstPtr& msg); 
  boost::optional<nav_msgs::OccupancyGrid> QueryMapInfo(const std::string& map_uuid);
 // void CurrentMapInfoCallback(const robint_msgs::MapInfoConstPtr& msg);

  //boost::optional<MapInfo> QueryMapInfo(const std::string& map_uuid);

 private:
  ros::ServiceServer get_plan_srv_;
  ros::Subscriber current_map_info_sub_;

  std::unique_ptr<nav_graph::NavGraph> nav_graph_;
  std::string current_map_uuid_;
  costmap_2d::Costmap2DROS* costmap_ros_;
  bool initialized;
};


}
#endif //SRC_ROBINTROS_ROBINT_NAVIGATION_ROUTE_PLANNER_SRC_ROUTE_PLANNER_H_
