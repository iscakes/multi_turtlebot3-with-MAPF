;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::ChangeAutoChargeState)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'ChangeAutoChargeState (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::CHANGEAUTOCHARGESTATE")
  (make-package "ROBINT_MSGS::CHANGEAUTOCHARGESTATE"))
(unless (find-package "ROBINT_MSGS::CHANGEAUTOCHARGESTATEREQUEST")
  (make-package "ROBINT_MSGS::CHANGEAUTOCHARGESTATEREQUEST"))
(unless (find-package "ROBINT_MSGS::CHANGEAUTOCHARGESTATERESPONSE")
  (make-package "ROBINT_MSGS::CHANGEAUTOCHARGESTATERESPONSE"))

(in-package "ROS")





(defclass robint_msgs::ChangeAutoChargeStateRequest
  :super ros::object
  :slots (_state ))

(defmethod robint_msgs::ChangeAutoChargeStateRequest
  (:init
   (&key
    ((:state __state) (instance robint_msgs::AutoChargeState :init))
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
    ;; robint_msgs/AutoChargeState _state
    (send _state :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; robint_msgs/AutoChargeState _state
       (send _state :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; robint_msgs/AutoChargeState _state
     (send _state :deserialize buf ptr-) (incf ptr- (send _state :serialization-length))
   ;;
   self)
  )

(defclass robint_msgs::ChangeAutoChargeStateResponse
  :super ros::object
  :slots (_result ))

(defmethod robint_msgs::ChangeAutoChargeStateResponse
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

(defclass robint_msgs::ChangeAutoChargeState
  :super ros::object
  :slots ())

(setf (get robint_msgs::ChangeAutoChargeState :md5sum-) "02cfeeb813567a97fc827cd789e6531b")
(setf (get robint_msgs::ChangeAutoChargeState :datatype-) "robint_msgs/ChangeAutoChargeState")
(setf (get robint_msgs::ChangeAutoChargeState :request) robint_msgs::ChangeAutoChargeStateRequest)
(setf (get robint_msgs::ChangeAutoChargeState :response) robint_msgs::ChangeAutoChargeStateResponse)

(defmethod robint_msgs::ChangeAutoChargeStateRequest
  (:response () (instance robint_msgs::ChangeAutoChargeStateResponse :init)))

(setf (get robint_msgs::ChangeAutoChargeStateRequest :md5sum-) "02cfeeb813567a97fc827cd789e6531b")
(setf (get robint_msgs::ChangeAutoChargeStateRequest :datatype-) "robint_msgs/ChangeAutoChargeStateRequest")
(setf (get robint_msgs::ChangeAutoChargeStateRequest :definition-)
      "AutoChargeState state

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
---
bool result
")

(setf (get robint_msgs::ChangeAutoChargeStateResponse :md5sum-) "02cfeeb813567a97fc827cd789e6531b")
(setf (get robint_msgs::ChangeAutoChargeStateResponse :datatype-) "robint_msgs/ChangeAutoChargeStateResponse")
(setf (get robint_msgs::ChangeAutoChargeStateResponse :definition-)
      "AutoChargeState state

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
---
bool result
")



(provide :robint_msgs/ChangeAutoChargeState "02cfeeb813567a97fc827cd789e6531b")


