;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::ChangeFollowingState)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'ChangeFollowingState (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::CHANGEFOLLOWINGSTATE")
  (make-package "ROBINT_MSGS::CHANGEFOLLOWINGSTATE"))
(unless (find-package "ROBINT_MSGS::CHANGEFOLLOWINGSTATEREQUEST")
  (make-package "ROBINT_MSGS::CHANGEFOLLOWINGSTATEREQUEST"))
(unless (find-package "ROBINT_MSGS::CHANGEFOLLOWINGSTATERESPONSE")
  (make-package "ROBINT_MSGS::CHANGEFOLLOWINGSTATERESPONSE"))

(in-package "ROS")





(defclass robint_msgs::ChangeFollowingStateRequest
  :super ros::object
  :slots (_state ))

(defmethod robint_msgs::ChangeFollowingStateRequest
  (:init
   (&key
    ((:state __state) (instance robint_msgs::FollowingState :init))
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
    ;; robint_msgs/FollowingState _state
    (send _state :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; robint_msgs/FollowingState _state
       (send _state :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; robint_msgs/FollowingState _state
     (send _state :deserialize buf ptr-) (incf ptr- (send _state :serialization-length))
   ;;
   self)
  )

(defclass robint_msgs::ChangeFollowingStateResponse
  :super ros::object
  :slots (_result ))

(defmethod robint_msgs::ChangeFollowingStateResponse
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

(defclass robint_msgs::ChangeFollowingState
  :super ros::object
  :slots ())

(setf (get robint_msgs::ChangeFollowingState :md5sum-) "2c8b3769a09c611adc7bf5ad44d8b225")
(setf (get robint_msgs::ChangeFollowingState :datatype-) "robint_msgs/ChangeFollowingState")
(setf (get robint_msgs::ChangeFollowingState :request) robint_msgs::ChangeFollowingStateRequest)
(setf (get robint_msgs::ChangeFollowingState :response) robint_msgs::ChangeFollowingStateResponse)

(defmethod robint_msgs::ChangeFollowingStateRequest
  (:response () (instance robint_msgs::ChangeFollowingStateResponse :init)))

(setf (get robint_msgs::ChangeFollowingStateRequest :md5sum-) "2c8b3769a09c611adc7bf5ad44d8b225")
(setf (get robint_msgs::ChangeFollowingStateRequest :datatype-) "robint_msgs/ChangeFollowingStateRequest")
(setf (get robint_msgs::ChangeFollowingStateRequest :definition-)
      "FollowingState state

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
---
bool result
")

(setf (get robint_msgs::ChangeFollowingStateResponse :md5sum-) "2c8b3769a09c611adc7bf5ad44d8b225")
(setf (get robint_msgs::ChangeFollowingStateResponse :datatype-) "robint_msgs/ChangeFollowingStateResponse")
(setf (get robint_msgs::ChangeFollowingStateResponse :definition-)
      "FollowingState state

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
---
bool result
")



(provide :robint_msgs/ChangeFollowingState "2c8b3769a09c611adc7bf5ad44d8b225")


