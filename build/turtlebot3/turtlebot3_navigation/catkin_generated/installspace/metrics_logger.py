#!/usr/bin/env python3
import rospy
from nav_msgs.msg import Odometry, Path
import math
import os
import csv
import time

class MetricsLogger:
    def __init__(self):
        rospy.init_node('metrics_logger', anonymous=True)
        
        self.robot_names = ['tb3_0', 'tb3_1', 'tb3_2']
        self.odom_subs = {}
        self.global_plan_subs = {}
        self.local_plan_subs = {}

        self.prev_positions = {robot: None for robot in self.robot_names}
        self.total_distances = {robot: 0.0 for robot in self.robot_names}
        self.total_yaw_changes = {robot: 0.0 for robot in self.robot_names}
        self.global_path_length = {robot: 0.0 for robot in self.robot_names}
        self.local_path_length_dwa = {robot: 0.0 for robot in self.robot_names}
        self.local_path_length_teb = {robot: 0.0 for robot in self.robot_names}
        self.average_speed = {robot: 0.0 for robot in self.robot_names}
        self.instantaneous_speed = {robot: 0.0 for robot in self.robot_names}
        self.last_yaw = {robot: None for robot in self.robot_names}
        self.start_time = {robot: None for robot in self.robot_names}
        self.global_plan_received = {robot: False for robot in self.robot_names}
        self.last_odom_time = {robot: None for robot in self.robot_names}

        self.logs_path = "/home/wlm/cbs-new/src/turtlebot3/turtlebot3_navigation/logs"

        if not os.path.exists(self.logs_path):
            os.makedirs(self.logs_path)

        for robot in self.robot_names:
            self.odom_subs[robot] = rospy.Subscriber(f"/{robot}/odom", Odometry, self.odom_callback, callback_args=robot)
            self.global_plan_subs[robot] = rospy.Subscriber(f"/{robot}/move_base/NavfnROS/plan", Path, self.global_plan_callback, callback_args=robot)
            rospy.Subscriber(f"/{robot}/move_base/DWAPlannerROS/local_plan", Path, self.local_plan_callback_dwa, callback_args=robot)
            rospy.Subscriber(f"/{robot}/move_base/TebLocalPlannerROS/local_plan", Path, self.local_plan_callback_teb, callback_args=robot)

    def odom_callback(self, msg, robot_name):
        position = msg.pose.pose.position
        orientation = msg.pose.pose.orientation
        yaw = self.quaternion_to_yaw(orientation)
        current_time = msg.header.stamp.to_sec()

        if self.prev_positions[robot_name] is not None and self.last_odom_time[robot_name] is not None:
            dx = position.x - self.prev_positions[robot_name].x
            dy = position.y - self.prev_positions[robot_name].y
            distance = math.sqrt(dx**2 + dy**2)
            self.total_distances[robot_name] += distance

            time_diff = current_time - self.last_odom_time[robot_name]
            if time_diff > 0:
                self.instantaneous_speed[robot_name] = distance / time_diff
                self.average_speed[robot_name] = self.total_distances[robot_name] / (current_time - self.start_time[robot_name])

            if self.last_yaw[robot_name] is not None:
                yaw_change = abs(yaw - self.last_yaw[robot_name])
                self.total_yaw_changes[robot_name] += yaw_change

        else:
            self.start_time[robot_name] = current_time

        self.prev_positions[robot_name] = position
        self.last_yaw[robot_name] = yaw
        self.last_odom_time[robot_name] = current_time

    def global_plan_callback(self, msg, robot_name):
        self.global_path_length[robot_name] = self.calculate_path_length(msg)
        self.global_plan_received[robot_name] = True

    def local_plan_callback_dwa(self, msg, robot_name):
        self.local_path_length_dwa[robot_name] = self.calculate_path_length(msg)

    def local_plan_callback_teb(self, msg, robot_name):
        self.local_path_length_teb[robot_name] = self.calculate_path_length(msg)

    def calculate_path_length(self, path_msg):
        length = 0.0
        prev_pose = None
        for pose in path_msg.poses:
            position = pose.pose.position
            if prev_pose is not None:
                dx = position.x - prev_pose.x
                dy = position.y - prev_pose.y
                length += math.sqrt(dx**2 + dy**2)
            prev_pose = position
        return length

    def quaternion_to_yaw(self, quaternion):
        import tf.transformations
        euler = tf.transformations.euler_from_quaternion([quaternion.x, quaternion.y, quaternion.z, quaternion.w])
        return euler[2]

    def log_metrics(self):
        for robot in self.robot_names:
            csv_file = os.path.join(self.logs_path, f"{robot}_metrics.csv")
            with open(csv_file, 'a') as file:
                writer = csv.writer(file)
                writer.writerow([
                    f"{time.strftime('%Y-%m-%d %H:%M:%S')}",
                    f"{self.global_path_length[robot]:.4f} meters",
                    f"{self.local_path_length_dwa[robot]:.4f} meters (DWA)",
                    f"{self.local_path_length_teb[robot]:.4f} meters (TEB)",
                    f"{self.total_distances[robot]:.4f} meters",
                    f"{self.total_yaw_changes[robot]:.4f} radians",
                    f"{self.average_speed[robot]:.4f} m/s",
                    f"{self.instantaneous_speed[robot]:.4f} m/s"
                ])
        rospy.loginfo("Metrics logged successfully!")

    def run(self):
        rate = rospy.Rate(2.5)
        while not rospy.is_shutdown():
            self.log_metrics()
            rate.sleep()

if __name__ == '__main__':
    logger = MetricsLogger()
    logger.run()





