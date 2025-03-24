;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::AutoRelocation)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'AutoRelocation (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::AUTORELOCATION")
  (make-package "ROBINT_MSGS::AUTORELOCATION"))
(unless (find-package "ROBINT_MSGS::AUTORELOCATIONREQUEST")
  (make-package "ROBINT_MSGS::AUTORELOCATIONREQUEST"))
(unless (find-package "ROBINT_MSGS::AUTORELOCATIONRESPONSE")
  (make-package "ROBINT_MSGS::AUTORELOCATIONRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(intern "*DEFAULT*" (find-package "ROBINT_MSGS::AUTORELOCATIONREQUEST"))
(shadow '*DEFAULT* (find-package "ROBINT_MSGS::AUTORELOCATIONREQUEST"))
(defconstant robint_msgs::AutoRelocationRequest::*DEFAULT* 0)
(intern "*FIXED_POSE*" (find-package "ROBINT_MSGS::AUTORELOCATIONREQUEST"))
(shadow '*FIXED_POSE* (find-package "ROBINT_MSGS::AUTORELOCATIONREQUEST"))
(defconstant robint_msgs::AutoRelocationRequest::*FIXED_POSE* 1)
(intern "*FIXED_SEARCH*" (find-package "ROBINT_MSGS::AUTORELOCATIONREQUEST"))
(shadow '*FIXED_SEARCH* (find-package "ROBINT_MSGS::AUTORELOCATIONREQUEST"))
(defconstant robint_msgs::AutoRelocationRequest::*FIXED_SEARCH* 2)
(intern "*FIXED_POSE_AND_SEARCH*" (find-package "ROBINT_MSGS::AUTORELOCATIONREQUEST"))
(shadow '*FIXED_POSE_AND_SEARCH* (find-package "ROBINT_MSGS::AUTORELOCATIONREQUEST"))
(defconstant robint_msgs::AutoRelocationRequest::*FIXED_POSE_AND_SEARCH* 3)

(defun robint_msgs::AutoRelocationRequest-to-symbol (const)
  (cond
        ((= const 0) 'robint_msgs::AutoRelocationRequest::*DEFAULT*)
        ((= const 1) 'robint_msgs::AutoRelocationRequest::*FIXED_POSE*)
        ((= const 2) 'robint_msgs::AutoRelocationRequest::*FIXED_SEARCH*)
        ((= const 3) 'robint_msgs::AutoRelocationRequest::*FIXED_POSE_AND_SEARCH*)
        (t nil)))

(defclass robint_msgs::AutoRelocationRequest
  :super ros::object
  :slots (_limited_location _linear_search_window _angular_search_window _pose _relocation_mode ))

(defmethod robint_msgs::AutoRelocationRequest
  (:init
   (&key
    ((:limited_location __limited_location) nil)
    ((:linear_search_window __linear_search_window) 0.0)
    ((:angular_search_window __angular_search_window) 0.0)
    ((:pose __pose) (instance geometry_msgs::PoseStamped :init))
    ((:relocation_mode __relocation_mode) 0)
    )
   (send-super :init)
   (setq _limited_location __limited_location)
   (setq _linear_search_window (float __linear_search_window))
   (setq _angular_search_window (float __angular_search_window))
   (setq _pose __pose)
   (setq _relocation_mode (round __relocation_mode))
   self)
  (:limited_location
   (&optional (__limited_location :null))
   (if (not (eq __limited_location :null)) (setq _limited_location __limited_location)) _limited_location)
  (:linear_search_window
   (&optional __linear_search_window)
   (if __linear_search_window (setq _linear_search_window __linear_search_window)) _linear_search_window)
  (:angular_search_window
   (&optional __angular_search_window)
   (if __angular_search_window (setq _angular_search_window __angular_search_window)) _angular_search_window)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:relocation_mode
   (&optional __relocation_mode)
   (if __relocation_mode (setq _relocation_mode __relocation_mode)) _relocation_mode)
  (:serialization-length
   ()
   (+
    ;; bool _limited_location
    1
    ;; float32 _linear_search_window
    4
    ;; float32 _angular_search_window
    4
    ;; geometry_msgs/PoseStamped _pose
    (send _pose :serialization-length)
    ;; uint8 _relocation_mode
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _limited_location
       (if _limited_location (write-byte -1 s) (write-byte 0 s))
     ;; float32 _linear_search_window
       (sys::poke _linear_search_window (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _angular_search_window
       (sys::poke _angular_search_window (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; geometry_msgs/PoseStamped _pose
       (send _pose :serialize s)
     ;; uint8 _relocation_mode
       (write-byte _relocation_mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _limited_location
     (setq _limited_location (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _linear_search_window
     (setq _linear_search_window (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _angular_search_window
     (setq _angular_search_window (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; geometry_msgs/PoseStamped _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; uint8 _relocation_mode
     (setq _relocation_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass robint_msgs::AutoRelocationResponse
  :super ros::object
  :slots (_success _error_code _message ))

(defmethod robint_msgs::AutoRelocationResponse
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

(defclass robint_msgs::AutoRelocation
  :super ros::object
  :slots ())

(setf (get robint_msgs::AutoRelocation :md5sum-) "ed9dac49ff11cc301c25107899231f1b")
(setf (get robint_msgs::AutoRelocation :datatype-) "robint_msgs/AutoRelocation")
(setf (get robint_msgs::AutoRelocation :request) robint_msgs::AutoRelocationRequest)
(setf (get robint_msgs::AutoRelocation :response) robint_msgs::AutoRelocationResponse)

(defmethod robint_msgs::AutoRelocationRequest
  (:response () (instance robint_msgs::AutoRelocationResponse :init)))

(setf (get robint_msgs::AutoRelocationRequest :md5sum-) "ed9dac49ff11cc301c25107899231f1b")
(setf (get robint_msgs::AutoRelocationRequest :datatype-) "robint_msgs/AutoRelocationRequest")
(setf (get robint_msgs::AutoRelocationRequest :definition-)
      "bool limited_location
float32 linear_search_window
float32 angular_search_window
geometry_msgs/PoseStamped pose
uint8 relocation_mode
uint8 DEFAULT=0
uint8 FIXED_POSE=1
uint8 FIXED_SEARCH=2
uint8 FIXED_POSE_AND_SEARCH=3

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

(setf (get robint_msgs::AutoRelocationResponse :md5sum-) "ed9dac49ff11cc301c25107899231f1b")
(setf (get robint_msgs::AutoRelocationResponse :datatype-) "robint_msgs/AutoRelocationResponse")
(setf (get robint_msgs::AutoRelocationResponse :definition-)
      "bool limited_location
float32 linear_search_window
float32 angular_search_window
geometry_msgs/PoseStamped pose
uint8 relocation_mode
uint8 DEFAULT=0
uint8 FIXED_POSE=1
uint8 FIXED_SEARCH=2
uint8 FIXED_POSE_AND_SEARCH=3

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



(provide :robint_msgs/AutoRelocation "ed9dac49ff11cc301c25107899231f1b")


