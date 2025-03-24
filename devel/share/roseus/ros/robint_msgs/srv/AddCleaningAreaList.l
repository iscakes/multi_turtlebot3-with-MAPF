;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::AddCleaningAreaList)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'AddCleaningAreaList (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::ADDCLEANINGAREALIST")
  (make-package "ROBINT_MSGS::ADDCLEANINGAREALIST"))
(unless (find-package "ROBINT_MSGS::ADDCLEANINGAREALISTREQUEST")
  (make-package "ROBINT_MSGS::ADDCLEANINGAREALISTREQUEST"))
(unless (find-package "ROBINT_MSGS::ADDCLEANINGAREALISTRESPONSE")
  (make-package "ROBINT_MSGS::ADDCLEANINGAREALISTRESPONSE"))

(in-package "ROS")





(intern "*WORLD*" (find-package "ROBINT_MSGS::ADDCLEANINGAREALISTREQUEST"))
(shadow '*WORLD* (find-package "ROBINT_MSGS::ADDCLEANINGAREALISTREQUEST"))
(defconstant robint_msgs::AddCleaningAreaListRequest::*WORLD* 0)
(intern "*IMAGE*" (find-package "ROBINT_MSGS::ADDCLEANINGAREALISTREQUEST"))
(shadow '*IMAGE* (find-package "ROBINT_MSGS::ADDCLEANINGAREALISTREQUEST"))
(defconstant robint_msgs::AddCleaningAreaListRequest::*IMAGE* 1)

(defun robint_msgs::AddCleaningAreaListRequest-to-symbol (const)
  (cond
        ((= const 0) 'robint_msgs::AddCleaningAreaListRequest::*WORLD*)
        ((= const 1) 'robint_msgs::AddCleaningAreaListRequest::*IMAGE*)
        (t nil)))

(defclass robint_msgs::AddCleaningAreaListRequest
  :super ros::object
  :slots (_map_uuid _coordinate_mode _area_list ))

(defmethod robint_msgs::AddCleaningAreaListRequest
  (:init
   (&key
    ((:map_uuid __map_uuid) "")
    ((:coordinate_mode __coordinate_mode) 0)
    ((:area_list __area_list) ())
    )
   (send-super :init)
   (setq _map_uuid (string __map_uuid))
   (setq _coordinate_mode (round __coordinate_mode))
   (setq _area_list __area_list)
   self)
  (:map_uuid
   (&optional __map_uuid)
   (if __map_uuid (setq _map_uuid __map_uuid)) _map_uuid)
  (:coordinate_mode
   (&optional __coordinate_mode)
   (if __coordinate_mode (setq _coordinate_mode __coordinate_mode)) _coordinate_mode)
  (:area_list
   (&rest __area_list)
   (if (keywordp (car __area_list))
       (send* _area_list __area_list)
     (progn
       (if __area_list (setq _area_list (car __area_list)))
       _area_list)))
  (:serialization-length
   ()
   (+
    ;; string _map_uuid
    4 (length _map_uuid)
    ;; uint8 _coordinate_mode
    1
    ;; robint_msgs/CleaningArea[] _area_list
    (apply #'+ (send-all _area_list :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _map_uuid
       (write-long (length _map_uuid) s) (princ _map_uuid s)
     ;; uint8 _coordinate_mode
       (write-byte _coordinate_mode s)
     ;; robint_msgs/CleaningArea[] _area_list
     (write-long (length _area_list) s)
     (dolist (elem _area_list)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _map_uuid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _map_uuid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _coordinate_mode
     (setq _coordinate_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; robint_msgs/CleaningArea[] _area_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _area_list (let (r) (dotimes (i n) (push (instance robint_msgs::CleaningArea :init) r)) r))
     (dolist (elem- _area_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass robint_msgs::AddCleaningAreaListResponse
  :super ros::object
  :slots (_area_list _success _error_code _message ))

(defmethod robint_msgs::AddCleaningAreaListResponse
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

(defclass robint_msgs::AddCleaningAreaList
  :super ros::object
  :slots ())

(setf (get robint_msgs::AddCleaningAreaList :md5sum-) "2ac1fb955365c2de28133c632c2401b1")
(setf (get robint_msgs::AddCleaningAreaList :datatype-) "robint_msgs/AddCleaningAreaList")
(setf (get robint_msgs::AddCleaningAreaList :request) robint_msgs::AddCleaningAreaListRequest)
(setf (get robint_msgs::AddCleaningAreaList :response) robint_msgs::AddCleaningAreaListResponse)

(defmethod robint_msgs::AddCleaningAreaListRequest
  (:response () (instance robint_msgs::AddCleaningAreaListResponse :init)))

(setf (get robint_msgs::AddCleaningAreaListRequest :md5sum-) "2ac1fb955365c2de28133c632c2401b1")
(setf (get robint_msgs::AddCleaningAreaListRequest :datatype-) "robint_msgs/AddCleaningAreaListRequest")
(setf (get robint_msgs::AddCleaningAreaListRequest :definition-)
      "string map_uuid
uint8 coordinate_mode
uint8 WORLD=0
uint8 IMAGE=1
CleaningArea[] area_list

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

(setf (get robint_msgs::AddCleaningAreaListResponse :md5sum-) "2ac1fb955365c2de28133c632c2401b1")
(setf (get robint_msgs::AddCleaningAreaListResponse :datatype-) "robint_msgs/AddCleaningAreaListResponse")
(setf (get robint_msgs::AddCleaningAreaListResponse :definition-)
      "string map_uuid
uint8 coordinate_mode
uint8 WORLD=0
uint8 IMAGE=1
CleaningArea[] area_list

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



(provide :robint_msgs/AddCleaningAreaList "2ac1fb955365c2de28133c632c2401b1")


