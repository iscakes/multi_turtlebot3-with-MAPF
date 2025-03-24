;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::GetCleaningTaskInfo)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'GetCleaningTaskInfo (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::GETCLEANINGTASKINFO")
  (make-package "ROBINT_MSGS::GETCLEANINGTASKINFO"))
(unless (find-package "ROBINT_MSGS::GETCLEANINGTASKINFOREQUEST")
  (make-package "ROBINT_MSGS::GETCLEANINGTASKINFOREQUEST"))
(unless (find-package "ROBINT_MSGS::GETCLEANINGTASKINFORESPONSE")
  (make-package "ROBINT_MSGS::GETCLEANINGTASKINFORESPONSE"))

(in-package "ROS")





(intern "*IMAGE*" (find-package "ROBINT_MSGS::GETCLEANINGTASKINFOREQUEST"))
(shadow '*IMAGE* (find-package "ROBINT_MSGS::GETCLEANINGTASKINFOREQUEST"))
(defconstant robint_msgs::GetCleaningTaskInfoRequest::*IMAGE* 0)
(intern "*WORLD*" (find-package "ROBINT_MSGS::GETCLEANINGTASKINFOREQUEST"))
(shadow '*WORLD* (find-package "ROBINT_MSGS::GETCLEANINGTASKINFOREQUEST"))
(defconstant robint_msgs::GetCleaningTaskInfoRequest::*WORLD* 1)

(defun robint_msgs::GetCleaningTaskInfoRequest-to-symbol (const)
  (cond
        ((= const 0) 'robint_msgs::GetCleaningTaskInfoRequest::*IMAGE*)
        ((= const 1) 'robint_msgs::GetCleaningTaskInfoRequest::*WORLD*)
        (t nil)))

(defclass robint_msgs::GetCleaningTaskInfoRequest
  :super ros::object
  :slots (_area_uuid _coordinate_mode ))

(defmethod robint_msgs::GetCleaningTaskInfoRequest
  (:init
   (&key
    ((:area_uuid __area_uuid) "")
    ((:coordinate_mode __coordinate_mode) 0)
    )
   (send-super :init)
   (setq _area_uuid (string __area_uuid))
   (setq _coordinate_mode (round __coordinate_mode))
   self)
  (:area_uuid
   (&optional __area_uuid)
   (if __area_uuid (setq _area_uuid __area_uuid)) _area_uuid)
  (:coordinate_mode
   (&optional __coordinate_mode)
   (if __coordinate_mode (setq _coordinate_mode __coordinate_mode)) _coordinate_mode)
  (:serialization-length
   ()
   (+
    ;; string _area_uuid
    4 (length _area_uuid)
    ;; uint8 _coordinate_mode
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _area_uuid
       (write-long (length _area_uuid) s) (princ _area_uuid s)
     ;; uint8 _coordinate_mode
       (write-byte _coordinate_mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _area_uuid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _area_uuid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _coordinate_mode
     (setq _coordinate_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass robint_msgs::GetCleaningTaskInfoResponse
  :super ros::object
  :slots (_area _robot_is_inside_area _success _error_code _message ))

(defmethod robint_msgs::GetCleaningTaskInfoResponse
  (:init
   (&key
    ((:area __area) (instance robint_msgs::CleaningArea :init))
    ((:robot_is_inside_area __robot_is_inside_area) nil)
    ((:success __success) nil)
    ((:error_code __error_code) 0)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _area __area)
   (setq _robot_is_inside_area __robot_is_inside_area)
   (setq _success __success)
   (setq _error_code (round __error_code))
   (setq _message (string __message))
   self)
  (:area
   (&rest __area)
   (if (keywordp (car __area))
       (send* _area __area)
     (progn
       (if __area (setq _area (car __area)))
       _area)))
  (:robot_is_inside_area
   (&optional (__robot_is_inside_area :null))
   (if (not (eq __robot_is_inside_area :null)) (setq _robot_is_inside_area __robot_is_inside_area)) _robot_is_inside_area)
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
    ;; robint_msgs/CleaningArea _area
    (send _area :serialization-length)
    ;; bool _robot_is_inside_area
    1
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
     ;; robint_msgs/CleaningArea _area
       (send _area :serialize s)
     ;; bool _robot_is_inside_area
       (if _robot_is_inside_area (write-byte -1 s) (write-byte 0 s))
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
   ;; robint_msgs/CleaningArea _area
     (send _area :deserialize buf ptr-) (incf ptr- (send _area :serialization-length))
   ;; bool _robot_is_inside_area
     (setq _robot_is_inside_area (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _error_code
     (setq _error_code (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robint_msgs::GetCleaningTaskInfo
  :super ros::object
  :slots ())

(setf (get robint_msgs::GetCleaningTaskInfo :md5sum-) "2c13b4f1da851ed54f7a178d55630472")
(setf (get robint_msgs::GetCleaningTaskInfo :datatype-) "robint_msgs/GetCleaningTaskInfo")
(setf (get robint_msgs::GetCleaningTaskInfo :request) robint_msgs::GetCleaningTaskInfoRequest)
(setf (get robint_msgs::GetCleaningTaskInfo :response) robint_msgs::GetCleaningTaskInfoResponse)

(defmethod robint_msgs::GetCleaningTaskInfoRequest
  (:response () (instance robint_msgs::GetCleaningTaskInfoResponse :init)))

(setf (get robint_msgs::GetCleaningTaskInfoRequest :md5sum-) "2c13b4f1da851ed54f7a178d55630472")
(setf (get robint_msgs::GetCleaningTaskInfoRequest :datatype-) "robint_msgs/GetCleaningTaskInfoRequest")
(setf (get robint_msgs::GetCleaningTaskInfoRequest :definition-)
      "string area_uuid
uint8 coordinate_mode
uint8 IMAGE=0
uint8 WORLD=1
---
CleaningArea area
bool robot_is_inside_area
bool success
uint8 error_code
string message

================================================================================
MSG: robint_msgs/CleaningArea
string uuid
string name
string map_uuid
string group_uuid
string coverage_method
PathWithPoint contour
PathWithPoint[] paths
PathWithPoint[] holes
================================================================================
MSG: robint_msgs/PathWithPoint
uint32 id
string type
geometry_msgs/Point[] points
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")

(setf (get robint_msgs::GetCleaningTaskInfoResponse :md5sum-) "2c13b4f1da851ed54f7a178d55630472")
(setf (get robint_msgs::GetCleaningTaskInfoResponse :datatype-) "robint_msgs/GetCleaningTaskInfoResponse")
(setf (get robint_msgs::GetCleaningTaskInfoResponse :definition-)
      "string area_uuid
uint8 coordinate_mode
uint8 IMAGE=0
uint8 WORLD=1
---
CleaningArea area
bool robot_is_inside_area
bool success
uint8 error_code
string message

================================================================================
MSG: robint_msgs/CleaningArea
string uuid
string name
string map_uuid
string group_uuid
string coverage_method
PathWithPoint contour
PathWithPoint[] paths
PathWithPoint[] holes
================================================================================
MSG: robint_msgs/PathWithPoint
uint32 id
string type
geometry_msgs/Point[] points
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")



(provide :robint_msgs/GetCleaningTaskInfo "2c13b4f1da851ed54f7a178d55630472")


