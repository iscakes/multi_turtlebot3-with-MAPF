;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::SetMap)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'SetMap (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::SETMAP")
  (make-package "ROBINT_MSGS::SETMAP"))
(unless (find-package "ROBINT_MSGS::SETMAPREQUEST")
  (make-package "ROBINT_MSGS::SETMAPREQUEST"))
(unless (find-package "ROBINT_MSGS::SETMAPRESPONSE")
  (make-package "ROBINT_MSGS::SETMAPRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass robint_msgs::SetMapRequest
  :super ros::object
  :slots (_map_uuid _map_name _location_uuid _pose _covariance ))

(defmethod robint_msgs::SetMapRequest
  (:init
   (&key
    ((:map_uuid __map_uuid) "")
    ((:map_name __map_name) "")
    ((:location_uuid __location_uuid) "")
    ((:pose __pose) (instance geometry_msgs::PoseStamped :init))
    ((:covariance __covariance) (make-array 36 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _map_uuid (string __map_uuid))
   (setq _map_name (string __map_name))
   (setq _location_uuid (string __location_uuid))
   (setq _pose __pose)
   (setq _covariance __covariance)
   self)
  (:map_uuid
   (&optional __map_uuid)
   (if __map_uuid (setq _map_uuid __map_uuid)) _map_uuid)
  (:map_name
   (&optional __map_name)
   (if __map_name (setq _map_name __map_name)) _map_name)
  (:location_uuid
   (&optional __location_uuid)
   (if __location_uuid (setq _location_uuid __location_uuid)) _location_uuid)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:covariance
   (&optional __covariance)
   (if __covariance (setq _covariance __covariance)) _covariance)
  (:serialization-length
   ()
   (+
    ;; string _map_uuid
    4 (length _map_uuid)
    ;; string _map_name
    4 (length _map_name)
    ;; string _location_uuid
    4 (length _location_uuid)
    ;; geometry_msgs/PoseStamped _pose
    (send _pose :serialization-length)
    ;; float64[36] _covariance
    (* 8    36)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _map_uuid
       (write-long (length _map_uuid) s) (princ _map_uuid s)
     ;; string _map_name
       (write-long (length _map_name) s) (princ _map_name s)
     ;; string _location_uuid
       (write-long (length _location_uuid) s) (princ _location_uuid s)
     ;; geometry_msgs/PoseStamped _pose
       (send _pose :serialize s)
     ;; float64[36] _covariance
     (dotimes (i 36)
       (sys::poke (elt _covariance i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _map_uuid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _map_uuid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _map_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _map_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _location_uuid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _location_uuid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/PoseStamped _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; float64[36] _covariance
   (dotimes (i (length _covariance))
     (setf (elt _covariance i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;;
   self)
  )

(defclass robint_msgs::SetMapResponse
  :super ros::object
  :slots (_success _error_code _message ))

(defmethod robint_msgs::SetMapResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:error_code __error_code) 0)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _error_code (round __error_code))
   (setq _message (string __message))
   self)
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
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _error_code
     (setq _error_code (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robint_msgs::SetMap
  :super ros::object
  :slots ())

(setf (get robint_msgs::SetMap :md5sum-) "a2032b68929e57dee13e876aa9c87b8e")
(setf (get robint_msgs::SetMap :datatype-) "robint_msgs/SetMap")
(setf (get robint_msgs::SetMap :request) robint_msgs::SetMapRequest)
(setf (get robint_msgs::SetMap :response) robint_msgs::SetMapResponse)

(defmethod robint_msgs::SetMapRequest
  (:response () (instance robint_msgs::SetMapResponse :init)))

(setf (get robint_msgs::SetMapRequest :md5sum-) "a2032b68929e57dee13e876aa9c87b8e")
(setf (get robint_msgs::SetMapRequest :datatype-) "robint_msgs/SetMapRequest")
(setf (get robint_msgs::SetMapRequest :definition-)
      "string map_uuid
string map_name
string location_uuid
geometry_msgs/PoseStamped pose
float64[36] covariance

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
bool success
uint8 error_code
string message
")

(setf (get robint_msgs::SetMapResponse :md5sum-) "a2032b68929e57dee13e876aa9c87b8e")
(setf (get robint_msgs::SetMapResponse :datatype-) "robint_msgs/SetMapResponse")
(setf (get robint_msgs::SetMapResponse :definition-)
      "string map_uuid
string map_name
string location_uuid
geometry_msgs/PoseStamped pose
float64[36] covariance

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
bool success
uint8 error_code
string message
")



(provide :robint_msgs/SetMap "a2032b68929e57dee13e876aa9c87b8e")


