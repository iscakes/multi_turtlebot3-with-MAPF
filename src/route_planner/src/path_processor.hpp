//
// Created by jalong on 2023/11/29.
//

#ifndef SRC_ROBINTROS_ROBINT_NAVIGATION_ROUTE_PLANNER_SRC_PATH_PROCESSOR_H_
#define SRC_ROBINTROS_ROBINT_NAVIGATION_ROUTE_PLANNER_SRC_PATH_PROCESSOR_H_

#include "utility.hpp"

namespace path_processor {

constexpr double kInterpolationResolution = 0.05;

inline bool InterpolateLine(const geometry_msgs::PoseStamped& start,
                     const geometry_msgs::PoseStamped& goal,
                     double point_separation, PoseStampedVector& line) {
  line.clear();
  double dist_sep = std::max(kInterpolationResolution, std::min(0.5, point_separation));
  double line_length = EuclideanDistance(start, goal);
  geometry_msgs::PoseStamped line_start = start;
  line_start.header.stamp = ros::Time::now();
  line.push_back(line_start);

  if (line_length <= dist_sep) {
    return true;
  }

  // compute line direction
  double line_delta_x = goal.pose.position.x - start.pose.position.x;
  double line_delta_y = goal.pose.position.y - start.pose.position.y;
  double line_direction = std::atan2(line_delta_y, line_delta_x);

  // interpolate line
  geometry_msgs::PoseStamped line_end = goal;
  line_end.header.stamp = ros::Time::now();
  if (line_length > dist_sep) {
    double dx = dist_sep * std::cos(line_direction);
    double dy = dist_sep * std::sin(line_direction);
    double no_steps_d = line_length / std::abs(dist_sep); // ignore negative values
    unsigned int no_steps = (unsigned int) std::floor(no_steps_d);
    for (unsigned int i = 1; i <= no_steps; i++) // start with 1! starting point had index 0
    {
      if (i == no_steps && no_steps_d == (float) no_steps) {
        break;
      }
      geometry_msgs::PoseStamped line_pose;
      line_pose.pose.position.x = start.pose.position.x + i * dx;
      line_pose.pose.position.y = start.pose.position.y + i * dy;
      line_pose.pose.orientation = tf::createQuaternionMsgFromYaw(line_direction);
      line_pose.header = line_end.header;
      line.push_back(line_pose);
    }
  }

  return true;
  // TODO:: remove end point
  // line.push_back(line_end);
}

inline bool InterpolatePath(PoseStampedVector& path) {
  if (path.size() < 2) {
//    RLOG_ERROR("Please check path size %zu", path.size());
    return false;
  }
  PoseStampedVector result_path;
  double resolution = kInterpolationResolution;
  for (int i = 0; i < path.size() - 1; i++) {
    auto start = path[i];
    auto goal = path[i + 1];
    std::vector<geometry_msgs::PoseStamped> plan;
    InterpolateLine(start, goal, resolution, plan);
    result_path.insert(result_path.end(), plan.begin(), plan.end());
    double len = EuclideanDistance(start, goal);
//    RLOG_INFO("line ({:.2f} {:.2f})->({:.2f} {:.2f}) {:.2f}", start.pose.position.x,
//              start.pose.position.y, goal.pose.position.x, goal.pose.position.y, len);
  }
  result_path.push_back(path.back());
  path = result_path;
  return true;
}

inline double ComputePathLength(const PoseStampedVector& path) {
  double accumulated_dist = 0;
  for (int i = 0; i < path.size() - 1; i++) {
    double dis = EuclideanDistance(path[i], path[i + 1]);
    accumulated_dist += dis;
  }
  return accumulated_dist;
}

}

#endif //SRC_ROBINTROS_ROBINT_NAVIGATION_ROUTE_PLANNER_SRC_PATH_PROCESSOR_H_
