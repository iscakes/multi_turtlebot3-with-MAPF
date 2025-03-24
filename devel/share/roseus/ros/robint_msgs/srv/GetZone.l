;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::GetZone)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'GetZone (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::GETZONE")
  (make-package "ROBINT_MSGS::GETZONE"))
(unless (find-package "ROBINT_MSGS::GETZONEREQUEST")
  (make-package "ROBINT_MSGS::GETZONEREQUEST"))
(unless (find-package "ROBINT_MSGS::GETZONERESPONSE")
  (make-package "ROBINT_MSGS::GETZONERESPONSE"))

(in-package "ROS")





(intern "*IMAGE*" (find-package "ROBINT_MSGS::GETZONEREQUEST"))
(shadow '*IMAGE* (find-package "ROBINT_MSGS::GETZONEREQUEST"))
(defconstant robint_msgs::GetZoneRequest::*IMAGE* 0)
(intern "*WORLD*" (find-package "ROBINT_MSGS::GETZONEREQUEST"))
(shadow '*WORLD* (find-package "ROBINT_MSGS::GETZONEREQUEST"))
(defconstant robint_msgs::GetZoneRequest::*WORLD* 1)

(defun robint_msgs::GetZoneRequest-to-symbol (const)
  (cond
        ((= const 0) 'robint_msgs::GetZoneRequest::*IMAGE*)
        ((= const 1) 'robint_msgs::GetZoneRequest::*WORLD*)
        (t nil)))

(defclass robint_msgs::GetZoneRequest
  :super ros::object
  :slots (_zone_uuid _zone_mode ))

(defmethod robint_msgs::GetZoneRequest
  (:init
   (&key
    ((:zone_uuid __zone_uuid) "")
    ((:zone_mode __zone_mode) 0)
    )
   (send-super :init)
   (setq _zone_uuid (string __zone_uuid))
   (setq _zone_mode (round __zone_mode))
   self)
  (:zone_uuid
   (&optional __zone_uuid)
   (if __zone_uuid (setq _zone_uuid __zone_uuid)) _zone_uuid)
  (:zone_mode
   (&optional __zone_mode)
   (if __zone_mode (setq _zone_mode __zone_mode)) _zone_mode)
  (:serialization-length
   ()
   (+
    ;; string _zone_uuid
    4 (length _zone_uuid)
    ;; uint8 _zone_mode
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _zone_uuid
       (write-long (length _zone_uuid) s) (princ _zone_uuid s)
     ;; uint8 _zone_mode
       (write-byte _zone_mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _zone_uuid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _zone_uuid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _zone_mode
     (setq _zone_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass robint_msgs::GetZoneResponse
  :super ros::object
  :slots (_zone _success _error_code _message ))

(defmethod robint_msgs::GetZoneResponse
  (:init
   (&key
    ((:zone __zone) (instance robint_msgs::Zone :init))
    ((:success __success) nil)
    ((:error_code __error_code) 0)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _zone __zone)
   (setq _success __success)
   (setq _error_code (round __error_code))
   (setq _message (string __message))
   self)
  (:zone
   (&rest __zone)
   (if (keywordp (car __zone))
       (send* _zone __zone)
     (progn
       (if __zone (setq _zone (car __zone)))
       _zone)))
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
    ;; robint_msgs/Zone _zone
    (send _zone :serialization-length)
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
     ;; robint_msgs/Zone _zone
       (send _zone :serialize s)
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
   ;; robint_msgs/Zone _zone
     (send _zone :deserialize buf ptr-) (incf ptr- (send _zone :serialization-length))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _error_code
     (setq _error_code (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robint_msgs::GetZone
  :super ros::object
  :slots ())

(setf (get robint_msgs::GetZone :md5sum-) "3e8c73a28008489ea806c0e13cd661f0")
(setf (get robint_msgs::GetZone :datatype-) "robint_msgs/GetZone")
(setf (get robint_msgs::GetZone :request) robint_msgs::GetZoneRequest)
(setf (get robint_msgs::GetZone :response) robint_msgs::GetZoneResponse)

(defmethod robint_msgs::GetZoneRequest
  (:response () (instance robint_msgs::GetZoneResponse :init)))

(setf (get robint_msgs::GetZoneRequest :md5sum-) "3e8c73a28008489ea806c0e13cd661f0")
(setf (get robint_msgs::GetZoneRequest :datatype-) "robint_msgs/GetZoneRequest")
(setf (get robint_msgs::GetZoneRequest :definition-)
      "string zone_uuid
uint8 zone_mode
uint8 IMAGE=0
uint8 WORLD=1
---
Zone zone
bool success
uint8 error_code
string message

================================================================================
MSG: robint_msgs/Zone
string uuid
string name
string map_uuid
string group_uuid
string type
geometry_msgs/Point[] points
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")

(setf (get robint_msgs::GetZoneResponse :md5sum-) "3e8c73a28008489ea806c0e13cd661f0")
(setf (get robint_msgs::GetZoneResponse :datatype-) "robint_msgs/GetZoneResponse")
(setf (get robint_msgs::GetZoneResponse :definition-)
      "string zone_uuid
uint8 zone_mode
uint8 IMAGE=0
uint8 WORLD=1
---
Zone zone
bool success
uint8 error_code
string message

================================================================================
MSG: robint_msgs/Zone
string uuid
string name
string map_uuid
string group_uuid
string type
geometry_msgs/Point[] points
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")



(provide :robint_msgs/GetZone "3e8c73a28008489ea806c0e13cd661f0")


