;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::GetCleaningAreaList)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'GetCleaningAreaList (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::GETCLEANINGAREALIST")
  (make-package "ROBINT_MSGS::GETCLEANINGAREALIST"))
(unless (find-package "ROBINT_MSGS::GETCLEANINGAREALISTREQUEST")
  (make-package "ROBINT_MSGS::GETCLEANINGAREALISTREQUEST"))
(unless (find-package "ROBINT_MSGS::GETCLEANINGAREALISTRESPONSE")
  (make-package "ROBINT_MSGS::GETCLEANINGAREALISTRESPONSE"))

(in-package "ROS")





(intern "*IMAGE*" (find-package "ROBINT_MSGS::GETCLEANINGAREALISTREQUEST"))
(shadow '*IMAGE* (find-package "ROBINT_MSGS::GETCLEANINGAREALISTREQUEST"))
(defconstant robint_msgs::GetCleaningAreaListRequest::*IMAGE* 0)
(intern "*WORLD*" (find-package "ROBINT_MSGS::GETCLEANINGAREALISTREQUEST"))
(shadow '*WORLD* (find-package "ROBINT_MSGS::GETCLEANINGAREALISTREQUEST"))
(defconstant robint_msgs::GetCleaningAreaListRequest::*WORLD* 1)

(defun robint_msgs::GetCleaningAreaListRequest-to-symbol (const)
  (cond
        ((= const 0) 'robint_msgs::GetCleaningAreaListRequest::*IMAGE*)
        ((= const 1) 'robint_msgs::GetCleaningAreaListRequest::*WORLD*)
        (t nil)))

(defclass robint_msgs::GetCleaningAreaListRequest
  :super ros::object
  :slots (_map_uuid _coordinate_mode ))

(defmethod robint_msgs::GetCleaningAreaListRequest
  (:init
   (&key
    ((:map_uuid __map_uuid) "")
    ((:coordinate_mode __coordinate_mode) 0)
    )
   (send-super :init)
   (setq _map_uuid (string __map_uuid))
   (setq _coordinate_mode (round __coordinate_mode))
   self)
  (:map_uuid
   (&optional __map_uuid)
   (if __map_uuid (setq _map_uuid __map_uuid)) _map_uuid)
  (:coordinate_mode
   (&optional __coordinate_mode)
   (if __coordinate_mode (setq _coordinate_mode __coordinate_mode)) _coordinate_mode)
  (:serialization-length
   ()
   (+
    ;; string _map_uuid
    4 (length _map_uuid)
    ;; uint8 _coordinate_mode
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _map_uuid
       (write-long (length _map_uuid) s) (princ _map_uuid s)
     ;; uint8 _coordinate_mode
       (write-byte _coordinate_mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _map_uuid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _map_uuid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _coordinate_mode
     (setq _coordinate_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass robint_msgs::GetCleaningAreaListResponse
  :super ros::object
  :slots (_area_list _success _error_code _message ))

(defmethod robint_msgs::GetCleaningAreaListResponse
  (:init
   (&key
    ((:area_list __area_list) ())
    ((:success __success) nil)
    ((:error_code __error_code) 0)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _area_list __area_list)
   (setq _success __success)
   (setq _error_code (round __error_code))
   (setq _message (string __message))
   self)
  (:area_list
   (&rest __area_list)
   (if (keywordp (car __area_list))
       (send* _area_list __area_list)
     (progn
       (if __area_list (setq _area_list (car __area_list)))
       _area_list)))
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
    ;; robint_msgs/CleaningArea[] _area_list
    (apply #'+ (send-all _area_list :serialization-length)) 4
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
     ;; robint_msgs/CleaningArea[] _area_list
     (write-long (length _area_list) s)
     (dolist (elem _area_list)
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
   ;; robint_msgs/CleaningArea[] _area_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _area_list (let (r) (dotimes (i n) (push (instance robint_msgs::CleaningArea :init) r)) r))
     (dolist (elem- _area_list)
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

(defclass robint_msgs::GetCleaningAreaList
  :super ros::object
  :slots ())

(setf (get robint_msgs::GetCleaningAreaList :md5sum-) "553fc9d22a1c98218e5830b3a4d1e80c")
(setf (get robint_msgs::GetCleaningAreaList :datatype-) "robint_msgs/GetCleaningAreaList")
(setf (get robint_msgs::GetCleaningAreaList :request) robint_msgs::GetCleaningAreaListRequest)
(setf (get robint_msgs::GetCleaningAreaList :response) robint_msgs::GetCleaningAreaListResponse)

(defmethod robint_msgs::GetCleaningAreaListRequest
  (:response () (instance robint_msgs::GetCleaningAreaListResponse :init)))

(setf (get robint_msgs::GetCleaningAreaListRequest :md5sum-) "553fc9d22a1c98218e5830b3a4d1e80c")
(setf (get robint_msgs::GetCleaningAreaListRequest :datatype-) "robint_msgs/GetCleaningAreaListRequest")
(setf (get robint_msgs::GetCleaningAreaListRequest :definition-)
      "string map_uuid
uint8 coordinate_mode
uint8 IMAGE=0
uint8 WORLD=1
---
CleaningArea[] area_list
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

(setf (get robint_msgs::GetCleaningAreaListResponse :md5sum-) "553fc9d22a1c98218e5830b3a4d1e80c")
(setf (get robint_msgs::GetCleaningAreaListResponse :datatype-) "robint_msgs/GetCleaningAreaListResponse")
(setf (get robint_msgs::GetCleaningAreaListResponse :definition-)
      "string map_uuid
uint8 coordinate_mode
uint8 IMAGE=0
uint8 WORLD=1
---
CleaningArea[] area_list
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



(provide :robint_msgs/GetCleaningAreaList "553fc9d22a1c98218e5830b3a4d1e80c")


