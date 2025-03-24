//
// Created by jalong on 2023/11/28.
//
#include <vector>
#include <limits>
#include "dijkstra_planner.hpp"

namespace dijkstra_planner {

std::vector<nav_graph::VertexProperty>
DijkstraShortestPath(const nav_graph::NavGraph& nav_graph,
                     const nav_graph::VertexDescriptor& start_vd,
                     const nav_graph::VertexDescriptor& end_vd) {
  std::vector<nav_graph::VertexProperty> path;
  const auto& graph = nav_graph.GetGraph();

  std::vector<double> distances( boost::num_vertices(graph));
  std::vector<nav_graph::VertexDescriptor> predecessors(boost::num_vertices(graph));

  boost::dijkstra_shortest_paths(graph, start_vd,
    boost::weight_map(boost::get(&nav_graph::EdgeProperty::weight, graph))
    .distance_map(boost::make_iterator_property_map(distances.begin(), boost::get(boost::vertex_index, graph)))
    .predecessor_map(boost::make_iterator_property_map(predecessors.begin(), boost::get(boost::vertex_index, graph)))
  );

  // Check if a path was found
  if (distances[end_vd] > 1e20) {
    std::cout << "No path found from " << start_vd << " to " << end_vd << std::endl;
    return path;
  }
  std::cout << "Found a shortest path from " << start_vd << " to " << end_vd
            << ", distance = " << distances[end_vd] << std::endl;
  // backtrace the path
  path.insert(path.begin(), graph[end_vd]);
  auto v = end_vd;
  while (v != start_vd) {
    auto parent_vd = predecessors[v];
    path.insert(path.begin(), graph[parent_vd]);
    v = parent_vd;
  }
  path.insert(path.begin(), graph[start_vd]);

  return path;
}

}
