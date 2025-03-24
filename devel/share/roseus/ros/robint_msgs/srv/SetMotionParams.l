;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::SetMotionParams)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'SetMotionParams (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::SETMOTIONPARAMS")
  (make-package "ROBINT_MSGS::SETMOTIONPARAMS"))
(unless (find-package "ROBINT_MSGS::SETMOTIONPARAMSREQUEST")
  (make-package "ROBINT_MSGS::SETMOTIONPARAMSREQUEST"))
(unless (find-package "ROBINT_MSGS::SETMOTIONPARAMSRESPONSE")
  (make-package "ROBINT_MSGS::SETMOTIONPARAMSRESPONSE"))

(in-package "ROS")





(defclass robint_msgs::SetMotionParamsRequest
  :super ros::object
  :slots (_max_vel ))

(defmethod robint_msgs::SetMotionParamsRequest
  (:init
   (&key
    ((:max_vel __max_vel) 0.0)
    )
   (send-super :init)
   (setq _max_vel (float __max_vel))
   self)
  (:max_vel
   (&optional __max_vel)
   (if __max_vel (setq _max_vel __max_vel)) _max_vel)
  (:serialization-length
   ()
   (+
    ;; float32 _max_vel
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _max_vel
       (sys::poke _max_vel (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _max_vel
     (setq _max_vel (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass robint_msgs::SetMotionParamsResponse
  :super ros::object
  :slots (_success _error_code _message ))

(defmethod robint_msgs::SetMotionParamsResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:error_code __error_code) 0)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _error_code (round __error_code))
   (setq _message (string __message))
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:error_code
   (&optional __error_code)
   (if __error_code (setq _error_code __error_code)) _error_code)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; uint8 _error_code
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _error_code
       (write-byte _error_code s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _error_code
     (setq _error_code (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robint_msgs::SetMotionParams
  :super ros::object
  :slots ())

(setf (get robint_msgs::SetMotionParams :md5sum-) "b5cbbb1ea5ef99ec2d9f8ade1e48feb3")
(setf (get robint_msgs::SetMotionParams :datatype-) "robint_msgs/SetMotionParams")
(setf (get robint_msgs::SetMotionParams :request) robint_msgs::SetMotionParamsRequest)
(setf (get robint_msgs::SetMotionParams :response) robint_msgs::SetMotionParamsResponse)

(defmethod robint_msgs::SetMotionParamsRequest
  (:response () (instance robint_msgs::SetMotionParamsResponse :init)))

(setf (get robint_msgs::SetMotionParamsRequest :md5sum-) "b5cbbb1ea5ef99ec2d9f8ade1e48feb3")
(setf (get robint_msgs::SetMotionParamsRequest :datatype-) "robint_msgs/SetMotionParamsRequest")
(setf (get robint_msgs::SetMotionParamsRequest :definition-)
      "float32 max_vel
---
bool success
uint8 error_code
string message
")

(setf (get robint_msgs::SetMotionParamsResponse :md5sum-) "b5cbbb1ea5ef99ec2d9f8ade1e48feb3")
(setf (get robint_msgs::SetMotionParamsResponse :datatype-) "robint_msgs/SetMotionParamsResponse")
(setf (get robint_msgs::SetMotionParamsResponse :definition-)
      "float32 max_vel
---
bool success
uint8 error_code
string message
")



(provide :robint_msgs/SetMotionParams "b5cbbb1ea5ef99ec2d9f8ade1e48feb3")


