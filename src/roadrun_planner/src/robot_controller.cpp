#include <ros/ros.h>
#include <geometry_msgs/Twist.h>
#include <nav_msgs/Odometry.h>
#include <vector>
#include <cmath>

// 机器人状态
double robot_x = 0.0, robot_y = 0.0, robot_yaw = 0.0;
size_t current_target_index = 0;

// 路径点（箭头路径）
std::vector<std::pair<double, double>> path_points;

// 速度控制发布器
ros::Publisher vel_pub;

// 计算两点距离
double distance(double x1, double y1, double x2, double y2) {
    return sqrt(pow(x2 - x1, 2) + pow(y2 - y1, 2));
}

// 计算机器人朝向
double calculateYaw(double x1, double y1, double x2, double y2) {
    return atan2(y2 - y1, x2 - x1);
}

// 订阅里程计，更新机器人位置
void odomCallback(const nav_msgs::Odometry::ConstPtr& msg) {
    robot_x = msg->pose.pose.position.x;
    robot_y = msg->pose.pose.position.y;

    double qx = msg->pose.pose.orientation.x;
    double qy = msg->pose.pose.orientation.y;
    double qz = msg->pose.pose.orientation.z;
    double qw = msg->pose.pose.orientation.w;

    // 四元数转偏航角
    robot_yaw = atan2(2.0 * (qw * qz + qx * qy), 1.0 - 2.0 * (qy * qy + qz * qz));
}

// 机器人沿箭头路径前进
void moveToTarget() {
    if (current_target_index >= path_points.size()) {
        ROS_INFO("已到达最终目标点，机器人停止！");
        return;
    }

    std::pair<double, double> target = path_points[current_target_index];
    double target_x = target.first;
    double target_y = target.second;

    double goal_yaw = calculateYaw(robot_x, robot_y, target_x, target_y);
    double dist = distance(robot_x, robot_y, target_x, target_y);

    geometry_msgs::Twist cmd_vel;
    double yaw_error = goal_yaw - robot_yaw;

    // 角速度调整
    if (yaw_error > M_PI) yaw_error -= 2 * M_PI;
    if (yaw_error < -M_PI) yaw_error += 2 * M_PI;
    cmd_vel.angular.z = 0.5 * yaw_error;

    // 线速度调整
    if (fabs(yaw_error) < 0.2) {
        cmd_vel.linear.x = 0.5 * dist;
    }

    // 发布控制命令
    vel_pub.publish(cmd_vel);

    // 如果到达目标点，切换下一个
    if (dist < 0.2) {
        ROS_INFO("到达目标点 (%.2f, %.2f)，切换到下一个", target_x, target_y);
        current_target_index++;
    }
}

int main(int argc, char** argv) {
    ros::init(argc, argv, "robot_controller");
    ros::NodeHandle nh;

    // 订阅里程计
    ros::Subscriber odom_sub = nh.subscribe("/odom", 10, odomCallback);

    // 速度发布
    vel_pub = nh.advertise<geometry_msgs::Twist>("/cmd_vel", 10);

    // 载入箭头路径
    path_points = {
        {-3.0, -4.0}, {-3.0, 0.0}, {-3.0, 0.7}, {-3.0, 4.7},
        {-0.7, 4.7}, {-0.7, 0.7}, {-0.7, 0.0}, {-0.7, -4.0},
        {0.1, -4.0}, {0.1, 0.0}, {0.1, 0.7}, {0.1, 4.7},
        {2.5, 4.7}, {2.5, 0.7}, {2.5, 0.0}, {2.5, -4.0},
        {3.4, -4.0}, {3.4, -0.7}, {3.4, 0.0}, {3.4, 4.7},
        {3.4, 5.1}, {-3.9, 5.1}, {-3.9, -4.0}, {-3.0, -4.0}
    };

    // 运行控制循环
    ros::Rate rate(10);
    while (ros::ok()) {
        moveToTarget();
        ros::spinOnce();
        rate.sleep();
    }

    return 0;
}

