;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::GetImageSecurityLine)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'GetImageSecurityLine (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::GETIMAGESECURITYLINE")
  (make-package "ROBINT_MSGS::GETIMAGESECURITYLINE"))
(unless (find-package "ROBINT_MSGS::GETIMAGESECURITYLINEREQUEST")
  (make-package "ROBINT_MSGS::GETIMAGESECURITYLINEREQUEST"))
(unless (find-package "ROBINT_MSGS::GETIMAGESECURITYLINERESPONSE")
  (make-package "ROBINT_MSGS::GETIMAGESECURITYLINERESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass robint_msgs::GetImageSecurityLineRequest
  :super ros::object
  :slots ())

(defmethod robint_msgs::GetImageSecurityLineRequest
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

(defclass robint_msgs::GetImageSecurityLineResponse
  :super ros::object
  :slots (_points _success _error_code ))

(defmethod robint_msgs::GetImageSecurityLineResponse
  (:init
   (&key
    ((:points __points) ())
    ((:success __success) nil)
    ((:error_code __error_code) 0)
    )
   (send-super :init)
   (setq _points __points)
   (setq _success __success)
   (setq _error_code (round __error_code))
   self)
  (:points
   (&rest __points)
   (if (keywordp (car __points))
       (send* _points __points)
     (progn
       (if __points (setq _points (car __points)))
       _points)))
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:error_code
   (&optional __error_code)
   (if __error_code (setq _error_code __error_code)) _error_code)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point[] _points
    (apply #'+ (send-all _points :serialization-length)) 4
    ;; bool _success
    1
    ;; uint8 _error_code
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point[] _points
     (write-long (length _points) s)
     (dolist (elem _points)
       (send elem :serialize s)
       )
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _error_code
       (write-byte _error_code s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point[] _points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _error_code
     (setq _error_code (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass robint_msgs::GetImageSecurityLine
  :super ros::object
  :slots ())

(setf (get robint_msgs::GetImageSecurityLine :md5sum-) "f13d2e4ae6c8429eb27a005e4536a853")
(setf (get robint_msgs::GetImageSecurityLine :datatype-) "robint_msgs/GetImageSecurityLine")
(setf (get robint_msgs::GetImageSecurityLine :request) robint_msgs::GetImageSecurityLineRequest)
(setf (get robint_msgs::GetImageSecurityLine :response) robint_msgs::GetImageSecurityLineResponse)

(defmethod robint_msgs::GetImageSecurityLineRequest
  (:response () (instance robint_msgs::GetImageSecurityLineResponse :init)))

(setf (get robint_msgs::GetImageSecurityLineRequest :md5sum-) "f13d2e4ae6c8429eb27a005e4536a853")
(setf (get robint_msgs::GetImageSecurityLineRequest :datatype-) "robint_msgs/GetImageSecurityLineRequest")
(setf (get robint_msgs::GetImageSecurityLineRequest :definition-)
      "---
geometry_msgs/Point[] points
bool success
uint8 error_code

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")

(setf (get robint_msgs::GetImageSecurityLineResponse :md5sum-) "f13d2e4ae6c8429eb27a005e4536a853")
(setf (get robint_msgs::GetImageSecurityLineResponse :datatype-) "robint_msgs/GetImageSecurityLineResponse")
(setf (get robint_msgs::GetImageSecurityLineResponse :definition-)
      "---
geometry_msgs/Point[] points
bool success
uint8 error_code

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")



(provide :robint_msgs/GetImageSecurityLine "f13d2e4ae6c8429eb27a005e4536a853")


