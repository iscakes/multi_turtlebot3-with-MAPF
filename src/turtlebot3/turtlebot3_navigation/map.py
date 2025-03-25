#!/usr/bin/env python3
import rospy
import numpy as np
from visualization_msgs.msg import Marker
from geometry_msgs.msg import Point, Quaternion
import tf.transformations as tf_trans  # 用于计算四元数

def bezier_curve(p0, p1, p2, p3, num_points=20):
    """计算三阶贝塞尔曲线"""
    t_values = np.linspace(0, 1, num_points)
    curve = []
    for t in t_values:
        B_t = (1 - t)**3 * np.array(p0) + \
              3 * (1 - t)**2 * t * np.array(p1) + \
              3 * (1 - t) * t**2 * np.array(p2) + \
              t**3 * np.array(p3)
        curve.append(tuple(B_t))
    return curve

def yaw_to_quaternion(yaw):
    """将 yaw 角转换为四元数"""
    q = tf_trans.quaternion_from_euler(0, 0, yaw)
    return Quaternion(q[0], q[1], q[2], q[3])

def publish_road_network():
    rospy.init_node('road_network_marker')
    marker_pub = rospy.Publisher('road_network_marker', Marker, queue_size=10)
    rate = rospy.Rate(1)  # 1 Hz

    # (x, y, z, yaw)
    road_network = [
        (-3.0, -4.0, 0.0, 0.0),
        (2.45, -4.0, 0.0, np.pi/4),  # 45度
        (2.45, 0.7, 0.0, np.pi/2),  # 90度
        (-4.0, 0.7, 0.0, np.pi),
        (-4.0, 3.2, 0.0, np.pi/2),
        (-1.7, 3.2, 0.0, 0),
        (3.0, -0.1, 0.0, -np.pi/4)
    ]

    # 生成平滑路径
    smooth_path = []
    for i in range(len(road_network) - 1):
        p0 = road_network[i][:3]  # 当前点
        p3 = road_network[i + 1][:3]  # 下一个点
        yaw1 = road_network[i][3]
        yaw2 = road_network[i + 1][3]

        # 计算点间距离
        dist = np.linalg.norm(np.array(p3) - np.array(p0))

        if dist < 3.0:  # 仅对短线段使用贝塞尔曲线
            offset = 0.5  # 控制点的偏移量，可调整
            p1 = (p0[0] + offset * np.cos(yaw1), p0[1] + offset * np.sin(yaw1), p0[2])
            p2 = (p3[0] - offset * np.cos(yaw2), p3[1] - offset * np.sin(yaw2), p3[2])
            bezier_points = bezier_curve(p0, p1, p2, p3)
            smooth_path.extend(bezier_points)
        else:
            smooth_path.append(p0)
            smooth_path.append(p3)

    while not rospy.is_shutdown():
        # 1️⃣ 画路网路径
        marker = Marker()
        marker.header.frame_id = "map"
        marker.header.stamp = rospy.Time.now()
        marker.ns = "road_network"
        marker.id = 0
        marker.type = Marker.LINE_STRIP
        marker.action = Marker.ADD
        marker.scale.x = 0.1  # 线宽
        marker.color.a = 1.0
        marker.color.r = 0.0
        marker.color.g = 1.0
        marker.color.b = 0.0
        marker.pose.orientation.w = 1.0

        # 添加路径点
        for pt in smooth_path:
            p = Point()
            p.x, p.y, p.z = pt
            marker.points.append(p)

        marker_pub.publish(marker)

        # 2️⃣ 画点编号
        for idx, pt in enumerate(road_network):
            text_marker = Marker()
            text_marker.header.frame_id = "map"
            text_marker.header.stamp = rospy.Time.now()
            text_marker.ns = "road_network_labels"
            text_marker.id = idx
            text_marker.type = Marker.TEXT_VIEW_FACING
            text_marker.action = Marker.ADD
            text_marker.scale.z = 0.5  # 文字大小
            text_marker.color.a = 1.0
            text_marker.color.r = 1.0
            text_marker.color.g = 1.0
            text_marker.color.b = 1.0
            text_marker.pose.position.x = pt[0]
            text_marker.pose.position.y = pt[1]
            text_marker.pose.position.z = pt[2] + 0.2  # 让文本浮在上方
            text_marker.text = str(idx)

            marker_pub.publish(text_marker)

        rate.sleep()

if __name__ == '__main__':
    try:
        publish_road_network()
    except rospy.ROSInterruptException:
        pass



