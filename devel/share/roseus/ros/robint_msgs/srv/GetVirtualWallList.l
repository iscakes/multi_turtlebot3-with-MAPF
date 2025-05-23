;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::GetVirtualWallList)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'GetVirtualWallList (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::GETVIRTUALWALLLIST")
  (make-package "ROBINT_MSGS::GETVIRTUALWALLLIST"))
(unless (find-package "ROBINT_MSGS::GETVIRTUALWALLLISTREQUEST")
  (make-package "ROBINT_MSGS::GETVIRTUALWALLLISTREQUEST"))
(unless (find-package "ROBINT_MSGS::GETVIRTUALWALLLISTRESPONSE")
  (make-package "ROBINT_MSGS::GETVIRTUALWALLLISTRESPONSE"))

(in-package "ROS")





(intern "*IMAGE*" (find-package "ROBINT_MSGS::GETVIRTUALWALLLISTREQUEST"))
(shadow '*IMAGE* (find-package "ROBINT_MSGS::GETVIRTUALWALLLISTREQUEST"))
(defconstant robint_msgs::GetVirtualWallListRequest::*IMAGE* 0)
(intern "*WORLD*" (find-package "ROBINT_MSGS::GETVIRTUALWALLLISTREQUEST"))
(shadow '*WORLD* (find-package "ROBINT_MSGS::GETVIRTUALWALLLISTREQUEST"))
(defconstant robint_msgs::GetVirtualWallListRequest::*WORLD* 1)

(defun robint_msgs::GetVirtualWallListRequest-to-symbol (const)
  (cond
        ((= const 0) 'robint_msgs::GetVirtualWallListRequest::*IMAGE*)
        ((= const 1) 'robint_msgs::GetVirtualWallListRequest::*WORLD*)
        (t nil)))

(defclass robint_msgs::GetVirtualWallListRequest
  :super ros::object
  :slots (_map_name _wall_mode _map_uuid ))

(defmethod robint_msgs::GetVirtualWallListRequest
  (:init
   (&key
    ((:map_name __map_name) "")
    ((:wall_mode __wall_mode) 0)
    ((:map_uuid __map_uuid) "")
    )
   (send-super :init)
   (setq _map_name (string __map_name))
   (setq _wall_mode (round __wall_mode))
   (setq _map_uuid (string __map_uuid))
   self)
  (:map_name
   (&optional __map_name)
   (if __map_name (setq _map_name __map_name)) _map_name)
  (:wall_mode
   (&optional __wall_mode)
   (if __wall_mode (setq _wall_mode __wall_mode)) _wall_mode)
  (:map_uuid
   (&optional __map_uuid)
   (if __map_uuid (setq _map_uuid __map_uuid)) _map_uuid)
  (:serialization-length
   ()
   (+
    ;; string _map_name
    4 (length _map_name)
    ;; uint8 _wall_mode
    1
    ;; string _map_uuid
    4 (length _map_uuid)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _map_name
       (write-long (length _map_name) s) (princ _map_name s)
     ;; uint8 _wall_mode
       (write-byte _wall_mode s)
     ;; string _map_uuid
       (write-long (length _map_uuid) s) (princ _map_uuid s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _map_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _map_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _wall_mode
     (setq _wall_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _map_uuid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _map_uuid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robint_msgs::GetVirtualWallListResponse
  :super ros::object
  :slots (_wall_list _success _error_code _message ))

(defmethod robint_msgs::GetVirtualWallListResponse
  (:init
   (&key
    ((:wall_list __wall_list) ())
    ((:success __success) nil)
    ((:error_code __error_code) 0)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _wall_list __wall_list)
   (setq _success __success)
   (setq _error_code (round __error_code))
   (setq _message (string __message))
   self)
  (:wall_list
   (&rest __wall_list)
   (if (keywordp (car __wall_list))
       (send* _wall_list __wall_list)
     (progn
       (if __wall_list (setq _wall_list (car __wall_list)))
       _wall_list)))
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
    ;; robint_msgs/VirtualWall[] _wall_list
    (apply #'+ (send-all _wall_list :serialization-length)) 4
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
     ;; robint_msgs/VirtualWall[] _wall_list
     (write-long (length _wall_list) s)
     (dolist (elem _wall_list)
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
   ;; robint_msgs/VirtualWall[] _wall_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _wall_list (let (r) (dotimes (i n) (push (instance robint_msgs::VirtualWall :init) r)) r))
     (dolist (elem- _wall_list)
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

(defclass robint_msgs::GetVirtualWallList
  :super ros::object
  :slots ())

(setf (get robint_msgs::GetVirtualWallList :md5sum-) "97620b03c4f2a28bcc6888c4a51a4cc2")
(setf (get robint_msgs::GetVirtualWallList :datatype-) "robint_msgs/GetVirtualWallList")
(setf (get robint_msgs::GetVirtualWallList :request) robint_msgs::GetVirtualWallListRequest)
(setf (get robint_msgs::GetVirtualWallList :response) robint_msgs::GetVirtualWallListResponse)

(defmethod robint_msgs::GetVirtualWallListRequest
  (:response () (instance robint_msgs::GetVirtualWallListResponse :init)))

(setf (get robint_msgs::GetVirtualWallListRequest :md5sum-) "97620b03c4f2a28bcc6888c4a51a4cc2")
(setf (get robint_msgs::GetVirtualWallListRequest :datatype-) "robint_msgs/GetVirtualWallListRequest")
(setf (get robint_msgs::GetVirtualWallListRequest :definition-)
      "string map_name
uint8 wall_mode
uint8 IMAGE=0
uint8 WORLD=1
string map_uuid
---
VirtualWall[] wall_list
bool success
uint8 error_code
string message

================================================================================
MSG: robint_msgs/VirtualWall
string id
uint8 type
uint8 Line = 0
uint8 Rectangle = 1
uint8 Polygon = 2
string vw_uuid
string vw_name
string map_uuid
string group_uuid
geometry_msgs/Point[] points 
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")

(setf (get robint_msgs::GetVirtualWallListResponse :md5sum-) "97620b03c4f2a28bcc6888c4a51a4cc2")
(setf (get robint_msgs::GetVirtualWallListResponse :datatype-) "robint_msgs/GetVirtualWallListResponse")
(setf (get robint_msgs::GetVirtualWallListResponse :definition-)
      "string map_name
uint8 wall_mode
uint8 IMAGE=0
uint8 WORLD=1
string map_uuid
---
VirtualWall[] wall_list
bool success
uint8 error_code
string message

================================================================================
MSG: robint_msgs/VirtualWall
string id
uint8 type
uint8 Line = 0
uint8 Rectangle = 1
uint8 Polygon = 2
string vw_uuid
string vw_name
string map_uuid
string group_uuid
geometry_msgs/Point[] points 
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")



(provide :robint_msgs/GetVirtualWallList "97620b03c4f2a28bcc6888c4a51a4cc2")


