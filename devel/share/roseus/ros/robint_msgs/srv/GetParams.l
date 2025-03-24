;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::GetParams)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'GetParams (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::GETPARAMS")
  (make-package "ROBINT_MSGS::GETPARAMS"))
(unless (find-package "ROBINT_MSGS::GETPARAMSREQUEST")
  (make-package "ROBINT_MSGS::GETPARAMSREQUEST"))
(unless (find-package "ROBINT_MSGS::GETPARAMSRESPONSE")
  (make-package "ROBINT_MSGS::GETPARAMSRESPONSE"))

(in-package "ROS")





(defclass robint_msgs::GetParamsRequest
  :super ros::object
  :slots (_module ))

(defmethod robint_msgs::GetParamsRequest
  (:init
   (&key
    ((:module __module) "")
    )
   (send-super :init)
   (setq _module (string __module))
   self)
  (:module
   (&optional __module)
   (if __module (setq _module __module)) _module)
  (:serialization-length
   ()
   (+
    ;; string _module
    4 (length _module)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _module
       (write-long (length _module) s) (princ _module s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _module
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _module (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robint_msgs::GetParamsResponse
  :super ros::object
  :slots (_params _success _error_code _message ))

(defmethod robint_msgs::GetParamsResponse
  (:init
   (&key
    ((:params __params) ())
    ((:success __success) nil)
    ((:error_code __error_code) 0)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _params __params)
   (setq _success __success)
   (setq _error_code (round __error_code))
   (setq _message (string __message))
   self)
  (:params
   (&rest __params)
   (if (keywordp (car __params))
       (send* _params __params)
     (progn
       (if __params (setq _params (car __params)))
       _params)))
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
    ;; robint_msgs/Param[] _params
    (apply #'+ (send-all _params :serialization-length)) 4
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
     ;; robint_msgs/Param[] _params
     (write-long (length _params) s)
     (dolist (elem _params)
       (send elem :serialize s)
       )
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
   ;; robint_msgs/Param[] _params
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _params (let (r) (dotimes (i n) (push (instance robint_msgs::Param :init) r)) r))
     (dolist (elem- _params)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _error_code
     (setq _error_code (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robint_msgs::GetParams
  :super ros::object
  :slots ())

(setf (get robint_msgs::GetParams :md5sum-) "91fc7b29f879eb3b16f8b9b676e5a263")
(setf (get robint_msgs::GetParams :datatype-) "robint_msgs/GetParams")
(setf (get robint_msgs::GetParams :request) robint_msgs::GetParamsRequest)
(setf (get robint_msgs::GetParams :response) robint_msgs::GetParamsResponse)

(defmethod robint_msgs::GetParamsRequest
  (:response () (instance robint_msgs::GetParamsResponse :init)))

(setf (get robint_msgs::GetParamsRequest :md5sum-) "91fc7b29f879eb3b16f8b9b676e5a263")
(setf (get robint_msgs::GetParamsRequest :datatype-) "robint_msgs/GetParamsRequest")
(setf (get robint_msgs::GetParamsRequest :definition-)
      "string module
---
Param[] params
bool success
uint8 error_code
string message

================================================================================
MSG: robint_msgs/Param
string name
string type    # \"String\", \"Bool\", \"Float\", \"Int\"
")

(setf (get robint_msgs::GetParamsResponse :md5sum-) "91fc7b29f879eb3b16f8b9b676e5a263")
(setf (get robint_msgs::GetParamsResponse :datatype-) "robint_msgs/GetParamsResponse")
(setf (get robint_msgs::GetParamsResponse :definition-)
      "string module
---
Param[] params
bool success
uint8 error_code
string message

================================================================================
MSG: robint_msgs/Param
string name
string type    # \"String\", \"Bool\", \"Float\", \"Int\"
")



(provide :robint_msgs/GetParams "91fc7b29f879eb3b16f8b9b676e5a263")


