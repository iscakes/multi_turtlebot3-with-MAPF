//
// Created by jalong on 2023/11/28.
//

#ifndef SRC_ROBINTROS_ROBINT_NAVIGATION_ROUTE_PLANNER_SRC_DIJKSTRA_PLANNER_H_
#define SRC_ROBINTROS_ROBINT_NAVIGATION_ROUTE_PLANNER_SRC_DIJKSTRA_PLANNER_H_

#include "nav_graph.hpp"
#include "utility.hpp"

#include <boost/graph/dijkstra_shortest_paths.hpp>
#include <boost/property_map/property_map.hpp>

namespace dijkstra_planner {

std::vector<nav_graph::VertexProperty>
DijkstraShortestPath(const nav_graph::NavGraph& nav_graph,
                     const nav_graph::VertexDescriptor& start_vd,
                     const nav_graph::VertexDescriptor& end_vd);


}





#endif //SRC_ROBINTROS_ROBINT_NAVIGATION_ROUTE_PLANNER_SRC_DIJKSTRA_PLANNER_H_
