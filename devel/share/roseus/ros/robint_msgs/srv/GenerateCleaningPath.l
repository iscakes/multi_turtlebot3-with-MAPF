;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::GenerateCleaningPath)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'GenerateCleaningPath (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::GENERATECLEANINGPATH")
  (make-package "ROBINT_MSGS::GENERATECLEANINGPATH"))
(unless (find-package "ROBINT_MSGS::GENERATECLEANINGPATHREQUEST")
  (make-package "ROBINT_MSGS::GENERATECLEANINGPATHREQUEST"))
(unless (find-package "ROBINT_MSGS::GENERATECLEANINGPATHRESPONSE")
  (make-package "ROBINT_MSGS::GENERATECLEANINGPATHRESPONSE"))

(in-package "ROS")





(intern "*WORLD*" (find-package "ROBINT_MSGS::GENERATECLEANINGPATHREQUEST"))
(shadow '*WORLD* (find-package "ROBINT_MSGS::GENERATECLEANINGPATHREQUEST"))
(defconstant robint_msgs::GenerateCleaningPathRequest::*WORLD* 0)
(intern "*IMAGE*" (find-package "ROBINT_MSGS::GENERATECLEANINGPATHREQUEST"))
(shadow '*IMAGE* (find-package "ROBINT_MSGS::GENERATECLEANINGPATHREQUEST"))
(defconstant robint_msgs::GenerateCleaningPathRequest::*IMAGE* 1)
(intern "*BOUSTROPHEDON*" (find-package "ROBINT_MSGS::GENERATECLEANINGPATHREQUEST"))
(shadow '*BOUSTROPHEDON* (find-package "ROBINT_MSGS::GENERATECLEANINGPATHREQUEST"))
(defconstant robint_msgs::GenerateCleaningPathRequest::*BOUSTROPHEDON* 21)
(intern "*CONTOUR_LINE*" (find-package "ROBINT_MSGS::GENERATECLEANINGPATHREQUEST"))
(shadow '*CONTOUR_LINE* (find-package "ROBINT_MSGS::GENERATECLEANINGPATHREQUEST"))
(defconstant robint_msgs::GenerateCleaningPathRequest::*CONTOUR_LINE* 22)
(intern "*STRIP_LINE*" (find-package "ROBINT_MSGS::GENERATECLEANINGPATHREQUEST"))
(shadow '*STRIP_LINE* (find-package "ROBINT_MSGS::GENERATECLEANINGPATHREQUEST"))
(defconstant robint_msgs::GenerateCleaningPathRequest::*STRIP_LINE* 23)
(intern "*RECTANGLE_ZIGZAG*" (find-package "ROBINT_MSGS::GENERATECLEANINGPATHREQUEST"))
(shadow '*RECTANGLE_ZIGZAG* (find-package "ROBINT_MSGS::GENERATECLEANINGPATHREQUEST"))
(defconstant robint_msgs::GenerateCleaningPathRequest::*RECTANGLE_ZIGZAG* 24)
(intern "*CONTOUR_PARALLEL*" (find-package "ROBINT_MSGS::GENERATECLEANINGPATHREQUEST"))
(shadow '*CONTOUR_PARALLEL* (find-package "ROBINT_MSGS::GENERATECLEANINGPATHREQUEST"))
(defconstant robint_msgs::GenerateCleaningPathRequest::*CONTOUR_PARALLEL* 25)
(intern "*METHOD_TEST*" (find-package "ROBINT_MSGS::GENERATECLEANINGPATHREQUEST"))
(shadow '*METHOD_TEST* (find-package "ROBINT_MSGS::GENERATECLEANINGPATHREQUEST"))
(defconstant robint_msgs::GenerateCleaningPathRequest::*METHOD_TEST* 26)

(defun robint_msgs::GenerateCleaningPathRequest-to-symbol (const)
  (cond
        ((= const 0) 'robint_msgs::GenerateCleaningPathRequest::*WORLD*)
        ((= const 1) 'robint_msgs::GenerateCleaningPathRequest::*IMAGE*)
        ((= const 21) 'robint_msgs::GenerateCleaningPathRequest::*BOUSTROPHEDON*)
        ((= const 22) 'robint_msgs::GenerateCleaningPathRequest::*CONTOUR_LINE*)
        ((= const 23) 'robint_msgs::GenerateCleaningPathRequest::*STRIP_LINE*)
        ((= const 24) 'robint_msgs::GenerateCleaningPathRequest::*RECTANGLE_ZIGZAG*)
        ((= const 25) 'robint_msgs::GenerateCleaningPathRequest::*CONTOUR_PARALLEL*)
        ((= const 26) 'robint_msgs::GenerateCleaningPathRequest::*METHOD_TEST*)
        (t nil)))

(defclass robint_msgs::GenerateCleaningPathRequest
  :super ros::object
  :slots (_map_uuid _coordinate_mode _method _area ))

(defmethod robint_msgs::GenerateCleaningPathRequest
  (:init
   (&key
    ((:map_uuid __map_uuid) "")
    ((:coordinate_mode __coordinate_mode) 0)
    ((:method __method) 0)
    ((:area __area) (instance robint_msgs::CleaningArea :init))
    )
   (send-super :init)
   (setq _map_uuid (string __map_uuid))
   (setq _coordinate_mode (round __coordinate_mode))
   (setq _method (round __method))
   (setq _area __area)
   self)
  (:map_uuid
   (&optional __map_uuid)
   (if __map_uuid (setq _map_uuid __map_uuid)) _map_uuid)
  (:coordinate_mode
   (&optional __coordinate_mode)
   (if __coordinate_mode (setq _coordinate_mode __coordinate_mode)) _coordinate_mode)
  (:method
   (&optional __method)
   (if __method (setq _method __method)) _method)
  (:area
   (&rest __area)
   (if (keywordp (car __area))
       (send* _area __area)
     (progn
       (if __area (setq _area (car __area)))
       _area)))
  (:serialization-length
   ()
   (+
    ;; string _map_uuid
    4 (length _map_uuid)
    ;; uint8 _coordinate_mode
    1
    ;; uint8 _method
    1
    ;; robint_msgs/CleaningArea _area
    (send _area :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _map_uuid
       (write-long (length _map_uuid) s) (princ _map_uuid s)
     ;; uint8 _coordinate_mode
       (write-byte _coordinate_mode s)
     ;; uint8 _method
       (write-byte _method s)
     ;; robint_msgs/CleaningArea _area
       (send _area :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _map_uuid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _map_uuid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _coordinate_mode
     (setq _coordinate_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _method
     (setq _method (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; robint_msgs/CleaningArea _area
     (send _area :deserialize buf ptr-) (incf ptr- (send _area :serialization-length))
   ;;
   self)
  )

(defclass robint_msgs::GenerateCleaningPathResponse
  :super ros::object
  :slots (_coordinate_mode _paths _success _error_code _message ))

(defmethod robint_msgs::GenerateCleaningPathResponse
  (:init
   (&key
    ((:coordinate_mode __coordinate_mode) 0)
    ((:paths __paths) ())
    ((:success __success) nil)
    ((:error_code __error_code) 0)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _coordinate_mode (round __coordinate_mode))
   (setq _paths __paths)
   (setq _success __success)
   (setq _error_code (round __error_code))
   (setq _message (string __message))
   self)
  (:coordinate_mode
   (&optional __coordinate_mode)
   (if __coordinate_mode (setq _coordinate_mode __coordinate_mode)) _coordinate_mode)
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
    ;; uint8 _coordinate_mode
    1
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
     ;; uint8 _coordinate_mode
       (write-byte _coordinate_mode s)
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
   ;; uint8 _coordinate_mode
     (setq _coordinate_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
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

(defclass robint_msgs::GenerateCleaningPath
  :super ros::object
  :slots ())

(setf (get robint_msgs::GenerateCleaningPath :md5sum-) "b0af0e138bf97ac889a840793d2c3bcf")
(setf (get robint_msgs::GenerateCleaningPath :datatype-) "robint_msgs/GenerateCleaningPath")
(setf (get robint_msgs::GenerateCleaningPath :request) robint_msgs::GenerateCleaningPathRequest)
(setf (get robint_msgs::GenerateCleaningPath :response) robint_msgs::GenerateCleaningPathResponse)

(defmethod robint_msgs::GenerateCleaningPathRequest
  (:response () (instance robint_msgs::GenerateCleaningPathResponse :init)))

(setf (get robint_msgs::GenerateCleaningPathRequest :md5sum-) "b0af0e138bf97ac889a840793d2c3bcf")
(setf (get robint_msgs::GenerateCleaningPathRequest :datatype-) "robint_msgs/GenerateCleaningPathRequest")
(setf (get robint_msgs::GenerateCleaningPathRequest :definition-)
      "string map_uuid
uint8 coordinate_mode
uint8 WORLD=0
uint8 IMAGE=1
uint8 method
uint8 BOUSTROPHEDON=21
uint8 CONTOUR_LINE=22
uint8 STRIP_LINE=23
uint8 RECTANGLE_ZIGZAG=24
uint8 CONTOUR_PARALLEL=25
uint8 METHOD_TEST=26
CleaningArea area

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
uint8 coordinate_mode
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

(setf (get robint_msgs::GenerateCleaningPathResponse :md5sum-) "b0af0e138bf97ac889a840793d2c3bcf")
(setf (get robint_msgs::GenerateCleaningPathResponse :datatype-) "robint_msgs/GenerateCleaningPathResponse")
(setf (get robint_msgs::GenerateCleaningPathResponse :definition-)
      "string map_uuid
uint8 coordinate_mode
uint8 WORLD=0
uint8 IMAGE=1
uint8 method
uint8 BOUSTROPHEDON=21
uint8 CONTOUR_LINE=22
uint8 STRIP_LINE=23
uint8 RECTANGLE_ZIGZAG=24
uint8 CONTOUR_PARALLEL=25
uint8 METHOD_TEST=26
CleaningArea area

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
uint8 coordinate_mode
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



(provide :robint_msgs/GenerateCleaningPath "b0af0e138bf97ac889a840793d2c3bcf")


