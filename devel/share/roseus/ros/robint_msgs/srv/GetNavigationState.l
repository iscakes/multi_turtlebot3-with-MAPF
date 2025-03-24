;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::GetNavigationState)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'GetNavigationState (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::GETNAVIGATIONSTATE")
  (make-package "ROBINT_MSGS::GETNAVIGATIONSTATE"))
(unless (find-package "ROBINT_MSGS::GETNAVIGATIONSTATEREQUEST")
  (make-package "ROBINT_MSGS::GETNAVIGATIONSTATEREQUEST"))
(unless (find-package "ROBINT_MSGS::GETNAVIGATIONSTATERESPONSE")
  (make-package "ROBINT_MSGS::GETNAVIGATIONSTATERESPONSE"))

(in-package "ROS")





(defclass robint_msgs::GetNavigationStateRequest
  :super ros::object
  :slots ())

(defmethod robint_msgs::GetNavigationStateRequest
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

(defclass robint_msgs::GetNavigationStateResponse
  :super ros::object
  :slots (_navigation_state _result ))

(defmethod robint_msgs::GetNavigationStateResponse
  (:init
   (&key
    ((:navigation_state __navigation_state) (instance robint_msgs::NavigationState :init))
    ((:result __result) nil)
    )
   (send-super :init)
   (setq _navigation_state __navigation_state)
   (setq _result __result)
   self)
  (:navigation_state
   (&rest __navigation_state)
   (if (keywordp (car __navigation_state))
       (send* _navigation_state __navigation_state)
     (progn
       (if __navigation_state (setq _navigation_state (car __navigation_state)))
       _navigation_state)))
  (:result
   (&optional (__result :null))
   (if (not (eq __result :null)) (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; robint_msgs/NavigationState _navigation_state
    (send _navigation_state :serialization-length)
    ;; bool _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; robint_msgs/NavigationState _navigation_state
       (send _navigation_state :serialize s)
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; robint_msgs/NavigationState _navigation_state
     (send _navigation_state :deserialize buf ptr-) (incf ptr- (send _navigation_state :serialization-length))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass robint_msgs::GetNavigationState
  :super ros::object
  :slots ())

(setf (get robint_msgs::GetNavigationState :md5sum-) "f3610dd921b0fb5ea6025bf47fc93512")
(setf (get robint_msgs::GetNavigationState :datatype-) "robint_msgs/GetNavigationState")
(setf (get robint_msgs::GetNavigationState :request) robint_msgs::GetNavigationStateRequest)
(setf (get robint_msgs::GetNavigationState :response) robint_msgs::GetNavigationStateResponse)

(defmethod robint_msgs::GetNavigationStateRequest
  (:response () (instance robint_msgs::GetNavigationStateResponse :init)))

(setf (get robint_msgs::GetNavigationStateRequest :md5sum-) "f3610dd921b0fb5ea6025bf47fc93512")
(setf (get robint_msgs::GetNavigationStateRequest :datatype-) "robint_msgs/GetNavigationStateRequest")
(setf (get robint_msgs::GetNavigationStateRequest :definition-)
      "---
NavigationState navigation_state
bool result

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
")

(setf (get robint_msgs::GetNavigationStateResponse :md5sum-) "f3610dd921b0fb5ea6025bf47fc93512")
(setf (get robint_msgs::GetNavigationStateResponse :datatype-) "robint_msgs/GetNavigationStateResponse")
(setf (get robint_msgs::GetNavigationStateResponse :definition-)
      "---
NavigationState navigation_state
bool result

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
")



(provide :robint_msgs/GetNavigationState "f3610dd921b0fb5ea6025bf47fc93512")


