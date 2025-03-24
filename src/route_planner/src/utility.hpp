//
// Created by jalong on 2023/11/29.
//

#ifndef SRC_ROBINTROS_ROBINT_NAVIGATION_ROUTE_PLANNER_SRC_UTILITY_HPP_
#define SRC_ROBINTROS_ROBINT_NAVIGATION_ROUTE_PLANNER_SRC_UTILITY_HPP_

#include <tf/tf.h>
#include <nav_msgs/Path.h>
#include <geometry_msgs/PoseStamped.h>
#include <geometry_msgs/Pose2D.h>
#include <nav_msgs/OccupancyGrid.h>

struct MapInfo {
  std::string map_uuid;
  std::vector<float> origin;
  double width;
  double height;
};

using PoseStampedVector = std::vector<geometry_msgs::PoseStamped>;

inline float EuclideanDistance(const geometry_msgs::PoseStamped& pose, int x, int y) {
  return hypot(pose.pose.position.x - x, pose.pose.position.y - y);
}

inline float EuclideanDistance(const geometry_msgs::Pose2D& pose, int x, int y) {
  return hypot(pose.x - x, pose.y - y);
}

inline float EuclideanDistance(const geometry_msgs::PoseStamped& p1, const geometry_msgs::PoseStamped& p2) {
  return hypot(p1.pose.position.x - p2.pose.position.x, p1.pose.position.y - p2.pose.position.y);
}

inline double EuclideanDistance(const tf::Stamped<tf::Pose>& pose1, const tf::Stamped<tf::Pose>& pose2) {
  return hypot(pose1.getOrigin().x() - pose2.getOrigin().x(), pose1.getOrigin().y() - pose2.getOrigin().y());
}

inline double EuclideanDistance(const tf::Stamped<tf::Pose>& pose1, const geometry_msgs::PoseStamped& pose2) {
  return hypot(pose1.getOrigin().x() - pose2.pose.position.x, pose1.getOrigin().y() - pose2.pose.position.y);
}

inline float EuclideanDistance(double x1, double y1, double x2, double y2) {
  return hypot(x1 - x2, y1 - y2);
}

inline geometry_msgs::Pose convertToMapWorldPose(int pixel_x, int pixel_y,
                                                 std::vector<float> origin,
                                                 float width, float height,
                                                 float resolution) {
  geometry_msgs::Pose pose;
  pose.position.x = pixel_x * resolution + origin[0];
  pose.position.y = (height - pixel_y) * resolution + origin[1];
  pose.orientation = tf::createQuaternionMsgFromYaw((0 / 180.) * M_PI);
  return pose;
}

inline geometry_msgs::Pose2D convertToMapImagePose(const geometry_msgs::Pose& pose,
                                                   const std::vector<float>& origin,
                                                   float width, float height,
                                                   float resolution)
{
  geometry_msgs::Pose2D pose2d;
  pose2d.x = (pose.position.x - origin[0])/resolution;
  pose2d.y = height - (pose.position.y - origin[1])/resolution;

  tf::Quaternion quat;
  tf::quaternionMsgToTF(pose.orientation, quat);
  double roll, pitch, yaw;
  tf::Matrix3x3(quat).getRPY(roll, pitch, yaw);
  pose2d.theta = (yaw / M_PI) * 180.;
  return pose2d;
}

#endif //SRC_ROBINTROS_ROBINT_NAVIGATION_ROUTE_PLANNER_SRC_UTILITY_HPP_
