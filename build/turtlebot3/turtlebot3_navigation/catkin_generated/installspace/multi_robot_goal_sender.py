#!/usr/bin/env python3
import rospy
from geometry_msgs.msg import PoseStamped
from nav_msgs.msg import Odometry, Path
import tf
import math

class MultiRobotGoalSenderParallel:
    def __init__(self):
        rospy.init_node('multi_robot_goal_sender_parallel')

        # 机器人名称和目标点
        self.robot_names = ['tb3_0', 'tb3_1', 'tb3_2']
        self.goal_publishers = {}
        self.goal_lists = {
        #十个点
             'tb3_2': [(-3.0, -1.5, 0.0,3.1416), (-0.7, 1.5, 0.0,1.5708),(4.4,4.8,0.0,3.1416),(2.85,-3.3,0.0,3.1416),(0.0,3.0,0.0,1.5708),(-3.0, -1.5, 0.0,3.1416), (-0.7, 1.5, 0.0,1.5708),(4.5,4.8,0.0,3.1416),(3.1,-3.3,0.0,3,1416),(0.5,3.0,0.0,1.5708)],
            'tb3_0': [(2.45, -4.0, 0.0,1.5708), (-4.0, 3.2, 0.0,-1.5708),(-1.7,0.5,0.0,-1.5708),(-3.3,3.0,0.0,1.5708),(2.8,-4.0,0.0,1.5708),(2.45,0.0, 0.0,1.5708), (-4.15, 3.2, 0.0,0.0),(-1.5,0.5,0.0,0.0),(-3.45,3.2,0.0,1.5708),(3.0,-2.0,0.0,1.5708)],
             'tb3_1': [(0.3, 3.3, 0.0,-1.5708), (3.45, -1.5, 0.0,1.5708),(1.45,4.8,0.0,3.1416),(-0.7,3.2,0.0,-1.5708),(-3.0,-1.0,0.0,3.1416),(0.2, 3.3, 0.0,3.1416), (3.4, -1.5, 0.0,1.5708),(1.45,4.8,0.0,1.5708),(-0.7,3.2,0.0,3.1416),(-3.0,-2.0,0.0,-1.5708)]
             #'tb3_2': [(-2.9, -1.5, 0.0,1.5708), (-0.7, 1.5, 0.0,1.5708),(4.4,4.8,0.0,3.1416),(3.3,-3.3,0.0,3,1416),(0.0,3.0,0.0,1.5708),(-2.9, -1.5, 0.0,1.5708), (-0.7, 1.5, 0.0,1.5708),(4.5,4.8,0.0,3.1416),(3.3,-3.3,0.0,3,1416),(0.5,3.0,0.0,1.5708)],
   	#SH十个点细化
            #'tb3_0': [(-3.0,-4.0,0.0,0.0),(2.45,-4.0,0.0,1.5708),(2.45,0.7,0.0,3.1416),(-4.0,0.7,0.0,1.5708),(-4.0,3.2,0.0,-1.5708),(-4.0,0.7,0.0,0.0),(-1.7,0.7,0.0,0.0),(-3.3,0.7,0.0,1.5708),(-3.3,3.0,0.0,4.7124),(-3.3,-0.1,0.0,0.0),(3.0,-0.1,0.0,4.7124),(3.0,-4.0,0.0,0.0),(2.45,0.0, 0.0,1.5708),(-4.15,0.0,0.0,1.5708),(-4.15, 3.2, 0.0,-1.5708),(-4.15,0.7,0.0,0.0),(-1.7,0.7,0.0,0.0),(-3.45,0.7,0.0,1.5708),(-3.45,3.2,0.0,1.5708),(-3.45,-0.1,0.0,1.5708),(3.0,-0.1,0.0,0.0),(3.0,-2.0,0.0,1.5708)],
             #'tb3_1': [(3.0,0.7,0.0,3.1416),(3.0,3.3,0.0,1.5708),(0.3, 3.3,0.0,-1.5708),(0.3,-0.1,0.0,0.0),(3.45,-0.1,0.0,4.7124),(3.45,-1.5,0.0,1.5708),(3.45,4.95,0.0,3.1416),(1.45,4.95,0.0,3.1416),(-0.7,4.95,0.0,-1.5708),(-0.7,3.2,0.0,-1.5708),(-0.7,-0.1,0.0,3.1416),(-3.0,-0.1,0.0,-1.5708),(-3.0,-1.0,0.0,3.1416),(3.0,0.7,0.0,3.1416),(3.0,3.3,0.0,1.5708),(0.3, 3.3, 0.0,-1.5708), (0.3,-0.1,0.0,0.0),(3.45,-0.1,0.0,4.7124),(3.45, -1.5, 0.0,1.5708),(3.45,4.95,0.0,3.1416),(1.45,4.95,0.0,3.1416),(-0.7,4.95,0.0,-1.5708),(-0.7,3.2,0.0,0.0),(-0.7,-0.1,0.0,3.1416),(-3.0,-0.1,0.0,-1.5708),(-3.0,-2.0,0.0,-1.5708)],
            #'tb3_2': [(0.0,-0.1,0.0,3.1416),(-2.9,-0.1,0.0,4.7124),(-2.9,-1.5,0.0,1.5708), (-2.9, 0.7, 0.0, 0.0), (-0.7, 0.7, 0.0, 1.5708),(-0.7, 1.5, 0.0, 1.5708), (-0.7, 4.75, 0.0, 0.0), (4.45, 4.75, 0.0, 3.1416),(3.3, 4.75, 0.0, 4.7124), (3.3, -3.3, 0.0, 1.5708), (3.3, 0.7, 0.0, 3.1416),(0.0, 0.7, 0.0, 1.5708), (0.0, 3.0, 0.0, 4.7124), (0.0, -0.1, 0.0, 1.5708),(-2.9, -0.1, 0.0, 4.7124), (-2.9, -1.5, 0.0, 1.5708),(-2.9, 0.7, 0.0, 0.0), (-0.7, 0.7, 0.0, 1.5708), (-0.7, 1.5, 0.0, 1.5708), (-0.7, 4.75, 0.0, 3.1416),(4.45, 4.75, 0.0, 1.5708), (3.3, 4.75, 0.0, 4.7124), (3.3, -3.3,0.0,1.5708),(3.3, 0.7, 0.0, 3.1416),(0.5, 0.7, 0.0, 1.5708), (0.5, 3.0, 0.0, 1.5708)]
             
            #'tb3_2': [(-3.1, -1.5, 0.0,2.1416), (-0.7, 1.5, 0.0,1.5708),(4.4,4.8,0.0,3.1416)],
            #'tb3_0': [(2.45, -3.2, 0.0,1.5708), (-4.0, 3.2, 0.0,-1.5708),(-1.7,0.7,0.0,0.0)],
            #'tb3_1': [(0.3, 3.3, 0.0,-1.5708), (3.45, -1.5, 0.0,1.5708),(1.45,4.8,0.0,3.1416)]
        }
        self.current_goals = {robot: 0 for robot in self.robot_names}
        self.reached_goal = {robot: False for robot in self.robot_names}

        # 路径可视化相关
        self.path_publishers = {}
        self.paths = {}

        # 初始化发布器和订阅器
        for robot in self.robot_names:
            topic_name = f"/{robot}/move_base_simple/goal"
            self.goal_publishers[robot] = rospy.Publisher(topic_name, PoseStamped, queue_size=10)
            rospy.Subscriber(f"/{robot}/odom", Odometry, self.odom_callback, robot)

            # 路径可视化相关
            self.path_publishers[robot] = rospy.Publisher(f"/{robot}/path", Path, queue_size=10)
            self.paths[robot] = Path()
            self.paths[robot].header.frame_id = "map"

            rospy.loginfo(f"{robot} 目标点发布器和路径可视化初始化成功！")

    def send_goal(self, robot):
        goal_index = self.current_goals[robot]
        if goal_index >= len(self.goal_lists[robot]):
            rospy.loginfo(f"{robot} 没有更多的目标点，停留在当前位置。")
            return

        goal_pose = self.goal_lists[robot][goal_index]

        goal = PoseStamped()
        goal.header.frame_id = "map"
        goal.header.stamp = rospy.Time.now()
        goal.pose.position.x = goal_pose[0]
        goal.pose.position.y = goal_pose[1]
        quaternion = tf.transformations.quaternion_from_euler(0, 0, goal_pose[3])
        goal.pose.orientation.x = quaternion[0]
        goal.pose.orientation.y = quaternion[1]
        goal.pose.orientation.z = quaternion[2]
        goal.pose.orientation.w = quaternion[3]

        rospy.loginfo(f"发送 {robot} 的目标点: {goal_pose}")
        self.goal_publishers[robot].publish(goal)
        self.reached_goal[robot] = False

    def odom_callback(self, msg, robot):
        goal_index = self.current_goals[robot]
        if goal_index >= len(self.goal_lists[robot]):
            return

        goal = self.goal_lists[robot][goal_index]
        distance = ((msg.pose.pose.position.x - goal[0]) ** 2 + 
                    (msg.pose.pose.position.y - goal[1]) ** 2) ** 0.5

        orientation_q = msg.pose.pose.orientation
        (_, _, current_yaw) = tf.transformations.euler_from_quaternion([
            orientation_q.x, orientation_q.y, orientation_q.z, orientation_q.w
        ])

        goal_yaw = goal[3]
        yaw_diff = abs(goal_yaw - current_yaw)

        # 可视化路径记录
        current_pose = PoseStamped()
        current_pose.header.stamp = rospy.Time.now()
        current_pose.header.frame_id = "map"
        current_pose.pose = msg.pose.pose
        self.paths[robot].poses.append(current_pose)
        self.path_publishers[robot].publish(self.paths[robot])

        if distance < 0.3 and not self.reached_goal[robot]:
            rospy.loginfo(f"{robot} 达到目标点 {goal_index + 1}")
            rospy.loginfo(f"当前位置: x={msg.pose.pose.position.x:.2f}, y={msg.pose.pose.position.y:.2f}")
            rospy.loginfo(f"目标点航向角: {goal_yaw:.2f} rad, 当前航向角: {current_yaw:.2f} rad")
            rospy.loginfo(f"航向角偏差: {yaw_diff:.2f} rad")
            self.reached_goal[robot] = True
            rospy.sleep(3)
            self.current_goals[robot] += 1
            if self.current_goals[robot] < len(self.goal_lists[robot]):
                self.send_goal(robot)
            else:
                rospy.loginfo(f"{robot} 所有目标点已完成！")

    def execute_goals_parallel(self):
        for robot in self.robot_names:
            self.send_goal(robot)
        rospy.loginfo("所有机器人已开始前往第一个目标点！")

if __name__ == "__main__":
    try:
        sender = MultiRobotGoalSenderParallel()
        rospy.sleep(2)
        sender.execute_goals_parallel()
        rospy.spin()
    except rospy.ROSInterruptException:
        rospy.logerr("多机器人目标点发送过程被中断！")






