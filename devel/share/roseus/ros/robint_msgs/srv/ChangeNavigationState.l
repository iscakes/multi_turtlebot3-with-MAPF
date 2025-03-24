;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::ChangeNavigationState)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'ChangeNavigationState (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::CHANGENAVIGATIONSTATE")
  (make-package "ROBINT_MSGS::CHANGENAVIGATIONSTATE"))
(unless (find-package "ROBINT_MSGS::CHANGENAVIGATIONSTATEREQUEST")
  (make-package "ROBINT_MSGS::CHANGENAVIGATIONSTATEREQUEST"))
(unless (find-package "ROBINT_MSGS::CHANGENAVIGATIONSTATERESPONSE")
  (make-package "ROBINT_MSGS::CHANGENAVIGATIONSTATERESPONSE"))

(in-package "ROS")





(defclass robint_msgs::ChangeNavigationStateRequest
  :super ros::object
  :slots (_state ))

(defmethod robint_msgs::ChangeNavigationStateRequest
  (:init
   (&key
    ((:state __state) (instance robint_msgs::NavigationState :init))
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
    ;; robint_msgs/NavigationState _state
    (send _state :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; robint_msgs/NavigationState _state
       (send _state :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; robint_msgs/NavigationState _state
     (send _state :deserialize buf ptr-) (incf ptr- (send _state :serialization-length))
   ;;
   self)
  )

(defclass robint_msgs::ChangeNavigationStateResponse
  :super ros::object
  :slots (_result ))

(defmethod robint_msgs::ChangeNavigationStateResponse
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

(defclass robint_msgs::ChangeNavigationState
  :super ros::object
  :slots ())

(setf (get robint_msgs::ChangeNavigationState :md5sum-) "7c9692bc48992779a3644fe54d668673")
(setf (get robint_msgs::ChangeNavigationState :datatype-) "robint_msgs/ChangeNavigationState")
(setf (get robint_msgs::ChangeNavigationState :request) robint_msgs::ChangeNavigationStateRequest)
(setf (get robint_msgs::ChangeNavigationState :response) robint_msgs::ChangeNavigationStateResponse)

(defmethod robint_msgs::ChangeNavigationStateRequest
  (:response () (instance robint_msgs::ChangeNavigationStateResponse :init)))

(setf (get robint_msgs::ChangeNavigationStateRequest :md5sum-) "7c9692bc48992779a3644fe54d668673")
(setf (get robint_msgs::ChangeNavigationStateRequest :datatype-) "robint_msgs/ChangeNavigationStateRequest")
(setf (get robint_msgs::ChangeNavigationStateRequest :definition-)
      "NavigationState state

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
---
bool result
")

(setf (get robint_msgs::ChangeNavigationStateResponse :md5sum-) "7c9692bc48992779a3644fe54d668673")
(setf (get robint_msgs::ChangeNavigationStateResponse :datatype-) "robint_msgs/ChangeNavigationStateResponse")
(setf (get robint_msgs::ChangeNavigationStateResponse :definition-)
      "NavigationState state

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
---
bool result
")



(provide :robint_msgs/ChangeNavigationState "7c9692bc48992779a3644fe54d668673")


