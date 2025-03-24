;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::ChangeUndockState)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'ChangeUndockState (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::CHANGEUNDOCKSTATE")
  (make-package "ROBINT_MSGS::CHANGEUNDOCKSTATE"))
(unless (find-package "ROBINT_MSGS::CHANGEUNDOCKSTATEREQUEST")
  (make-package "ROBINT_MSGS::CHANGEUNDOCKSTATEREQUEST"))
(unless (find-package "ROBINT_MSGS::CHANGEUNDOCKSTATERESPONSE")
  (make-package "ROBINT_MSGS::CHANGEUNDOCKSTATERESPONSE"))

(in-package "ROS")





(defclass robint_msgs::ChangeUndockStateRequest
  :super ros::object
  :slots (_state ))

(defmethod robint_msgs::ChangeUndockStateRequest
  (:init
   (&key
    ((:state __state) (instance robint_msgs::UndockState :init))
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
    ;; robint_msgs/UndockState _state
    (send _state :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; robint_msgs/UndockState _state
       (send _state :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; robint_msgs/UndockState _state
     (send _state :deserialize buf ptr-) (incf ptr- (send _state :serialization-length))
   ;;
   self)
  )

(defclass robint_msgs::ChangeUndockStateResponse
  :super ros::object
  :slots (_result ))

(defmethod robint_msgs::ChangeUndockStateResponse
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

(defclass robint_msgs::ChangeUndockState
  :super ros::object
  :slots ())

(setf (get robint_msgs::ChangeUndockState :md5sum-) "1df2b32e00d9659a7afd807940e0bc0e")
(setf (get robint_msgs::ChangeUndockState :datatype-) "robint_msgs/ChangeUndockState")
(setf (get robint_msgs::ChangeUndockState :request) robint_msgs::ChangeUndockStateRequest)
(setf (get robint_msgs::ChangeUndockState :response) robint_msgs::ChangeUndockStateResponse)

(defmethod robint_msgs::ChangeUndockStateRequest
  (:response () (instance robint_msgs::ChangeUndockStateResponse :init)))

(setf (get robint_msgs::ChangeUndockStateRequest :md5sum-) "1df2b32e00d9659a7afd807940e0bc0e")
(setf (get robint_msgs::ChangeUndockStateRequest :datatype-) "robint_msgs/ChangeUndockStateRequest")
(setf (get robint_msgs::ChangeUndockStateRequest :definition-)
      "UndockState state

================================================================================
MSG: robint_msgs/UndockState
TaskStateHeader header
uint8 status
uint8 OBSTACLE_WARN=0
uint8 MOVING=1
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

(setf (get robint_msgs::ChangeUndockStateResponse :md5sum-) "1df2b32e00d9659a7afd807940e0bc0e")
(setf (get robint_msgs::ChangeUndockStateResponse :datatype-) "robint_msgs/ChangeUndockStateResponse")
(setf (get robint_msgs::ChangeUndockStateResponse :definition-)
      "UndockState state

================================================================================
MSG: robint_msgs/UndockState
TaskStateHeader header
uint8 status
uint8 OBSTACLE_WARN=0
uint8 MOVING=1
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



(provide :robint_msgs/ChangeUndockState "1df2b32e00d9659a7afd807940e0bc0e")


