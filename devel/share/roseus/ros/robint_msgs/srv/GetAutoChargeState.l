;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::GetAutoChargeState)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'GetAutoChargeState (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::GETAUTOCHARGESTATE")
  (make-package "ROBINT_MSGS::GETAUTOCHARGESTATE"))
(unless (find-package "ROBINT_MSGS::GETAUTOCHARGESTATEREQUEST")
  (make-package "ROBINT_MSGS::GETAUTOCHARGESTATEREQUEST"))
(unless (find-package "ROBINT_MSGS::GETAUTOCHARGESTATERESPONSE")
  (make-package "ROBINT_MSGS::GETAUTOCHARGESTATERESPONSE"))

(in-package "ROS")





(defclass robint_msgs::GetAutoChargeStateRequest
  :super ros::object
  :slots ())

(defmethod robint_msgs::GetAutoChargeStateRequest
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

(defclass robint_msgs::GetAutoChargeStateResponse
  :super ros::object
  :slots (_auto_charge_state _result ))

(defmethod robint_msgs::GetAutoChargeStateResponse
  (:init
   (&key
    ((:auto_charge_state __auto_charge_state) (instance robint_msgs::AutoChargeState :init))
    ((:result __result) nil)
    )
   (send-super :init)
   (setq _auto_charge_state __auto_charge_state)
   (setq _result __result)
   self)
  (:auto_charge_state
   (&rest __auto_charge_state)
   (if (keywordp (car __auto_charge_state))
       (send* _auto_charge_state __auto_charge_state)
     (progn
       (if __auto_charge_state (setq _auto_charge_state (car __auto_charge_state)))
       _auto_charge_state)))
  (:result
   (&optional (__result :null))
   (if (not (eq __result :null)) (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; robint_msgs/AutoChargeState _auto_charge_state
    (send _auto_charge_state :serialization-length)
    ;; bool _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; robint_msgs/AutoChargeState _auto_charge_state
       (send _auto_charge_state :serialize s)
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; robint_msgs/AutoChargeState _auto_charge_state
     (send _auto_charge_state :deserialize buf ptr-) (incf ptr- (send _auto_charge_state :serialization-length))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass robint_msgs::GetAutoChargeState
  :super ros::object
  :slots ())

(setf (get robint_msgs::GetAutoChargeState :md5sum-) "f6d99ed8da38328f3d700d808197028c")
(setf (get robint_msgs::GetAutoChargeState :datatype-) "robint_msgs/GetAutoChargeState")
(setf (get robint_msgs::GetAutoChargeState :request) robint_msgs::GetAutoChargeStateRequest)
(setf (get robint_msgs::GetAutoChargeState :response) robint_msgs::GetAutoChargeStateResponse)

(defmethod robint_msgs::GetAutoChargeStateRequest
  (:response () (instance robint_msgs::GetAutoChargeStateResponse :init)))

(setf (get robint_msgs::GetAutoChargeStateRequest :md5sum-) "f6d99ed8da38328f3d700d808197028c")
(setf (get robint_msgs::GetAutoChargeStateRequest :datatype-) "robint_msgs/GetAutoChargeStateRequest")
(setf (get robint_msgs::GetAutoChargeStateRequest :definition-)
      "---
AutoChargeState auto_charge_state
bool result

================================================================================
MSG: robint_msgs/AutoChargeState
TaskStateHeader header
string state
uint8 r_state
uint8 r_feedback
bool finished
================================================================================
MSG: robint_msgs/TaskStateHeader
bool activate  # 该任务是否处于激活状态
time start_time
time stop_time
")

(setf (get robint_msgs::GetAutoChargeStateResponse :md5sum-) "f6d99ed8da38328f3d700d808197028c")
(setf (get robint_msgs::GetAutoChargeStateResponse :datatype-) "robint_msgs/GetAutoChargeStateResponse")
(setf (get robint_msgs::GetAutoChargeStateResponse :definition-)
      "---
AutoChargeState auto_charge_state
bool result

================================================================================
MSG: robint_msgs/AutoChargeState
TaskStateHeader header
string state
uint8 r_state
uint8 r_feedback
bool finished
================================================================================
MSG: robint_msgs/TaskStateHeader
bool activate  # 该任务是否处于激活状态
time start_time
time stop_time
")



(provide :robint_msgs/GetAutoChargeState "f6d99ed8da38328f3d700d808197028c")


