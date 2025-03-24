;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::SetVirtualWallList)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'SetVirtualWallList (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::SETVIRTUALWALLLIST")
  (make-package "ROBINT_MSGS::SETVIRTUALWALLLIST"))
(unless (find-package "ROBINT_MSGS::SETVIRTUALWALLLISTREQUEST")
  (make-package "ROBINT_MSGS::SETVIRTUALWALLLISTREQUEST"))
(unless (find-package "ROBINT_MSGS::SETVIRTUALWALLLISTRESPONSE")
  (make-package "ROBINT_MSGS::SETVIRTUALWALLLISTRESPONSE"))

(in-package "ROS")





(intern "*WORLD*" (find-package "ROBINT_MSGS::SETVIRTUALWALLLISTREQUEST"))
(shadow '*WORLD* (find-package "ROBINT_MSGS::SETVIRTUALWALLLISTREQUEST"))
(defconstant robint_msgs::SetVirtualWallListRequest::*WORLD* 0)
(intern "*IMAGE*" (find-package "ROBINT_MSGS::SETVIRTUALWALLLISTREQUEST"))
(shadow '*IMAGE* (find-package "ROBINT_MSGS::SETVIRTUALWALLLISTREQUEST"))
(defconstant robint_msgs::SetVirtualWallListRequest::*IMAGE* 1)

(defun robint_msgs::SetVirtualWallListRequest-to-symbol (const)
  (cond
        ((= const 0) 'robint_msgs::SetVirtualWallListRequest::*WORLD*)
        ((= const 1) 'robint_msgs::SetVirtualWallListRequest::*IMAGE*)
        (t nil)))

(defclass robint_msgs::SetVirtualWallListRequest
  :super ros::object
  :slots (_map_name _wall_mode _wall_list ))

(defmethod robint_msgs::SetVirtualWallListRequest
  (:init
   (&key
    ((:map_name __map_name) "")
    ((:wall_mode __wall_mode) 0)
    ((:wall_list __wall_list) ())
    )
   (send-super :init)
   (setq _map_name (string __map_name))
   (setq _wall_mode (round __wall_mode))
   (setq _wall_list __wall_list)
   self)
  (:map_name
   (&optional __map_name)
   (if __map_name (setq _map_name __map_name)) _map_name)
  (:wall_mode
   (&optional __wall_mode)
   (if __wall_mode (setq _wall_mode __wall_mode)) _wall_mode)
  (:wall_list
   (&rest __wall_list)
   (if (keywordp (car __wall_list))
       (send* _wall_list __wall_list)
     (progn
       (if __wall_list (setq _wall_list (car __wall_list)))
       _wall_list)))
  (:serialization-length
   ()
   (+
    ;; string _map_name
    4 (length _map_name)
    ;; uint8 _wall_mode
    1
    ;; robint_msgs/VirtualWall[] _wall_list
    (apply #'+ (send-all _wall_list :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _map_name
       (write-long (length _map_name) s) (princ _map_name s)
     ;; uint8 _wall_mode
       (write-byte _wall_mode s)
     ;; robint_msgs/VirtualWall[] _wall_list
     (write-long (length _wall_list) s)
     (dolist (elem _wall_list)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _map_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _map_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _wall_mode
     (setq _wall_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; robint_msgs/VirtualWall[] _wall_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _wall_list (let (r) (dotimes (i n) (push (instance robint_msgs::VirtualWall :init) r)) r))
     (dolist (elem- _wall_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass robint_msgs::SetVirtualWallListResponse
  :super ros::object
  :slots (_success _message ))

(defmethod robint_msgs::SetVirtualWallListResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
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
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robint_msgs::SetVirtualWallList
  :super ros::object
  :slots ())

(setf (get robint_msgs::SetVirtualWallList :md5sum-) "f7c4401d336fe20164f40e62c45b1b01")
(setf (get robint_msgs::SetVirtualWallList :datatype-) "robint_msgs/SetVirtualWallList")
(setf (get robint_msgs::SetVirtualWallList :request) robint_msgs::SetVirtualWallListRequest)
(setf (get robint_msgs::SetVirtualWallList :response) robint_msgs::SetVirtualWallListResponse)

(defmethod robint_msgs::SetVirtualWallListRequest
  (:response () (instance robint_msgs::SetVirtualWallListResponse :init)))

(setf (get robint_msgs::SetVirtualWallListRequest :md5sum-) "f7c4401d336fe20164f40e62c45b1b01")
(setf (get robint_msgs::SetVirtualWallListRequest :datatype-) "robint_msgs/SetVirtualWallListRequest")
(setf (get robint_msgs::SetVirtualWallListRequest :definition-)
      "string map_name
uint8 wall_mode
uint8 WORLD=0
uint8 IMAGE=1
VirtualWall[] wall_list

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
---
bool success
string message
")

(setf (get robint_msgs::SetVirtualWallListResponse :md5sum-) "f7c4401d336fe20164f40e62c45b1b01")
(setf (get robint_msgs::SetVirtualWallListResponse :datatype-) "robint_msgs/SetVirtualWallListResponse")
(setf (get robint_msgs::SetVirtualWallListResponse :definition-)
      "string map_name
uint8 wall_mode
uint8 WORLD=0
uint8 IMAGE=1
VirtualWall[] wall_list

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
---
bool success
string message
")



(provide :robint_msgs/SetVirtualWallList "f7c4401d336fe20164f40e62c45b1b01")


