;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::GetChargeBaseInfo)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'GetChargeBaseInfo (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::GETCHARGEBASEINFO")
  (make-package "ROBINT_MSGS::GETCHARGEBASEINFO"))
(unless (find-package "ROBINT_MSGS::GETCHARGEBASEINFOREQUEST")
  (make-package "ROBINT_MSGS::GETCHARGEBASEINFOREQUEST"))
(unless (find-package "ROBINT_MSGS::GETCHARGEBASEINFORESPONSE")
  (make-package "ROBINT_MSGS::GETCHARGEBASEINFORESPONSE"))

(in-package "ROS")





(defclass robint_msgs::GetChargeBaseInfoRequest
  :super ros::object
  :slots ())

(defmethod robint_msgs::GetChargeBaseInfoRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass robint_msgs::GetChargeBaseInfoResponse
  :super ros::object
  :slots (_list _success _error_code ))

(defmethod robint_msgs::GetChargeBaseInfoResponse
  (:init
   (&key
    ((:list __list) ())
    ((:success __success) nil)
    ((:error_code __error_code) 0)
    )
   (send-super :init)
   (setq _list __list)
   (setq _success __success)
   (setq _error_code (round __error_code))
   self)
  (:list
   (&rest __list)
   (if (keywordp (car __list))
       (send* _list __list)
     (progn
       (if __list (setq _list (car __list)))
       _list)))
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:error_code
   (&optional __error_code)
   (if __error_code (setq _error_code __error_code)) _error_code)
  (:serialization-length
   ()
   (+
    ;; robint_msgs/ChargeBaseInfo[] _list
    (apply #'+ (send-all _list :serialization-length)) 4
    ;; bool _success
    1
    ;; uint8 _error_code
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; robint_msgs/ChargeBaseInfo[] _list
     (write-long (length _list) s)
     (dolist (elem _list)
       (send elem :serialize s)
       )
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _error_code
       (write-byte _error_code s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; robint_msgs/ChargeBaseInfo[] _list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _list (let (r) (dotimes (i n) (push (instance robint_msgs::ChargeBaseInfo :init) r)) r))
     (dolist (elem- _list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _error_code
     (setq _error_code (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass robint_msgs::GetChargeBaseInfo
  :super ros::object
  :slots ())

(setf (get robint_msgs::GetChargeBaseInfo :md5sum-) "e867a9e96808d4305f59ec0c91de6769")
(setf (get robint_msgs::GetChargeBaseInfo :datatype-) "robint_msgs/GetChargeBaseInfo")
(setf (get robint_msgs::GetChargeBaseInfo :request) robint_msgs::GetChargeBaseInfoRequest)
(setf (get robint_msgs::GetChargeBaseInfo :response) robint_msgs::GetChargeBaseInfoResponse)

(defmethod robint_msgs::GetChargeBaseInfoRequest
  (:response () (instance robint_msgs::GetChargeBaseInfoResponse :init)))

(setf (get robint_msgs::GetChargeBaseInfoRequest :md5sum-) "e867a9e96808d4305f59ec0c91de6769")
(setf (get robint_msgs::GetChargeBaseInfoRequest :datatype-) "robint_msgs/GetChargeBaseInfoRequest")
(setf (get robint_msgs::GetChargeBaseInfoRequest :definition-)
      "---
ChargeBaseInfo[] list
bool success
uint8 error_code

================================================================================
MSG: robint_msgs/ChargeBaseInfo
string location_uuid
string location_name
string group_uuid
string map_uuid
string floor_id
string building_id
geometry_msgs/PoseStamped pose
geometry_msgs/PoseStamped anchor_pose
================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")

(setf (get robint_msgs::GetChargeBaseInfoResponse :md5sum-) "e867a9e96808d4305f59ec0c91de6769")
(setf (get robint_msgs::GetChargeBaseInfoResponse :datatype-) "robint_msgs/GetChargeBaseInfoResponse")
(setf (get robint_msgs::GetChargeBaseInfoResponse :definition-)
      "---
ChargeBaseInfo[] list
bool success
uint8 error_code

================================================================================
MSG: robint_msgs/ChargeBaseInfo
string location_uuid
string location_name
string group_uuid
string map_uuid
string floor_id
string building_id
geometry_msgs/PoseStamped pose
geometry_msgs/PoseStamped anchor_pose
================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")



(provide :robint_msgs/GetChargeBaseInfo "e867a9e96808d4305f59ec0c91de6769")


