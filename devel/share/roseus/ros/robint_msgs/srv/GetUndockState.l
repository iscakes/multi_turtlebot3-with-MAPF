;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::GetUndockState)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'GetUndockState (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::GETUNDOCKSTATE")
  (make-package "ROBINT_MSGS::GETUNDOCKSTATE"))
(unless (find-package "ROBINT_MSGS::GETUNDOCKSTATEREQUEST")
  (make-package "ROBINT_MSGS::GETUNDOCKSTATEREQUEST"))
(unless (find-package "ROBINT_MSGS::GETUNDOCKSTATERESPONSE")
  (make-package "ROBINT_MSGS::GETUNDOCKSTATERESPONSE"))

(in-package "ROS")





(defclass robint_msgs::GetUndockStateRequest
  :super ros::object
  :slots ())

(defmethod robint_msgs::GetUndockStateRequest
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

(defclass robint_msgs::GetUndockStateResponse
  :super ros::object
  :slots (_undock_state _result ))

(defmethod robint_msgs::GetUndockStateResponse
  (:init
   (&key
    ((:undock_state __undock_state) (instance robint_msgs::UndockState :init))
    ((:result __result) nil)
    )
   (send-super :init)
   (setq _undock_state __undock_state)
   (setq _result __result)
   self)
  (:undock_state
   (&rest __undock_state)
   (if (keywordp (car __undock_state))
       (send* _undock_state __undock_state)
     (progn
       (if __undock_state (setq _undock_state (car __undock_state)))
       _undock_state)))
  (:result
   (&optional (__result :null))
   (if (not (eq __result :null)) (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; robint_msgs/UndockState _undock_state
    (send _undock_state :serialization-length)
    ;; bool _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; robint_msgs/UndockState _undock_state
       (send _undock_state :serialize s)
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; robint_msgs/UndockState _undock_state
     (send _undock_state :deserialize buf ptr-) (incf ptr- (send _undock_state :serialization-length))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass robint_msgs::GetUndockState
  :super ros::object
  :slots ())

(setf (get robint_msgs::GetUndockState :md5sum-) "d513c9c0fe2fb5b7d74e100f14d71c4d")
(setf (get robint_msgs::GetUndockState :datatype-) "robint_msgs/GetUndockState")
(setf (get robint_msgs::GetUndockState :request) robint_msgs::GetUndockStateRequest)
(setf (get robint_msgs::GetUndockState :response) robint_msgs::GetUndockStateResponse)

(defmethod robint_msgs::GetUndockStateRequest
  (:response () (instance robint_msgs::GetUndockStateResponse :init)))

(setf (get robint_msgs::GetUndockStateRequest :md5sum-) "d513c9c0fe2fb5b7d74e100f14d71c4d")
(setf (get robint_msgs::GetUndockStateRequest :datatype-) "robint_msgs/GetUndockStateRequest")
(setf (get robint_msgs::GetUndockStateRequest :definition-)
      "---
UndockState undock_state
bool result

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
")

(setf (get robint_msgs::GetUndockStateResponse :md5sum-) "d513c9c0fe2fb5b7d74e100f14d71c4d")
(setf (get robint_msgs::GetUndockStateResponse :datatype-) "robint_msgs/GetUndockStateResponse")
(setf (get robint_msgs::GetUndockStateResponse :definition-)
      "---
UndockState undock_state
bool result

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
")



(provide :robint_msgs/GetUndockState "d513c9c0fe2fb5b7d74e100f14d71c4d")


