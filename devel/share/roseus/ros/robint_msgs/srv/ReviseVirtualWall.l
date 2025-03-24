;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::ReviseVirtualWall)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'ReviseVirtualWall (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::REVISEVIRTUALWALL")
  (make-package "ROBINT_MSGS::REVISEVIRTUALWALL"))
(unless (find-package "ROBINT_MSGS::REVISEVIRTUALWALLREQUEST")
  (make-package "ROBINT_MSGS::REVISEVIRTUALWALLREQUEST"))
(unless (find-package "ROBINT_MSGS::REVISEVIRTUALWALLRESPONSE")
  (make-package "ROBINT_MSGS::REVISEVIRTUALWALLRESPONSE"))

(in-package "ROS")





(defclass robint_msgs::ReviseVirtualWallRequest
  :super ros::object
  :slots (_map_name _wall ))

(defmethod robint_msgs::ReviseVirtualWallRequest
  (:init
   (&key
    ((:map_name __map_name) "")
    ((:wall __wall) (instance robint_msgs::VirtualWall :init))
    )
   (send-super :init)
   (setq _map_name (string __map_name))
   (setq _wall __wall)
   self)
  (:map_name
   (&optional __map_name)
   (if __map_name (setq _map_name __map_name)) _map_name)
  (:wall
   (&rest __wall)
   (if (keywordp (car __wall))
       (send* _wall __wall)
     (progn
       (if __wall (setq _wall (car __wall)))
       _wall)))
  (:serialization-length
   ()
   (+
    ;; string _map_name
    4 (length _map_name)
    ;; robint_msgs/VirtualWall _wall
    (send _wall :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _map_name
       (write-long (length _map_name) s) (princ _map_name s)
     ;; robint_msgs/VirtualWall _wall
       (send _wall :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _map_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _map_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; robint_msgs/VirtualWall _wall
     (send _wall :deserialize buf ptr-) (incf ptr- (send _wall :serialization-length))
   ;;
   self)
  )

(defclass robint_msgs::ReviseVirtualWallResponse
  :super ros::object
  :slots (_success _message ))

(defmethod robint_msgs::ReviseVirtualWallResponse
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

(defclass robint_msgs::ReviseVirtualWall
  :super ros::object
  :slots ())

(setf (get robint_msgs::ReviseVirtualWall :md5sum-) "627f869a116b5a2b19b826607f45fdb8")
(setf (get robint_msgs::ReviseVirtualWall :datatype-) "robint_msgs/ReviseVirtualWall")
(setf (get robint_msgs::ReviseVirtualWall :request) robint_msgs::ReviseVirtualWallRequest)
(setf (get robint_msgs::ReviseVirtualWall :response) robint_msgs::ReviseVirtualWallResponse)

(defmethod robint_msgs::ReviseVirtualWallRequest
  (:response () (instance robint_msgs::ReviseVirtualWallResponse :init)))

(setf (get robint_msgs::ReviseVirtualWallRequest :md5sum-) "627f869a116b5a2b19b826607f45fdb8")
(setf (get robint_msgs::ReviseVirtualWallRequest :datatype-) "robint_msgs/ReviseVirtualWallRequest")
(setf (get robint_msgs::ReviseVirtualWallRequest :definition-)
      "string map_name
VirtualWall wall

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

(setf (get robint_msgs::ReviseVirtualWallResponse :md5sum-) "627f869a116b5a2b19b826607f45fdb8")
(setf (get robint_msgs::ReviseVirtualWallResponse :datatype-) "robint_msgs/ReviseVirtualWallResponse")
(setf (get robint_msgs::ReviseVirtualWallResponse :definition-)
      "string map_name
VirtualWall wall

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



(provide :robint_msgs/ReviseVirtualWall "627f869a116b5a2b19b826607f45fdb8")


