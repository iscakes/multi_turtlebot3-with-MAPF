;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::ChangePatrolState)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'ChangePatrolState (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::CHANGEPATROLSTATE")
  (make-package "ROBINT_MSGS::CHANGEPATROLSTATE"))
(unless (find-package "ROBINT_MSGS::CHANGEPATROLSTATEREQUEST")
  (make-package "ROBINT_MSGS::CHANGEPATROLSTATEREQUEST"))
(unless (find-package "ROBINT_MSGS::CHANGEPATROLSTATERESPONSE")
  (make-package "ROBINT_MSGS::CHANGEPATROLSTATERESPONSE"))

(in-package "ROS")





(defclass robint_msgs::ChangePatrolStateRequest
  :super ros::object
  :slots (_state ))

(defmethod robint_msgs::ChangePatrolStateRequest
  (:init
   (&key
    ((:state __state) (instance robint_msgs::PatrolState :init))
    )
   (send-super :init)
   (setq _state __state)
   self)
  (:state
   (&rest __state)
   (if (keywordp (car __state))
       (send* _state __state)
     (progn
       (if __state (setq _state (car __state)))
       _state)))
  (:serialization-length
   ()
   (+
    ;; robint_msgs/PatrolState _state
    (send _state :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; robint_msgs/PatrolState _state
       (send _state :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; robint_msgs/PatrolState _state
     (send _state :deserialize buf ptr-) (incf ptr- (send _state :serialization-length))
   ;;
   self)
  )

(defclass robint_msgs::ChangePatrolStateResponse
  :super ros::object
  :slots (_result ))

(defmethod robint_msgs::ChangePatrolStateResponse
  (:init
   (&key
    ((:result __result) nil)
    )
   (send-super :init)
   (setq _result __result)
   self)
  (:result
   (&optional (__result :null))
   (if (not (eq __result :null)) (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass robint_msgs::ChangePatrolState
  :super ros::object
  :slots ())

(setf (get robint_msgs::ChangePatrolState :md5sum-) "fe45eb3e06327f9be9820eacec95ce2d")
(setf (get robint_msgs::ChangePatrolState :datatype-) "robint_msgs/ChangePatrolState")
(setf (get robint_msgs::ChangePatrolState :request) robint_msgs::ChangePatrolStateRequest)
(setf (get robint_msgs::ChangePatrolState :response) robint_msgs::ChangePatrolStateResponse)

(defmethod robint_msgs::ChangePatrolStateRequest
  (:response () (instance robint_msgs::ChangePatrolStateResponse :init)))

(setf (get robint_msgs::ChangePatrolStateRequest :md5sum-) "fe45eb3e06327f9be9820eacec95ce2d")
(setf (get robint_msgs::ChangePatrolStateRequest :datatype-) "robint_msgs/ChangePatrolStateRequest")
(setf (get robint_msgs::ChangePatrolStateRequest :definition-)
      "PatrolState state

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
---
bool result
")

(setf (get robint_msgs::ChangePatrolStateResponse :md5sum-) "fe45eb3e06327f9be9820eacec95ce2d")
(setf (get robint_msgs::ChangePatrolStateResponse :datatype-) "robint_msgs/ChangePatrolStateResponse")
(setf (get robint_msgs::ChangePatrolStateResponse :definition-)
      "PatrolState state

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
---
bool result
")



(provide :robint_msgs/ChangePatrolState "fe45eb3e06327f9be9820eacec95ce2d")


