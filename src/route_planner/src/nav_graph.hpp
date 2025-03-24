//
// Created by jalong on 2023/11/28.
//
#ifndef SRC_ROBINTROS_ROBINT_NAVIGATION_ROUTE_PLANNER_SRC_ROAD_GRAPH_H_
#define SRC_ROBINTROS_ROBINT_NAVIGATION_ROUTE_PLANNER_SRC_ROAD_GRAPH_H_


#include <iostream>

#include <boost/graph/graph_traits.hpp>
#include <boost/graph/adjacency_list.hpp>
#include <boost/optional.hpp>

#include "utility.hpp"

namespace nav_graph {

struct VertexProperty {
  int index;
  std::string name;
  float pixel_x;
  float pixel_y;
};

struct EdgeProperty {
  float weight;
  int start_vertex_index;
  int end_vertex_index;
};

using Graph = boost::adjacency_list<boost::vecS, boost::vecS, boost::directedS, VertexProperty, EdgeProperty>;
using VertexDescriptor = boost::graph_traits<Graph>::vertex_descriptor;
using EdgeDescriptor = boost::graph_traits<Graph>::edge_descriptor;

class NavGraph {
 public:
  float kPointTolerance = 2.0 / 0.05;

 public:
  NavGraph() = default;
  virtual ~NavGraph() = default;

  bool BuildGraph(const std::string& yaml_path);

  inline void SetMapInfo(const nav_msgs::OccupancyGrid& map_info) {
    map_info_.map_uuid = map_uuid_; 
    map_info_.origin = {map_info.info.origin.position.x, map_info.info.origin.position.y};
    //map_info_ = map_info;
    map_origin_ = map_info_.origin;
    map_width_ = map_info_.width;
    map_height_ = map_info_.height;
  }

  boost::optional<VertexDescriptor> QueryNearestVertex(const geometry_msgs::PoseStamped& pose);

  inline const Graph& GetGraph() const {
    return graph_;
  }

  std::string GetMapUUID() const {
    return map_uuid_;
  }

  nav_msgs::Path ConvertToNavMsgPath(const std::vector<nav_graph::VertexProperty>& vertex_list);

 private:
  void PrintGraph();

 private:
  Graph graph_;
  std::string map_uuid_;
  MapInfo map_info_;
  std::vector<float> map_origin_;
  int map_width_, map_height_;

};


}
#endif //SRC_ROBINTROS_ROBINT_NAVIGATION_ROUTE_PLANNER_SRC_ROAD_GRAPH_H_
