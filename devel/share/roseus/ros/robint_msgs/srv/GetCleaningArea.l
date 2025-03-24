;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::GetCleaningArea)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'GetCleaningArea (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::GETCLEANINGAREA")
  (make-package "ROBINT_MSGS::GETCLEANINGAREA"))
(unless (find-package "ROBINT_MSGS::GETCLEANINGAREAREQUEST")
  (make-package "ROBINT_MSGS::GETCLEANINGAREAREQUEST"))
(unless (find-package "ROBINT_MSGS::GETCLEANINGAREARESPONSE")
  (make-package "ROBINT_MSGS::GETCLEANINGAREARESPONSE"))

(in-package "ROS")





(intern "*IMAGE*" (find-package "ROBINT_MSGS::GETCLEANINGAREAREQUEST"))
(shadow '*IMAGE* (find-package "ROBINT_MSGS::GETCLEANINGAREAREQUEST"))
(defconstant robint_msgs::GetCleaningAreaRequest::*IMAGE* 0)
(intern "*WORLD*" (find-package "ROBINT_MSGS::GETCLEANINGAREAREQUEST"))
(shadow '*WORLD* (find-package "ROBINT_MSGS::GETCLEANINGAREAREQUEST"))
(defconstant robint_msgs::GetCleaningAreaRequest::*WORLD* 1)

(defun robint_msgs::GetCleaningAreaRequest-to-symbol (const)
  (cond
        ((= const 0) 'robint_msgs::GetCleaningAreaRequest::*IMAGE*)
        ((= const 1) 'robint_msgs::GetCleaningAreaRequest::*WORLD*)
        (t nil)))

(defclass robint_msgs::GetCleaningAreaRequest
  :super ros::object
  :slots (_area_uuid _coordinate_mode ))

(defmethod robint_msgs::GetCleaningAreaRequest
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

(defclass robint_msgs::GetCleaningAreaResponse
  :super ros::object
  :slots (_area _success _error_code _message ))

(defmethod robint_msgs::GetCleaningAreaResponse
  (:init
   (&key
    ((:area __area) (instance robint_msgs::CleaningArea :init))
    ((:success __success) nil)
    ((:error_code __error_code) 0)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _area __area)
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
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _error_code
     (setq _error_code (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robint_msgs::GetCleaningArea
  :super ros::object
  :slots ())

(setf (get robint_msgs::GetCleaningArea :md5sum-) "1778f6924e0699ed892dfa1d950f8e70")
(setf (get robint_msgs::GetCleaningArea :datatype-) "robint_msgs/GetCleaningArea")
(setf (get robint_msgs::GetCleaningArea :request) robint_msgs::GetCleaningAreaRequest)
(setf (get robint_msgs::GetCleaningArea :response) robint_msgs::GetCleaningAreaResponse)

(defmethod robint_msgs::GetCleaningAreaRequest
  (:response () (instance robint_msgs::GetCleaningAreaResponse :init)))

(setf (get robint_msgs::GetCleaningAreaRequest :md5sum-) "1778f6924e0699ed892dfa1d950f8e70")
(setf (get robint_msgs::GetCleaningAreaRequest :datatype-) "robint_msgs/GetCleaningAreaRequest")
(setf (get robint_msgs::GetCleaningAreaRequest :definition-)
      "string area_uuid
uint8 coordinate_mode
uint8 IMAGE=0
uint8 WORLD=1
---
CleaningArea area
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

(setf (get robint_msgs::GetCleaningAreaResponse :md5sum-) "1778f6924e0699ed892dfa1d950f8e70")
(setf (get robint_msgs::GetCleaningAreaResponse :datatype-) "robint_msgs/GetCleaningAreaResponse")
(setf (get robint_msgs::GetCleaningAreaResponse :definition-)
      "string area_uuid
uint8 coordinate_mode
uint8 IMAGE=0
uint8 WORLD=1
---
CleaningArea area
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



(provide :robint_msgs/GetCleaningArea "1778f6924e0699ed892dfa1d950f8e70")


