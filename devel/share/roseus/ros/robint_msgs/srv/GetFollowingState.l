;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::GetFollowingState)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'GetFollowingState (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::GETFOLLOWINGSTATE")
  (make-package "ROBINT_MSGS::GETFOLLOWINGSTATE"))
(unless (find-package "ROBINT_MSGS::GETFOLLOWINGSTATEREQUEST")
  (make-package "ROBINT_MSGS::GETFOLLOWINGSTATEREQUEST"))
(unless (find-package "ROBINT_MSGS::GETFOLLOWINGSTATERESPONSE")
  (make-package "ROBINT_MSGS::GETFOLLOWINGSTATERESPONSE"))

(in-package "ROS")





(defclass robint_msgs::GetFollowingStateRequest
  :super ros::object
  :slots ())

(defmethod robint_msgs::GetFollowingStateRequest
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

(defclass robint_msgs::GetFollowingStateResponse
  :super ros::object
  :slots (_following_state _result ))

(defmethod robint_msgs::GetFollowingStateResponse
  (:init
   (&key
    ((:following_state __following_state) (instance robint_msgs::FollowingState :init))
    ((:result __result) nil)
    )
   (send-super :init)
   (setq _following_state __following_state)
   (setq _result __result)
   self)
  (:following_state
   (&rest __following_state)
   (if (keywordp (car __following_state))
       (send* _following_state __following_state)
     (progn
       (if __following_state (setq _following_state (car __following_state)))
       _following_state)))
  (:result
   (&optional (__result :null))
   (if (not (eq __result :null)) (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; robint_msgs/FollowingState _following_state
    (send _following_state :serialization-length)
    ;; bool _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; robint_msgs/FollowingState _following_state
       (send _following_state :serialize s)
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; robint_msgs/FollowingState _following_state
     (send _following_state :deserialize buf ptr-) (incf ptr- (send _following_state :serialization-length))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass robint_msgs::GetFollowingState
  :super ros::object
  :slots ())

(setf (get robint_msgs::GetFollowingState :md5sum-) "3c134d8b81541d1ff34d0ac407ea4463")
(setf (get robint_msgs::GetFollowingState :datatype-) "robint_msgs/GetFollowingState")
(setf (get robint_msgs::GetFollowingState :request) robint_msgs::GetFollowingStateRequest)
(setf (get robint_msgs::GetFollowingState :response) robint_msgs::GetFollowingStateResponse)

(defmethod robint_msgs::GetFollowingStateRequest
  (:response () (instance robint_msgs::GetFollowingStateResponse :init)))

(setf (get robint_msgs::GetFollowingStateRequest :md5sum-) "3c134d8b81541d1ff34d0ac407ea4463")
(setf (get robint_msgs::GetFollowingStateRequest :datatype-) "robint_msgs/GetFollowingStateRequest")
(setf (get robint_msgs::GetFollowingStateRequest :definition-)
      "---
FollowingState following_state
bool result

================================================================================
MSG: robint_msgs/FollowingState
TaskStateHeader header
uint8 status
uint8 r_state
uint8 r_feedback
bool finished
================================================================================
MSG: robint_msgs/TaskStateHeader
bool activate  # 该任务是否处于激活状态
time start_time
time stop_time
")

(setf (get robint_msgs::GetFollowingStateResponse :md5sum-) "3c134d8b81541d1ff34d0ac407ea4463")
(setf (get robint_msgs::GetFollowingStateResponse :datatype-) "robint_msgs/GetFollowingStateResponse")
(setf (get robint_msgs::GetFollowingStateResponse :definition-)
      "---
FollowingState following_state
bool result

================================================================================
MSG: robint_msgs/FollowingState
TaskStateHeader header
uint8 status
uint8 r_state
uint8 r_feedback
bool finished
================================================================================
MSG: robint_msgs/TaskStateHeader
bool activate  # 该任务是否处于激活状态
time start_time
time stop_time
")



(provide :robint_msgs/GetFollowingState "3c134d8b81541d1ff34d0ac407ea4463")


