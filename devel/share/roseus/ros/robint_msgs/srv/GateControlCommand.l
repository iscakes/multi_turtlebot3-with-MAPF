;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::GateControlCommand)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'GateControlCommand (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::GATECONTROLCOMMAND")
  (make-package "ROBINT_MSGS::GATECONTROLCOMMAND"))
(unless (find-package "ROBINT_MSGS::GATECONTROLCOMMANDREQUEST")
  (make-package "ROBINT_MSGS::GATECONTROLCOMMANDREQUEST"))
(unless (find-package "ROBINT_MSGS::GATECONTROLCOMMANDRESPONSE")
  (make-package "ROBINT_MSGS::GATECONTROLCOMMANDRESPONSE"))

(in-package "ROS")





(intern "*OPEN*" (find-package "ROBINT_MSGS::GATECONTROLCOMMANDREQUEST"))
(shadow '*OPEN* (find-package "ROBINT_MSGS::GATECONTROLCOMMANDREQUEST"))
(defconstant robint_msgs::GateControlCommandRequest::*OPEN* 0)
(intern "*CLOSE*" (find-package "ROBINT_MSGS::GATECONTROLCOMMANDREQUEST"))
(shadow '*CLOSE* (find-package "ROBINT_MSGS::GATECONTROLCOMMANDREQUEST"))
(defconstant robint_msgs::GateControlCommandRequest::*CLOSE* 1)

(defun robint_msgs::GateControlCommandRequest-to-symbol (const)
  (cond
        ((= const 0) 'robint_msgs::GateControlCommandRequest::*OPEN*)
        ((= const 1) 'robint_msgs::GateControlCommandRequest::*CLOSE*)
        (t nil)))

(defclass robint_msgs::GateControlCommandRequest
  :super ros::object
  :slots (_command _location ))

(defmethod robint_msgs::GateControlCommandRequest
  (:init
   (&key
    ((:command __command) 0)
    ((:location __location) (instance robint_msgs::Location :init))
    )
   (send-super :init)
   (setq _command (round __command))
   (setq _location __location)
   self)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:location
   (&rest __location)
   (if (keywordp (car __location))
       (send* _location __location)
     (progn
       (if __location (setq _location (car __location)))
       _location)))
  (:serialization-length
   ()
   (+
    ;; uint8 _command
    1
    ;; robint_msgs/Location _location
    (send _location :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _command
       (write-byte _command s)
     ;; robint_msgs/Location _location
       (send _location :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _command
     (setq _command (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; robint_msgs/Location _location
     (send _location :deserialize buf ptr-) (incf ptr- (send _location :serialization-length))
   ;;
   self)
  )

(defclass robint_msgs::GateControlCommandResponse
  :super ros::object
  :slots (_task_id _success _error_code _message ))

(defmethod robint_msgs::GateControlCommandResponse
  (:init
   (&key
    ((:task_id __task_id) "")
    ((:success __success) nil)
    ((:error_code __error_code) 0)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _task_id (string __task_id))
   (setq _success __success)
   (setq _error_code (round __error_code))
   (setq _message (string __message))
   self)
  (:task_id
   (&optional __task_id)
   (if __task_id (setq _task_id __task_id)) _task_id)
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
    ;; string _task_id
    4 (length _task_id)
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
     ;; string _task_id
       (write-long (length _task_id) s) (princ _task_id s)
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
   ;; string _task_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _task_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _error_code
     (setq _error_code (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robint_msgs::GateControlCommand
  :super ros::object
  :slots ())

(setf (get robint_msgs::GateControlCommand :md5sum-) "5cf0b0843f728a3a674f23f4e1bcb627")
(setf (get robint_msgs::GateControlCommand :datatype-) "robint_msgs/GateControlCommand")
(setf (get robint_msgs::GateControlCommand :request) robint_msgs::GateControlCommandRequest)
(setf (get robint_msgs::GateControlCommand :response) robint_msgs::GateControlCommandResponse)

(defmethod robint_msgs::GateControlCommandRequest
  (:response () (instance robint_msgs::GateControlCommandResponse :init)))

(setf (get robint_msgs::GateControlCommandRequest :md5sum-) "5cf0b0843f728a3a674f23f4e1bcb627")
(setf (get robint_msgs::GateControlCommandRequest :datatype-) "robint_msgs/GateControlCommandRequest")
(setf (get robint_msgs::GateControlCommandRequest :definition-)
      "uint8 command       # 'OPEN', 'CLOSE',
uint8 OPEN=0
uint8 CLOSE=1
Location location

================================================================================
MSG: robint_msgs/Location
time timestamp
string map_name
string map_uuid
string location_uuid
string type_name
string group_uuid
string location_name
geometry_msgs/Pose2D image_pose
geometry_msgs/PoseStamped pose

================================================================================
MSG: geometry_msgs/Pose2D
# Deprecated
# Please use the full 3D pose.

# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.

# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.


# This expresses a position and orientation on a 2D manifold.

float64 x
float64 y
float64 theta

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
---
string task_id
bool success
uint8 error_code
string message
")

(setf (get robint_msgs::GateControlCommandResponse :md5sum-) "5cf0b0843f728a3a674f23f4e1bcb627")
(setf (get robint_msgs::GateControlCommandResponse :datatype-) "robint_msgs/GateControlCommandResponse")
(setf (get robint_msgs::GateControlCommandResponse :definition-)
      "uint8 command       # 'OPEN', 'CLOSE',
uint8 OPEN=0
uint8 CLOSE=1
Location location

================================================================================
MSG: robint_msgs/Location
time timestamp
string map_name
string map_uuid
string location_uuid
string type_name
string group_uuid
string location_name
geometry_msgs/Pose2D image_pose
geometry_msgs/PoseStamped pose

================================================================================
MSG: geometry_msgs/Pose2D
# Deprecated
# Please use the full 3D pose.

# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.

# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.


# This expresses a position and orientation on a 2D manifold.

float64 x
float64 y
float64 theta

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
---
string task_id
bool success
uint8 error_code
string message
")



(provide :robint_msgs/GateControlCommand "5cf0b0843f728a3a674f23f4e1bcb627")


