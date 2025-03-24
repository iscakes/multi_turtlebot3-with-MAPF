;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::GetTrajectoryPoint)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'GetTrajectoryPoint (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::GETTRAJECTORYPOINT")
  (make-package "ROBINT_MSGS::GETTRAJECTORYPOINT"))
(unless (find-package "ROBINT_MSGS::GETTRAJECTORYPOINTREQUEST")
  (make-package "ROBINT_MSGS::GETTRAJECTORYPOINTREQUEST"))
(unless (find-package "ROBINT_MSGS::GETTRAJECTORYPOINTRESPONSE")
  (make-package "ROBINT_MSGS::GETTRAJECTORYPOINTRESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(intern "*IMAGE*" (find-package "ROBINT_MSGS::GETTRAJECTORYPOINTREQUEST"))
(shadow '*IMAGE* (find-package "ROBINT_MSGS::GETTRAJECTORYPOINTREQUEST"))
(defconstant robint_msgs::GetTrajectoryPointRequest::*IMAGE* 0)
(intern "*WORLD*" (find-package "ROBINT_MSGS::GETTRAJECTORYPOINTREQUEST"))
(shadow '*WORLD* (find-package "ROBINT_MSGS::GETTRAJECTORYPOINTREQUEST"))
(defconstant robint_msgs::GetTrajectoryPointRequest::*WORLD* 1)

(defun robint_msgs::GetTrajectoryPointRequest-to-symbol (const)
  (cond
        ((= const 0) 'robint_msgs::GetTrajectoryPointRequest::*IMAGE*)
        ((= const 1) 'robint_msgs::GetTrajectoryPointRequest::*WORLD*)
        (t nil)))

(defclass robint_msgs::GetTrajectoryPointRequest
  :super ros::object
  :slots (_request_id _coordinate_mode ))

(defmethod robint_msgs::GetTrajectoryPointRequest
  (:init
   (&key
    ((:request_id __request_id) 0)
    ((:coordinate_mode __coordinate_mode) 0)
    )
   (send-super :init)
   (setq _request_id (round __request_id))
   (setq _coordinate_mode (round __coordinate_mode))
   self)
  (:request_id
   (&optional __request_id)
   (if __request_id (setq _request_id __request_id)) _request_id)
  (:coordinate_mode
   (&optional __coordinate_mode)
   (if __coordinate_mode (setq _coordinate_mode __coordinate_mode)) _coordinate_mode)
  (:serialization-length
   ()
   (+
    ;; uint32 _request_id
    4
    ;; uint8 _coordinate_mode
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _request_id
       (write-long _request_id s)
     ;; uint8 _coordinate_mode
       (write-byte _coordinate_mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _request_id
     (setq _request_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _coordinate_mode
     (setq _coordinate_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass robint_msgs::GetTrajectoryPointResponse
  :super ros::object
  :slots (_pt _current_id _total_points_number _success _error_code _message ))

(defmethod robint_msgs::GetTrajectoryPointResponse
  (:init
   (&key
    ((:pt __pt) (instance geometry_msgs::Point :init))
    ((:current_id __current_id) 0)
    ((:total_points_number __total_points_number) 0)
    ((:success __success) nil)
    ((:error_code __error_code) 0)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _pt __pt)
   (setq _current_id (round __current_id))
   (setq _total_points_number (round __total_points_number))
   (setq _success __success)
   (setq _error_code (round __error_code))
   (setq _message (string __message))
   self)
  (:pt
   (&rest __pt)
   (if (keywordp (car __pt))
       (send* _pt __pt)
     (progn
       (if __pt (setq _pt (car __pt)))
       _pt)))
  (:current_id
   (&optional __current_id)
   (if __current_id (setq _current_id __current_id)) _current_id)
  (:total_points_number
   (&optional __total_points_number)
   (if __total_points_number (setq _total_points_number __total_points_number)) _total_points_number)
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
    ;; geometry_msgs/Point _pt
    (send _pt :serialization-length)
    ;; uint32 _current_id
    4
    ;; uint32 _total_points_number
    4
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
     ;; geometry_msgs/Point _pt
       (send _pt :serialize s)
     ;; uint32 _current_id
       (write-long _current_id s)
     ;; uint32 _total_points_number
       (write-long _total_points_number s)
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
   ;; geometry_msgs/Point _pt
     (send _pt :deserialize buf ptr-) (incf ptr- (send _pt :serialization-length))
   ;; uint32 _current_id
     (setq _current_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _total_points_number
     (setq _total_points_number (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _error_code
     (setq _error_code (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robint_msgs::GetTrajectoryPoint
  :super ros::object
  :slots ())

(setf (get robint_msgs::GetTrajectoryPoint :md5sum-) "8fd56019054effcf13a55a60fa14c24c")
(setf (get robint_msgs::GetTrajectoryPoint :datatype-) "robint_msgs/GetTrajectoryPoint")
(setf (get robint_msgs::GetTrajectoryPoint :request) robint_msgs::GetTrajectoryPointRequest)
(setf (get robint_msgs::GetTrajectoryPoint :response) robint_msgs::GetTrajectoryPointResponse)

(defmethod robint_msgs::GetTrajectoryPointRequest
  (:response () (instance robint_msgs::GetTrajectoryPointResponse :init)))

(setf (get robint_msgs::GetTrajectoryPointRequest :md5sum-) "8fd56019054effcf13a55a60fa14c24c")
(setf (get robint_msgs::GetTrajectoryPointRequest :datatype-) "robint_msgs/GetTrajectoryPointRequest")
(setf (get robint_msgs::GetTrajectoryPointRequest :definition-)
      "uint32 request_id
uint8 coordinate_mode
uint8 IMAGE=0
uint8 WORLD=1
---
geometry_msgs/Point pt
uint32 current_id
uint32 total_points_number
bool success
uint8 error_code
string message

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")

(setf (get robint_msgs::GetTrajectoryPointResponse :md5sum-) "8fd56019054effcf13a55a60fa14c24c")
(setf (get robint_msgs::GetTrajectoryPointResponse :datatype-) "robint_msgs/GetTrajectoryPointResponse")
(setf (get robint_msgs::GetTrajectoryPointResponse :definition-)
      "uint32 request_id
uint8 coordinate_mode
uint8 IMAGE=0
uint8 WORLD=1
---
geometry_msgs/Point pt
uint32 current_id
uint32 total_points_number
bool success
uint8 error_code
string message

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")



(provide :robint_msgs/GetTrajectoryPoint "8fd56019054effcf13a55a60fa14c24c")


