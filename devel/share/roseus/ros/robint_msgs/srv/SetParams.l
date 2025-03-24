;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::SetParams)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'SetParams (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::SETPARAMS")
  (make-package "ROBINT_MSGS::SETPARAMS"))
(unless (find-package "ROBINT_MSGS::SETPARAMSREQUEST")
  (make-package "ROBINT_MSGS::SETPARAMSREQUEST"))
(unless (find-package "ROBINT_MSGS::SETPARAMSRESPONSE")
  (make-package "ROBINT_MSGS::SETPARAMSRESPONSE"))

(in-package "ROS")





(defclass robint_msgs::SetParamsRequest
  :super ros::object
  :slots (_params ))

(defmethod robint_msgs::SetParamsRequest
  (:init
   (&key
    ((:params __params) ())
    )
   (send-super :init)
   (setq _params __params)
   self)
  (:params
   (&rest __params)
   (if (keywordp (car __params))
       (send* _params __params)
     (progn
       (if __params (setq _params (car __params)))
       _params)))
  (:serialization-length
   ()
   (+
    ;; robint_msgs/Param[] _params
    (apply #'+ (send-all _params :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; robint_msgs/Param[] _params
     (write-long (length _params) s)
     (dolist (elem _params)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; robint_msgs/Param[] _params
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _params (let (r) (dotimes (i n) (push (instance robint_msgs::Param :init) r)) r))
     (dolist (elem- _params)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass robint_msgs::SetParamsResponse
  :super ros::object
  :slots (_success _error_code _message ))

(defmethod robint_msgs::SetParamsResponse
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

(defclass robint_msgs::SetParams
  :super ros::object
  :slots ())

(setf (get robint_msgs::SetParams :md5sum-) "f730e8435f033412a4b8a560ec5fa0a0")
(setf (get robint_msgs::SetParams :datatype-) "robint_msgs/SetParams")
(setf (get robint_msgs::SetParams :request) robint_msgs::SetParamsRequest)
(setf (get robint_msgs::SetParams :response) robint_msgs::SetParamsResponse)

(defmethod robint_msgs::SetParamsRequest
  (:response () (instance robint_msgs::SetParamsResponse :init)))

(setf (get robint_msgs::SetParamsRequest :md5sum-) "f730e8435f033412a4b8a560ec5fa0a0")
(setf (get robint_msgs::SetParamsRequest :datatype-) "robint_msgs/SetParamsRequest")
(setf (get robint_msgs::SetParamsRequest :definition-)
      "Param[] params

================================================================================
MSG: robint_msgs/Param
string name
string type    # \"String\", \"Bool\", \"Float\", \"Int\"
---
bool success
uint8 error_code
string message
")

(setf (get robint_msgs::SetParamsResponse :md5sum-) "f730e8435f033412a4b8a560ec5fa0a0")
(setf (get robint_msgs::SetParamsResponse :datatype-) "robint_msgs/SetParamsResponse")
(setf (get robint_msgs::SetParamsResponse :definition-)
      "Param[] params

================================================================================
MSG: robint_msgs/Param
string name
string type    # \"String\", \"Bool\", \"Float\", \"Int\"
---
bool success
uint8 error_code
string message
")



(provide :robint_msgs/SetParams "f730e8435f033412a4b8a560ec5fa0a0")


