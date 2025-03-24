;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::AddCleaningPath)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'AddCleaningPath (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::ADDCLEANINGPATH")
  (make-package "ROBINT_MSGS::ADDCLEANINGPATH"))
(unless (find-package "ROBINT_MSGS::ADDCLEANINGPATHREQUEST")
  (make-package "ROBINT_MSGS::ADDCLEANINGPATHREQUEST"))
(unless (find-package "ROBINT_MSGS::ADDCLEANINGPATHRESPONSE")
  (make-package "ROBINT_MSGS::ADDCLEANINGPATHRESPONSE"))

(in-package "ROS")





(intern "*AUTO*" (find-package "ROBINT_MSGS::ADDCLEANINGPATHREQUEST"))
(shadow '*AUTO* (find-package "ROBINT_MSGS::ADDCLEANINGPATHREQUEST"))
(defconstant robint_msgs::AddCleaningPathRequest::*AUTO* 11)
(intern "*MANUAL*" (find-package "ROBINT_MSGS::ADDCLEANINGPATHREQUEST"))
(shadow '*MANUAL* (find-package "ROBINT_MSGS::ADDCLEANINGPATHREQUEST"))
(defconstant robint_msgs::AddCleaningPathRequest::*MANUAL* 12)
(intern "*BOUSTROPHEDON*" (find-package "ROBINT_MSGS::ADDCLEANINGPATHREQUEST"))
(shadow '*BOUSTROPHEDON* (find-package "ROBINT_MSGS::ADDCLEANINGPATHREQUEST"))
(defconstant robint_msgs::AddCleaningPathRequest::*BOUSTROPHEDON* 21)
(intern "*CONTOUR_LINE*" (find-package "ROBINT_MSGS::ADDCLEANINGPATHREQUEST"))
(shadow '*CONTOUR_LINE* (find-package "ROBINT_MSGS::ADDCLEANINGPATHREQUEST"))
(defconstant robint_msgs::AddCleaningPathRequest::*CONTOUR_LINE* 22)
(intern "*STRIP_LINE*" (find-package "ROBINT_MSGS::ADDCLEANINGPATHREQUEST"))
(shadow '*STRIP_LINE* (find-package "ROBINT_MSGS::ADDCLEANINGPATHREQUEST"))
(defconstant robint_msgs::AddCleaningPathRequest::*STRIP_LINE* 23)
(intern "*RECTANGLE_ZIGZAG*" (find-package "ROBINT_MSGS::ADDCLEANINGPATHREQUEST"))
(shadow '*RECTANGLE_ZIGZAG* (find-package "ROBINT_MSGS::ADDCLEANINGPATHREQUEST"))
(defconstant robint_msgs::AddCleaningPathRequest::*RECTANGLE_ZIGZAG* 24)
(intern "*CONTOUR_PARALLEL*" (find-package "ROBINT_MSGS::ADDCLEANINGPATHREQUEST"))
(shadow '*CONTOUR_PARALLEL* (find-package "ROBINT_MSGS::ADDCLEANINGPATHREQUEST"))
(defconstant robint_msgs::AddCleaningPathRequest::*CONTOUR_PARALLEL* 25)
(intern "*METHOD_TEST*" (find-package "ROBINT_MSGS::ADDCLEANINGPATHREQUEST"))
(shadow '*METHOD_TEST* (find-package "ROBINT_MSGS::ADDCLEANINGPATHREQUEST"))
(defconstant robint_msgs::AddCleaningPathRequest::*METHOD_TEST* 26)
(intern "*WORLD*" (find-package "ROBINT_MSGS::ADDCLEANINGPATHREQUEST"))
(shadow '*WORLD* (find-package "ROBINT_MSGS::ADDCLEANINGPATHREQUEST"))
(defconstant robint_msgs::AddCleaningPathRequest::*WORLD* 0)
(intern "*IMAGE*" (find-package "ROBINT_MSGS::ADDCLEANINGPATHREQUEST"))
(shadow '*IMAGE* (find-package "ROBINT_MSGS::ADDCLEANINGPATHREQUEST"))
(defconstant robint_msgs::AddCleaningPathRequest::*IMAGE* 1)

(defun robint_msgs::AddCleaningPathRequest-to-symbol (const)
  (cond
        ((= const 11) 'robint_msgs::AddCleaningPathRequest::*AUTO*)
        ((= const 12) 'robint_msgs::AddCleaningPathRequest::*MANUAL*)
        ((= const 21) 'robint_msgs::AddCleaningPathRequest::*BOUSTROPHEDON*)
        ((= const 22) 'robint_msgs::AddCleaningPathRequest::*CONTOUR_LINE*)
        ((= const 23) 'robint_msgs::AddCleaningPathRequest::*STRIP_LINE*)
        ((= const 24) 'robint_msgs::AddCleaningPathRequest::*RECTANGLE_ZIGZAG*)
        ((= const 25) 'robint_msgs::AddCleaningPathRequest::*CONTOUR_PARALLEL*)
        ((= const 26) 'robint_msgs::AddCleaningPathRequest::*METHOD_TEST*)
        ((= const 0) 'robint_msgs::AddCleaningPathRequest::*WORLD*)
        ((= const 1) 'robint_msgs::AddCleaningPathRequest::*IMAGE*)
        (t nil)))

(defclass robint_msgs::AddCleaningPathRequest
  :super ros::object
  :slots (_map_uuid _path_mode _method _coordinate_mode _cleaning_area_uuid _paths ))

(defmethod robint_msgs::AddCleaningPathRequest
  (:init
   (&key
    ((:map_uuid __map_uuid) "")
    ((:path_mode __path_mode) 0)
    ((:method __method) 0)
    ((:coordinate_mode __coordinate_mode) 0)
    ((:cleaning_area_uuid __cleaning_area_uuid) "")
    ((:paths __paths) ())
    )
   (send-super :init)
   (setq _map_uuid (string __map_uuid))
   (setq _path_mode (round __path_mode))
   (setq _method (round __method))
   (setq _coordinate_mode (round __coordinate_mode))
   (setq _cleaning_area_uuid (string __cleaning_area_uuid))
   (setq _paths __paths)
   self)
  (:map_uuid
   (&optional __map_uuid)
   (if __map_uuid (setq _map_uuid __map_uuid)) _map_uuid)
  (:path_mode
   (&optional __path_mode)
   (if __path_mode (setq _path_mode __path_mode)) _path_mode)
  (:method
   (&optional __method)
   (if __method (setq _method __method)) _method)
  (:coordinate_mode
   (&optional __coordinate_mode)
   (if __coordinate_mode (setq _coordinate_mode __coordinate_mode)) _coordinate_mode)
  (:cleaning_area_uuid
   (&optional __cleaning_area_uuid)
   (if __cleaning_area_uuid (setq _cleaning_area_uuid __cleaning_area_uuid)) _cleaning_area_uuid)
  (:paths
   (&rest __paths)
   (if (keywordp (car __paths))
       (send* _paths __paths)
     (progn
       (if __paths (setq _paths (car __paths)))
       _paths)))
  (:serialization-length
   ()
   (+
    ;; string _map_uuid
    4 (length _map_uuid)
    ;; uint8 _path_mode
    1
    ;; uint8 _method
    1
    ;; uint8 _coordinate_mode
    1
    ;; string _cleaning_area_uuid
    4 (length _cleaning_area_uuid)
    ;; robint_msgs/PathWithPoint[] _paths
    (apply #'+ (send-all _paths :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _map_uuid
       (write-long (length _map_uuid) s) (princ _map_uuid s)
     ;; uint8 _path_mode
       (write-byte _path_mode s)
     ;; uint8 _method
       (write-byte _method s)
     ;; uint8 _coordinate_mode
       (write-byte _coordinate_mode s)
     ;; string _cleaning_area_uuid
       (write-long (length _cleaning_area_uuid) s) (princ _cleaning_area_uuid s)
     ;; robint_msgs/PathWithPoint[] _paths
     (write-long (length _paths) s)
     (dolist (elem _paths)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _map_uuid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _map_uuid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _path_mode
     (setq _path_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _method
     (setq _method (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _coordinate_mode
     (setq _coordinate_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _cleaning_area_uuid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _cleaning_area_uuid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; robint_msgs/PathWithPoint[] _paths
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _paths (let (r) (dotimes (i n) (push (instance robint_msgs::PathWithPoint :init) r)) r))
     (dolist (elem- _paths)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass robint_msgs::AddCleaningPathResponse
  :super ros::object
  :slots (_paths _success _error_code _message ))

(defmethod robint_msgs::AddCleaningPathResponse
  (:init
   (&key
    ((:paths __paths) ())
    ((:success __success) nil)
    ((:error_code __error_code) 0)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _paths __paths)
   (setq _success __success)
   (setq _error_code (round __error_code))
   (setq _message (string __message))
   self)
  (:paths
   (&rest __paths)
   (if (keywordp (car __paths))
       (send* _paths __paths)
     (progn
       (if __paths (setq _paths (car __paths)))
       _paths)))
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
    ;; robint_msgs/PathWithPoint[] _paths
    (apply #'+ (send-all _paths :serialization-length)) 4
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
     ;; robint_msgs/PathWithPoint[] _paths
     (write-long (length _paths) s)
     (dolist (elem _paths)
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
   ;; robint_msgs/PathWithPoint[] _paths
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _paths (let (r) (dotimes (i n) (push (instance robint_msgs::PathWithPoint :init) r)) r))
     (dolist (elem- _paths)
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

(defclass robint_msgs::AddCleaningPath
  :super ros::object
  :slots ())

(setf (get robint_msgs::AddCleaningPath :md5sum-) "2e6f689ab7f8b77edcc78db3d63bc3d6")
(setf (get robint_msgs::AddCleaningPath :datatype-) "robint_msgs/AddCleaningPath")
(setf (get robint_msgs::AddCleaningPath :request) robint_msgs::AddCleaningPathRequest)
(setf (get robint_msgs::AddCleaningPath :response) robint_msgs::AddCleaningPathResponse)

(defmethod robint_msgs::AddCleaningPathRequest
  (:response () (instance robint_msgs::AddCleaningPathResponse :init)))

(setf (get robint_msgs::AddCleaningPathRequest :md5sum-) "2e6f689ab7f8b77edcc78db3d63bc3d6")
(setf (get robint_msgs::AddCleaningPathRequest :datatype-) "robint_msgs/AddCleaningPathRequest")
(setf (get robint_msgs::AddCleaningPathRequest :definition-)
      "string map_uuid
uint8 path_mode
uint8 AUTO=11          # generate cleaning path automaticly
uint8 MANUAL=12        # use requested path as cleaning path
uint8 method
uint8 BOUSTROPHEDON=21
uint8 CONTOUR_LINE=22
uint8 STRIP_LINE=23
uint8 RECTANGLE_ZIGZAG=24
uint8 CONTOUR_PARALLEL=25
uint8 METHOD_TEST=26
uint8 coordinate_mode
uint8 WORLD=0
uint8 IMAGE=1
string cleaning_area_uuid
PathWithPoint[] paths

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
PathWithPoint[] paths
bool success
uint8 error_code
string message

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

(setf (get robint_msgs::AddCleaningPathResponse :md5sum-) "2e6f689ab7f8b77edcc78db3d63bc3d6")
(setf (get robint_msgs::AddCleaningPathResponse :datatype-) "robint_msgs/AddCleaningPathResponse")
(setf (get robint_msgs::AddCleaningPathResponse :definition-)
      "string map_uuid
uint8 path_mode
uint8 AUTO=11          # generate cleaning path automaticly
uint8 MANUAL=12        # use requested path as cleaning path
uint8 method
uint8 BOUSTROPHEDON=21
uint8 CONTOUR_LINE=22
uint8 STRIP_LINE=23
uint8 RECTANGLE_ZIGZAG=24
uint8 CONTOUR_PARALLEL=25
uint8 METHOD_TEST=26
uint8 coordinate_mode
uint8 WORLD=0
uint8 IMAGE=1
string cleaning_area_uuid
PathWithPoint[] paths

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
PathWithPoint[] paths
bool success
uint8 error_code
string message

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



(provide :robint_msgs/AddCleaningPath "2e6f689ab7f8b77edcc78db3d63bc3d6")


