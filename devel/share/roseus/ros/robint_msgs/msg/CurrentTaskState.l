;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::CurrentTaskState)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'CurrentTaskState (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::CURRENTTASKSTATE")
  (make-package "ROBINT_MSGS::CURRENTTASKSTATE"))

(in-package "ROS")
;;//! \htmlinclude CurrentTaskState.msg.html


(defclass robint_msgs::CurrentTaskState
  :super ros::object
  :slots (_activated_task_name _navigation_state _following_state _patrol_state _auto_charge_state _undock_state ))

(defmethod robint_msgs::CurrentTaskState
  (:init
   (&key
    ((:activated_task_name __activated_task_name) "")
    ((:navigation_state __navigation_state) (instance robint_msgs::NavigationState :init))
    ((:following_state __following_state) (instance robint_msgs::FollowingState :init))
    ((:patrol_state __patrol_state) (instance robint_msgs::PatrolState :init))
    ((:auto_charge_state __auto_charge_state) (instance robint_msgs::AutoChargeState :init))
    ((:undock_state __undock_state) (instance robint_msgs::UndockState :init))
    )
   (send-super :init)
   (setq _activated_task_name (string __activated_task_name))
   (setq _navigation_state __navigation_state)
   (setq _following_state __following_state)
   (setq _patrol_state __patrol_state)
   (setq _auto_charge_state __auto_charge_state)
   (setq _undock_state __undock_state)
   self)
  (:activated_task_name
   (&optional __activated_task_name)
   (if __activated_task_name (setq _activated_task_name __activated_task_name)) _activated_task_name)
  (:navigation_state
   (&rest __navigation_state)
   (if (keywordp (car __navigation_state))
       (send* _navigation_state __navigation_state)
     (progn
       (if __navigation_state (setq _navigation_state (car __navigation_state)))
       _navigation_state)))
  (:following_state
   (&rest __following_state)
   (if (keywordp (car __following_state))
       (send* _following_state __following_state)
     (progn
       (if __following_state (setq _following_state (car __following_state)))
       _following_state)))
  (:patrol_state
   (&rest __patrol_state)
   (if (keywordp (car __patrol_state))
       (send* _patrol_state __patrol_state)
     (progn
       (if __patrol_state (setq _patrol_state (car __patrol_state)))
       _patrol_state)))
  (:auto_charge_state
   (&rest __auto_charge_state)
   (if (keywordp (car __auto_charge_state))
       (send* _auto_charge_state __auto_charge_state)
     (progn
       (if __auto_charge_state (setq _auto_charge_state (car __auto_charge_state)))
       _auto_charge_state)))
  (:undock_state
   (&rest __undock_state)
   (if (keywordp (car __undock_state))
       (send* _undock_state __undock_state)
     (progn
       (if __undock_state (setq _undock_state (car __undock_state)))
       _undock_state)))
  (:serialization-length
   ()
   (+
    ;; string _activated_task_name
    4 (length _activated_task_name)
    ;; robint_msgs/NavigationState _navigation_state
    (send _navigation_state :serialization-length)
    ;; robint_msgs/FollowingState _following_state
    (send _following_state :serialization-length)
    ;; robint_msgs/PatrolState _patrol_state
    (send _patrol_state :serialization-length)
    ;; robint_msgs/AutoChargeState _auto_charge_state
    (send _auto_charge_state :serialization-length)
    ;; robint_msgs/UndockState _undock_state
    (send _undock_state :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _activated_task_name
       (write-long (length _activated_task_name) s) (princ _activated_task_name s)
     ;; robint_msgs/NavigationState _navigation_state
       (send _navigation_state :serialize s)
     ;; robint_msgs/FollowingState _following_state
       (send _following_state :serialize s)
     ;; robint_msgs/PatrolState _patrol_state
       (send _patrol_state :serialize s)
     ;; robint_msgs/AutoChargeState _auto_charge_state
       (send _auto_charge_state :serialize s)
     ;; robint_msgs/UndockState _undock_state
       (send _undock_state :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _activated_task_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _activated_task_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; robint_msgs/NavigationState _navigation_state
     (send _navigation_state :deserialize buf ptr-) (incf ptr- (send _navigation_state :serialization-length))
   ;; robint_msgs/FollowingState _following_state
     (send _following_state :deserialize buf ptr-) (incf ptr- (send _following_state :serialization-length))
   ;; robint_msgs/PatrolState _patrol_state
     (send _patrol_state :deserialize buf ptr-) (incf ptr- (send _patrol_state :serialization-length))
   ;; robint_msgs/AutoChargeState _auto_charge_state
     (send _auto_charge_state :deserialize buf ptr-) (incf ptr- (send _auto_charge_state :serialization-length))
   ;; robint_msgs/UndockState _undock_state
     (send _undock_state :deserialize buf ptr-) (incf ptr- (send _undock_state :serialization-length))
   ;;
   self)
  )

(setf (get robint_msgs::CurrentTaskState :md5sum-) "9de3599c586d0abeed093da92159956c")
(setf (get robint_msgs::CurrentTaskState :datatype-) "robint_msgs/CurrentTaskState")
(setf (get robint_msgs::CurrentTaskState :definition-)
      "string activated_task_name
NavigationState navigation_state
FollowingState following_state
PatrolState patrol_state
AutoChargeState auto_charge_state
UndockState undock_state
================================================================================
MSG: robint_msgs/NavigationState
TaskStateHeader header 
string goal_name
string location_name
string goal_group_uuid
string state
string feedback
uint8 r_state
uint8 r_feedback
bool reached
================================================================================
MSG: robint_msgs/TaskStateHeader
bool activate  # 该任务是否处于激活状态
time start_time
time stop_time

================================================================================
MSG: robint_msgs/FollowingState
TaskStateHeader header
uint8 status
uint8 r_state
uint8 r_feedback
bool finished
================================================================================
MSG: robint_msgs/PatrolState
TaskStateHeader header
string state             # \"Running\", \"Stop\", \"Pause\"
string current_route_name
string current_goal_name
bool current_goal_isReached
bool finished
================================================================================
MSG: robint_msgs/AutoChargeState
TaskStateHeader header
string state
uint8 r_state
uint8 r_feedback
bool finished
================================================================================
MSG: robint_msgs/UndockState
TaskStateHeader header
uint8 status
uint8 OBSTACLE_WARN=0
uint8 MOVING=1
uint8 r_state
uint8 r_feedback
bool finished
")



(provide :robint_msgs/CurrentTaskState "9de3599c586d0abeed093da92159956c")


