//
// Created by jalong on 2023/11/28.
//

#include "nav_graph.hpp"
#include "path_processor.hpp"
#include <yaml-cpp/yaml.h>

namespace nav_graph {

bool NavGraph::BuildGraph(const std::string& yaml_path) {
  YAML::Node file = YAML::LoadFile(yaml_path);
  if (file["levels"].IsDefined()) {
    const auto& levels = file["levels"];
    if (levels["L0"].IsDefined()) {
      const auto& L0 = levels["L0"];

      std::vector<VertexDescriptor> vertex_vec;
      //std::cout << "Loading YAML file from: " << yaml_path << std::endl;
      // Add Vertices
      if (L0["vertices"].IsDefined()) {
        // TODO::
        const auto& vertices = L0["vertices"];
        int count = 0;
        for (auto it = vertices.begin(); it != vertices.end(); it++) {
          float pixel_x = (*it)[0].as<float>();
          float pixel_y = (*it)[1].as<float>();
          int index = count++;
//          std::cout << index << " - " << pixel_x << " - " << pixel_y << std::endl;
          auto v = boost::add_vertex(graph_);
          graph_[v].index = index;
          graph_[v].pixel_x = pixel_x;
          graph_[v].pixel_y = pixel_y;
          vertex_vec.push_back(v);
        }
      }

      // Add Lanes
      if (L0["lanes"].IsDefined()) {
        // TODO::
        const auto& lanes = L0["lanes"];
        assert(lanes.IsSequence());

        for (auto it = lanes.begin(); it != lanes.end(); it++) {
          int start_vertex_ind = (*it)[0].as<int>();
          int end_vertex_ind = (*it)[1].as<int>();
          const auto& property = (*it)[2];
          bool bidirectional = false;
          if ((*it)[2] && (*it)[2].IsMap() && (*it)[2]["is_bidirectional"]) {
              bidirectional = (*it)[2]["is_bidirectional"].as<bool>();
          }

          // compute distance between both vertices
          auto start_vd = vertex_vec[start_vertex_ind];
          auto end_vd = vertex_vec[end_vertex_ind];
          auto diff_x = graph_[start_vd].pixel_x - graph_[end_vd].pixel_x;
          auto diff_y = graph_[start_vd].pixel_y - graph_[end_vd].pixel_y;
          auto dist_square = diff_x * diff_x + diff_y * diff_y;
          float dist = 0.f;
          if (dist_square > 0) {
            dist = std::sqrt(dist_square);
          }

          std::pair<EdgeDescriptor , bool> edge = boost::add_edge(vertex_vec[start_vertex_ind],
                                                                  vertex_vec[end_vertex_ind],
                                                                  graph_);
          if (edge.second) {
            graph_[edge.first].start_vertex_index = start_vertex_ind;
            graph_[edge.first].end_vertex_index = end_vertex_ind;
            graph_[edge.first].weight = dist;
          }

          if (bidirectional) {
            std::pair<EdgeDescriptor , bool> reversed_edge = boost::add_edge(vertex_vec[end_vertex_ind],
                                                                    vertex_vec[start_vertex_ind],
                                                                    graph_);
            if (reversed_edge.second) {
              graph_[reversed_edge.first].start_vertex_index = end_vertex_ind;
              graph_[reversed_edge.first].end_vertex_index = start_vertex_ind;
              graph_[reversed_edge.first].weight = dist;
            }
          }
//          std::cout << start_vertex_ind << " - " << end_vertex_ind << " - " << bidirectional << std::endl;
        }

      }

    }
  }

  if (file["map_info"].IsDefined()) {
    const auto& map_info = file["map_info"];
    map_uuid_ = map_info["map_uuid"].as<std::string>();
    if (map_info["width"].IsDefined()) {
      map_width_ = map_info["width"].as<int>();
    }
    if (map_info["height"].IsDefined()) {
      map_height_ = map_info["height"].as<int>();
    }
    if (map_info["origin"].IsDefined() and map_info["origin"].IsSequence()) {
      map_origin_.push_back(map_info["origin"][0].as<float>());
      map_origin_.push_back(map_info["origin"][1].as<float>());
      map_origin_.push_back(map_info["origin"][2].as<float>());
    }
  }

  PrintGraph();

  return false;
}

/**
 * @param pose : under world frame
 * @return nearest vertex descriptor
 */
boost::optional<VertexDescriptor> NavGraph::QueryNearestVertex(const geometry_msgs::PoseStamped& pose) {

  auto image_pose = convertToMapImagePose(pose.pose, map_origin_, map_width_, map_height_, 0.05);

  float min_dist = 1e10;
  VertexDescriptor nearest_vd;
  auto vertices_loop = boost::vertices(graph_);
  for (auto vi = vertices_loop.first; vi != vertices_loop.second; ++vi) {
    auto& vertex = graph_[*vi];
    auto dist = EuclideanDistance(image_pose, vertex.pixel_x, vertex.pixel_y);
    if (dist < min_dist) {
      min_dist = dist;
      nearest_vd = *vi;
    }
  }

  std::cout << "min_dist " << min_dist << std::endl;
  if (min_dist < kPointTolerance) {
    return nearest_vd;
  } else {
    return boost::none;
  }
}

/**
 * Convert vertex sequence to nav_msgs::Path
 * @param vertex_list
 * @return
 */
nav_msgs::Path NavGraph::ConvertToNavMsgPath(const std::vector<VertexProperty>& vertex_list) {
  PoseStampedVector pose_vector;
  for (int i = 0; i < vertex_list.size(); ++i) {
    auto& vertex = vertex_list[i];
    geometry_msgs::PoseStamped pose;
    pose.pose = convertToMapWorldPose(vertex.pixel_x, vertex.pixel_y, map_origin_,
        map_width_, map_height_, 0.05);
    pose.header.frame_id = "map";
    pose_vector.push_back(pose);
  }

  path_processor::InterpolatePath(pose_vector);
  nav_msgs::Path path;


  //nav_msgs::Path path;
  path.header.frame_id = "map";
  path.poses = pose_vector;

  return path;
}

void NavGraph::PrintGraph() {
  std::cout << "----------------------------------------------------" << std::endl;
  std::cout << "| ";
  std::cout << "NavGraph Information --> " << std::endl;
  std::cout << "| ";
  std::cout << "Vertices Number : " << boost::num_vertices(graph_) << std::endl;
  std::cout << "| ";
  std::cout << "Edges Number : " << boost::num_edges(graph_) << std::endl;
  std::cout << "----------------------------------------------------" << std::endl;
}

}
