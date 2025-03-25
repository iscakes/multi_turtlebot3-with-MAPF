#!/usr/bin/env python
import rospy
import yaml
import tf.transformations  # 处理四元数
from visualization_msgs.msg import Marker, MarkerArray
from geometry_msgs.msg import Point, Quaternion

# 读取 YAWL 文件
def load_yawl(file_path):
    with open(file_path, "r", encoding="utf-8") as file:
        return yaml.safe_load(file)

# 发布 Marker 进行可视化
class YawlVisualizer:
    def __init__(self):
        rospy.init_node("yawl_visualizer", anonymous=True)
        self.marker_pub = rospy.Publisher("yawl_markers", MarkerArray, queue_size=10)
        rospy.sleep(1)  # 等待 ROS 初始化

    def visualize_yawl(self, yawl_data):
        marker_array = MarkerArray()
        vertices = yawl_data["levels"]["L0"]["vertices"]
        lanes = yawl_data["levels"]["L0"]["lanes"]

        # 1️⃣ 创建点位 Marker
        for i, vertex in enumerate(vertices):
            x, y = vertex[:2]
            y += 132.3  # **修正 y 坐标**
            
            marker = Marker()
            marker.header.frame_id = "map"
            marker.header.stamp = rospy.Time.now()
            marker.ns = "vertices"
            marker.id = i
            marker.type = Marker.SPHERE
            marker.action = Marker.ADD
            marker.pose.position.x = x
            marker.pose.position.y = y
            marker.pose.position.z = 0  # 地面
            marker.pose.orientation = Quaternion(0, 0, 0, 1)  # **修正四元数**
            marker.scale.x = 0.3  # 直径
            marker.scale.y = 0.3
            marker.scale.z = 0.3
            marker.color.a = 1.0
            marker.color.r = 0.0
            marker.color.g = 1.0  # 绿色
            marker.color.b = 0.0
            marker_array.markers.append(marker)

        # 2️⃣ 创建道路连线 Marker
        for lane_id, lane in enumerate(lanes):
            if len(lane) < 3:
                rospy.logwarn(f"⚠️ 路径数据格式错误: {lane}，跳过")
                continue

            start_idx, end_idx, lane_info = lane[0], lane[1], lane[2]  # 确保正确解析

            if not lane_info or "is_bidirectional" not in lane_info:
                #rospy.logwarn(f"⚠️ 路径 {start_idx} → {end_idx} 缺少 is_bidirectional，默认设为 True（双向）")
                lane_info = {"is_bidirectional": True}  # 直接创建新的字典，防止 KeyError

            start_vertex = vertices[start_idx]
            end_vertex = vertices[end_idx]

            start_point = Point(x=start_vertex[0], y=start_vertex[1] + 132.3, z=0)  # **修正 y 坐标**
            end_point = Point(x=end_vertex[0], y=end_vertex[1] + 132.3, z=0)

            # ✅ 每条路径创建一个新的 Marker
            line_marker = Marker()
            line_marker.header.frame_id = "map"
            line_marker.header.stamp = rospy.Time.now()
            line_marker.ns = "lanes"
            line_marker.id = lane_id + 1000  # 确保 ID 唯一
            line_marker.type = Marker.LINE_LIST
            line_marker.action = Marker.ADD
            line_marker.scale.x = 0.1  # 线宽
            line_marker.color.a = 1.0

            # ✅ 访问 is_bidirectional 并正确设置颜色
            if lane_info["is_bidirectional"]:  # 双向
                line_marker.color.g = 1.0  # 黄色
                line_marker.color.r = 1.0
            else:  # 单向
                line_marker.color.g = 0.0  # 红色
                line_marker.color.r = 1.0

            line_marker.points.append(start_point)
            line_marker.points.append(end_point)
            line_marker.pose.orientation = Quaternion(0, 0, 0, 1)

            marker_array.markers.append(line_marker)

        # 3️⃣ 发布 Marker
        self.marker_pub.publish(marker_array)
        #rospy.loginfo("✅ YAWL 路网已发布到 RViz")

if __name__ == "__main__":
    yawl_file = "/home/wlm/cbs-new/src/turtlebot3/turtlebot3_navigation/0.yaml"  # 替换为你的 YAWL 文件路径
    yawl_data = load_yawl(yawl_file)

    visualizer = YawlVisualizer()
    while not rospy.is_shutdown():
        visualizer.visualize_yawl(yawl_data)
        rospy.sleep(1)

