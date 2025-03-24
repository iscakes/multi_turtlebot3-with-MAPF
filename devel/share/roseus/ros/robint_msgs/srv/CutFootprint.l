;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::CutFootprint)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'CutFootprint (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::CUTFOOTPRINT")
  (make-package "ROBINT_MSGS::CUTFOOTPRINT"))
(unless (find-package "ROBINT_MSGS::CUTFOOTPRINTREQUEST")
  (make-package "ROBINT_MSGS::CUTFOOTPRINTREQUEST"))
(unless (find-package "ROBINT_MSGS::CUTFOOTPRINTRESPONSE")
  (make-package "ROBINT_MSGS::CUTFOOTPRINTRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass robint_msgs::CutFootprintRequest
  :super ros::object
  :slots (_footprint ))

(defmethod robint_msgs::CutFootprintRequest
  (:init
   (&key
    ((:footprint __footprint) ())
    )
   (send-super :init)
   (setq _footprint __footprint)
   self)
  (:footprint
   (&rest __footprint)
   (if (keywordp (car __footprint))
       (send* _footprint __footprint)
     (progn
       (if __footprint (setq _footprint (car __footprint)))
       _footprint)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point[] _footprint
    (apply #'+ (send-all _footprint :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point[] _footprint
     (write-long (length _footprint) s)
     (dolist (elem _footprint)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point[] _footprint
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _footprint (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _footprint)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass robint_msgs::CutFootprintResponse
  :super ros::object
  :slots (_success _error_code _message ))

(defmethod robint_msgs::CutFootprintResponse
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

(defclass robint_msgs::CutFootprint
  :super ros::object
  :slots ())

(setf (get robint_msgs::CutFootprint :md5sum-) "661f991d4d002d73324475c84dadc8da")
(setf (get robint_msgs::CutFootprint :datatype-) "robint_msgs/CutFootprint")
(setf (get robint_msgs::CutFootprint :request) robint_msgs::CutFootprintRequest)
(setf (get robint_msgs::CutFootprint :response) robint_msgs::CutFootprintResponse)

(defmethod robint_msgs::CutFootprintRequest
  (:response () (instance robint_msgs::CutFootprintResponse :init)))

(setf (get robint_msgs::CutFootprintRequest :md5sum-) "661f991d4d002d73324475c84dadc8da")
(setf (get robint_msgs::CutFootprintRequest :datatype-) "robint_msgs/CutFootprintRequest")
(setf (get robint_msgs::CutFootprintRequest :definition-)
      "geometry_msgs/Point[] footprint

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---
bool success
uint8 error_code
string message
")

(setf (get robint_msgs::CutFootprintResponse :md5sum-) "661f991d4d002d73324475c84dadc8da")
(setf (get robint_msgs::CutFootprintResponse :datatype-) "robint_msgs/CutFootprintResponse")
(setf (get robint_msgs::CutFootprintResponse :definition-)
      "geometry_msgs/Point[] footprint

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---
bool success
uint8 error_code
string message
")



(provide :robint_msgs/CutFootprint "661f991d4d002d73324475c84dadc8da")


