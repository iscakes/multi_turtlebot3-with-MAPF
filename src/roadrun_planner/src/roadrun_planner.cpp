#include <ros/ros.h>
#include <visualization_msgs/Marker.h>
#include <geometry_msgs/Point.h>
#include <geometry_msgs/PoseStamped.h>
#include <cmath>
#include <vector>
#include <tf2/LinearMath/Quaternion.h> 
#include <tf2_geometry_msgs/tf2_geometry_msgs.h> 

// 结构体：存储路网点的 x, y, z 和姿态角（theta）
struct RoadPoint {
    double x, y, z, theta;
};

// 定义路网数据，每个点包含姿态角（假设初始姿态角为 0）
std::vector<RoadPoint> road_network = {
   {-3.0,-4.0,0.0,1.5708},{-3.0,0.0,0.0,1.5708},{-3.0,0.7,0.0,1.5708},{-3.0,4.7,0.0,0.0},{-0.7,4.7,0.0,-1.5708},{-0.7,0.7,0.0,-1.5708},{-0.7,0.0,0.0,-1.5708},{-0.7,-4.0,0.0,0.0},{0.1,-4.0,0.0,1.5708},{0.1,0.0,0.0,1.5708},{0.1,0.7,0.0,1.5708},{0.1,4.7,0.0,0.0},{2.5,4.7,0.0,-1.5708},{2.5,0.7,0.0,-1.5708},{2.5,0.0,0.0,-1.5708},{2.5,-4.0,0.0,0.0},{3.4,-4.0,0.0,1.5708},{3.4,-0.7,0.0,1.5708},{3.4,0.0,0.0,1.5708},{3.4,4.7,0.0,1.5708},{3.4,5.1,0.0,3.1416},{-3.9,5.1,0.0,-1.5708},{-3.9,-4.0,0.0,0.0},{-3.0,-4.0,0.0,0.0}
};

// 计算两点距离
double distance(const RoadPoint& p1, const RoadPoint& p2) {
    return sqrt(pow(p1.x - p2.x, 2) + pow(p1.y - p2.y, 2));
}

// 计算贝塞尔曲线点
std::vector<geometry_msgs::Point> bezierCurve(const RoadPoint& p1, const RoadPoint& p2) {
    std::vector<geometry_msgs::Point> curve;
    
    geometry_msgs::Point start, end, control;
    start.x = p1.x; start.y = p1.y; start.z = p1.z;
    end.x = p2.x; end.y = p2.y; end.z = p2.z;

    // 控制点位于两点的中点，稍微偏移让曲线更柔和
    control.x = (p1.x + p2.x) / 2 + 0.5 * cos(p1.theta);
    control.y = (p1.y + p2.y) / 2 + 0.5 * sin(p1.theta);
    control.z = (p1.z + p2.z) / 2;

    // 生成曲线上的多个点
    for (double t = 0; t <= 1; t += 0.1) {
        geometry_msgs::Point pt;
        pt.x = (1 - t) * (1 - t) * start.x + 2 * (1 - t) * t * control.x + t * t * end.x;
        pt.y = (1 - t) * (1 - t) * start.y + 2 * (1 - t) * t * control.y + t * t * end.y;
        pt.z = (1 - t) * (1 - t) * start.z + 2 * (1 - t) * t * control.z + t * t * end.z;
        curve.push_back(pt);
    }
    
    return curve;
}

void publishRoadNetwork(ros::Publisher& marker_pub) {
    for (size_t i = 0; i < road_network.size() - 1; ++i) {
        RoadPoint p1 = road_network[i];
        RoadPoint p2 = road_network[i + 1];

        // 计算方向角
        double dx = p2.x - p1.x;
        double dy = p2.y - p1.y;
        double yaw = atan2(dy, dx);  // 计算 p1 → p2 方向角（弧度）
        double distance = sqrt(dx * dx + dy * dy); 

        // 创建箭头标记
        visualization_msgs::Marker arrow_marker;
        arrow_marker.header.frame_id = "map";
        arrow_marker.header.stamp = ros::Time::now();
        arrow_marker.ns = "road_network_arrow";
        arrow_marker.id = i;
        arrow_marker.type = visualization_msgs::Marker::ARROW;
        arrow_marker.action = visualization_msgs::Marker::ADD;

        // 设置箭头尺寸
         arrow_marker.scale.x = distance;  // 箭杆长度
        arrow_marker.scale.y = 0.05;  // 箭头宽度
        arrow_marker.scale.z = 0.1;  // 箭头高度

        // 箭头颜色（绿色）
        arrow_marker.color.a = 1.0;
        arrow_marker.color.g = 1.0;

        // 设置箭头起点（放在 p1 处）
        arrow_marker.pose.position.x = p1.x;
        arrow_marker.pose.position.y = p1.y;
        arrow_marker.pose.position.z = p1.z;

        // 计算四元数，旋转箭头方向
        tf2::Quaternion q;
        q.setRPY(0, 0, yaw);  // 设置 yaw 角（绕 Z 轴旋转）
        arrow_marker.pose.orientation = tf2::toMsg(q);

        marker_pub.publish(arrow_marker);
    }

    // 添加点编号文字
    for (size_t i = 0; i < road_network.size(); ++i) {
        RoadPoint p = road_network[i];

        visualization_msgs::Marker text_marker;
        text_marker.header.frame_id = "map";
        text_marker.header.stamp = ros::Time::now();
        text_marker.ns = "road_network_text";
        text_marker.id = i + 1000;  // 确保 ID 唯一
        text_marker.type = visualization_msgs::Marker::TEXT_VIEW_FACING;
        text_marker.action = visualization_msgs::Marker::ADD;
        
        // 文字显示位置（提高 0.3m，避免重叠）
        text_marker.pose.position.x = p.x;
        text_marker.pose.position.y = p.y;
        text_marker.pose.position.z = p.z + 0.3;
        
        // 文字内容（点编号）
        text_marker.text = std::to_string(i);
        
        // 文字大小
        text_marker.scale.z = 0.3;
        
        // 文字颜色（黑色）
        text_marker.color.a = 1.0;
        text_marker.color.r = 0.0;
        text_marker.color.g = 0.0;
        text_marker.color.b = 0.0;

        marker_pub.publish(text_marker);
    }
}




int main(int argc, char** argv) {
    ros::init(argc, argv, "road_network_node");
    ros::NodeHandle nh;
    ros::Publisher marker_pub = nh.advertise<visualization_msgs::Marker>("road_network_marker", 10);
    ros::Rate rate(1);

    while (ros::ok()) {
        publishRoadNetwork(marker_pub);
        ros::spinOnce();
        rate.sleep();
    }

    return 0;
}


