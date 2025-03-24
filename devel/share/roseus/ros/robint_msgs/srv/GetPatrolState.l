;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::GetPatrolState)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'GetPatrolState (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::GETPATROLSTATE")
  (make-package "ROBINT_MSGS::GETPATROLSTATE"))
(unless (find-package "ROBINT_MSGS::GETPATROLSTATEREQUEST")
  (make-package "ROBINT_MSGS::GETPATROLSTATEREQUEST"))
(unless (find-package "ROBINT_MSGS::GETPATROLSTATERESPONSE")
  (make-package "ROBINT_MSGS::GETPATROLSTATERESPONSE"))

(in-package "ROS")





(defclass robint_msgs::GetPatrolStateRequest
  :super ros::object
  :slots ())

(defmethod robint_msgs::GetPatrolStateRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass robint_msgs::GetPatrolStateResponse
  :super ros::object
  :slots (_patrol_state _result ))

(defmethod robint_msgs::GetPatrolStateResponse
  (:init
   (&key
    ((:patrol_state __patrol_state) (instance robint_msgs::PatrolState :init))
    ((:result __result) nil)
    )
   (send-super :init)
   (setq _patrol_state __patrol_state)
   (setq _result __result)
   self)
  (:patrol_state
   (&rest __patrol_state)
   (if (keywordp (car __patrol_state))
       (send* _patrol_state __patrol_state)
     (progn
       (if __patrol_state (setq _patrol_state (car __patrol_state)))
       _patrol_state)))
  (:result
   (&optional (__result :null))
   (if (not (eq __result :null)) (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; robint_msgs/PatrolState _patrol_state
    (send _patrol_state :serialization-length)
    ;; bool _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; robint_msgs/PatrolState _patrol_state
       (send _patrol_state :serialize s)
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; robint_msgs/PatrolState _patrol_state
     (send _patrol_state :deserialize buf ptr-) (incf ptr- (send _patrol_state :serialization-length))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass robint_msgs::GetPatrolState
  :super ros::object
  :slots ())

(setf (get robint_msgs::GetPatrolState :md5sum-) "7e3cb361868f6beb35b772468bb8cf09")
(setf (get robint_msgs::GetPatrolState :datatype-) "robint_msgs/GetPatrolState")
(setf (get robint_msgs::GetPatrolState :request) robint_msgs::GetPatrolStateRequest)
(setf (get robint_msgs::GetPatrolState :response) robint_msgs::GetPatrolStateResponse)

(defmethod robint_msgs::GetPatrolStateRequest
  (:response () (instance robint_msgs::GetPatrolStateResponse :init)))

(setf (get robint_msgs::GetPatrolStateRequest :md5sum-) "7e3cb361868f6beb35b772468bb8cf09")
(setf (get robint_msgs::GetPatrolStateRequest :datatype-) "robint_msgs/GetPatrolStateRequest")
(setf (get robint_msgs::GetPatrolStateRequest :definition-)
      "---
PatrolState patrol_state
bool result

================================================================================
MSG: robint_msgs/PatrolState
TaskStateHeader header
string state             # \"Running\", \"Stop\", \"Pause\"
string current_route_name
string current_goal_name
bool current_goal_isReached
bool finished
================================================================================
MSG: robint_msgs/TaskStateHeader
bool activate  # 该任务是否处于激活状态
time start_time
time stop_time
")

(setf (get robint_msgs::GetPatrolStateResponse :md5sum-) "7e3cb361868f6beb35b772468bb8cf09")
(setf (get robint_msgs::GetPatrolStateResponse :datatype-) "robint_msgs/GetPatrolStateResponse")
(setf (get robint_msgs::GetPatrolStateResponse :definition-)
      "---
PatrolState patrol_state
bool result

================================================================================
MSG: robint_msgs/PatrolState
TaskStateHeader header
string state             # \"Running\", \"Stop\", \"Pause\"
string current_route_name
string current_goal_name
bool current_goal_isReached
bool finished
================================================================================
MSG: robint_msgs/TaskStateHeader
bool activate  # 该任务是否处于激活状态
time start_time
time stop_time
")



(provide :robint_msgs/GetPatrolState "7e3cb361868f6beb35b772468bb8cf09")


