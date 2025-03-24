;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::GetDeliveryOrderList)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'GetDeliveryOrderList (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::GETDELIVERYORDERLIST")
  (make-package "ROBINT_MSGS::GETDELIVERYORDERLIST"))
(unless (find-package "ROBINT_MSGS::GETDELIVERYORDERLISTREQUEST")
  (make-package "ROBINT_MSGS::GETDELIVERYORDERLISTREQUEST"))
(unless (find-package "ROBINT_MSGS::GETDELIVERYORDERLISTRESPONSE")
  (make-package "ROBINT_MSGS::GETDELIVERYORDERLISTRESPONSE"))

(in-package "ROS")





(defclass robint_msgs::GetDeliveryOrderListRequest
  :super ros::object
  :slots (_uuid_list ))

(defmethod robint_msgs::GetDeliveryOrderListRequest
  (:init
   (&key
    ((:uuid_list __uuid_list) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _uuid_list __uuid_list)
   self)
  (:uuid_list
   (&optional __uuid_list)
   (if __uuid_list (setq _uuid_list __uuid_list)) _uuid_list)
  (:serialization-length
   ()
   (+
    ;; string[] _uuid_list
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _uuid_list)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _uuid_list
     (write-long (length _uuid_list) s)
     (dolist (elem _uuid_list)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _uuid_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _uuid_list (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _uuid_list i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass robint_msgs::GetDeliveryOrderListResponse
  :super ros::object
  :slots (_uuid_list _success _error_code _message ))

(defmethod robint_msgs::GetDeliveryOrderListResponse
  (:init
   (&key
    ((:uuid_list __uuid_list) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:success __success) nil)
    ((:error_code __error_code) 0)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _uuid_list __uuid_list)
   (setq _success __success)
   (setq _error_code (round __error_code))
   (setq _message (string __message))
   self)
  (:uuid_list
   (&optional __uuid_list)
   (if __uuid_list (setq _uuid_list __uuid_list)) _uuid_list)
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
    ;; string[] _uuid_list
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _uuid_list)) 4
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
     ;; string[] _uuid_list
     (write-long (length _uuid_list) s)
     (dolist (elem _uuid_list)
       (write-long (length elem) s) (princ elem s)
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
   ;; string[] _uuid_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _uuid_list (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _uuid_list i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
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

(defclass robint_msgs::GetDeliveryOrderList
  :super ros::object
  :slots ())

(setf (get robint_msgs::GetDeliveryOrderList :md5sum-) "baee876c27499d21e1c7296f0006d656")
(setf (get robint_msgs::GetDeliveryOrderList :datatype-) "robint_msgs/GetDeliveryOrderList")
(setf (get robint_msgs::GetDeliveryOrderList :request) robint_msgs::GetDeliveryOrderListRequest)
(setf (get robint_msgs::GetDeliveryOrderList :response) robint_msgs::GetDeliveryOrderListResponse)

(defmethod robint_msgs::GetDeliveryOrderListRequest
  (:response () (instance robint_msgs::GetDeliveryOrderListResponse :init)))

(setf (get robint_msgs::GetDeliveryOrderListRequest :md5sum-) "baee876c27499d21e1c7296f0006d656")
(setf (get robint_msgs::GetDeliveryOrderListRequest :datatype-) "robint_msgs/GetDeliveryOrderListRequest")
(setf (get robint_msgs::GetDeliveryOrderListRequest :definition-)
      "string[] uuid_list
---
string[] uuid_list
bool success
uint8 error_code
string message
")

(setf (get robint_msgs::GetDeliveryOrderListResponse :md5sum-) "baee876c27499d21e1c7296f0006d656")
(setf (get robint_msgs::GetDeliveryOrderListResponse :datatype-) "robint_msgs/GetDeliveryOrderListResponse")
(setf (get robint_msgs::GetDeliveryOrderListResponse :definition-)
      "string[] uuid_list
---
string[] uuid_list
bool success
uint8 error_code
string message
")



(provide :robint_msgs/GetDeliveryOrderList "baee876c27499d21e1c7296f0006d656")


