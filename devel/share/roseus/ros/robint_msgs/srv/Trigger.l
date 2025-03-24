;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::Trigger)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'Trigger (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::TRIGGER")
  (make-package "ROBINT_MSGS::TRIGGER"))
(unless (find-package "ROBINT_MSGS::TRIGGERREQUEST")
  (make-package "ROBINT_MSGS::TRIGGERREQUEST"))
(unless (find-package "ROBINT_MSGS::TRIGGERRESPONSE")
  (make-package "ROBINT_MSGS::TRIGGERRESPONSE"))

(in-package "ROS")





(defclass robint_msgs::TriggerRequest
  :super ros::object
  :slots (_data ))

(defmethod robint_msgs::TriggerRequest
  (:init
   (&key
    ((:data __data) nil)
    )
   (send-super :init)
   (setq _data __data)
   self)
  (:data
   (&optional (__data :null))
   (if (not (eq __data :null)) (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; bool _data
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _data
       (if _data (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _data
     (setq _data (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass robint_msgs::TriggerResponse
  :super ros::object
  :slots (_success _error_code _message ))

(defmethod robint_msgs::TriggerResponse
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

(defclass robint_msgs::Trigger
  :super ros::object
  :slots ())

(setf (get robint_msgs::Trigger :md5sum-) "1534bcd0bb02c2d8e46c22dbccf63137")
(setf (get robint_msgs::Trigger :datatype-) "robint_msgs/Trigger")
(setf (get robint_msgs::Trigger :request) robint_msgs::TriggerRequest)
(setf (get robint_msgs::Trigger :response) robint_msgs::TriggerResponse)

(defmethod robint_msgs::TriggerRequest
  (:response () (instance robint_msgs::TriggerResponse :init)))

(setf (get robint_msgs::TriggerRequest :md5sum-) "1534bcd0bb02c2d8e46c22dbccf63137")
(setf (get robint_msgs::TriggerRequest :datatype-) "robint_msgs/TriggerRequest")
(setf (get robint_msgs::TriggerRequest :definition-)
      "bool data
---
bool success
uint8 error_code
string message
")

(setf (get robint_msgs::TriggerResponse :md5sum-) "1534bcd0bb02c2d8e46c22dbccf63137")
(setf (get robint_msgs::TriggerResponse :datatype-) "robint_msgs/TriggerResponse")
(setf (get robint_msgs::TriggerResponse :definition-)
      "bool data
---
bool success
uint8 error_code
string message
")



(provide :robint_msgs/Trigger "1534bcd0bb02c2d8e46c22dbccf63137")


