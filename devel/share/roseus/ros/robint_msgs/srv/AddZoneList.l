;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::AddZoneList)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'AddZoneList (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::ADDZONELIST")
  (make-package "ROBINT_MSGS::ADDZONELIST"))
(unless (find-package "ROBINT_MSGS::ADDZONELISTREQUEST")
  (make-package "ROBINT_MSGS::ADDZONELISTREQUEST"))
(unless (find-package "ROBINT_MSGS::ADDZONELISTRESPONSE")
  (make-package "ROBINT_MSGS::ADDZONELISTRESPONSE"))

(in-package "ROS")





(intern "*WORLD*" (find-package "ROBINT_MSGS::ADDZONELISTREQUEST"))
(shadow '*WORLD* (find-package "ROBINT_MSGS::ADDZONELISTREQUEST"))
(defconstant robint_msgs::AddZoneListRequest::*WORLD* 0)
(intern "*IMAGE*" (find-package "ROBINT_MSGS::ADDZONELISTREQUEST"))
(shadow '*IMAGE* (find-package "ROBINT_MSGS::ADDZONELISTREQUEST"))
(defconstant robint_msgs::AddZoneListRequest::*IMAGE* 1)

(defun robint_msgs::AddZoneListRequest-to-symbol (const)
  (cond
        ((= const 0) 'robint_msgs::AddZoneListRequest::*WORLD*)
        ((= const 1) 'robint_msgs::AddZoneListRequest::*IMAGE*)
        (t nil)))

(defclass robint_msgs::AddZoneListRequest
  :super ros::object
  :slots (_map_name _zone_mode _map_uuid _zone_list ))

(defmethod robint_msgs::AddZoneListRequest
  (:init
   (&key
    ((:map_name __map_name) "")
    ((:zone_mode __zone_mode) 0)
    ((:map_uuid __map_uuid) "")
    ((:zone_list __zone_list) ())
    )
   (send-super :init)
   (setq _map_name (string __map_name))
   (setq _zone_mode (round __zone_mode))
   (setq _map_uuid (string __map_uuid))
   (setq _zone_list __zone_list)
   self)
  (:map_name
   (&optional __map_name)
   (if __map_name (setq _map_name __map_name)) _map_name)
  (:zone_mode
   (&optional __zone_mode)
   (if __zone_mode (setq _zone_mode __zone_mode)) _zone_mode)
  (:map_uuid
   (&optional __map_uuid)
   (if __map_uuid (setq _map_uuid __map_uuid)) _map_uuid)
  (:zone_list
   (&rest __zone_list)
   (if (keywordp (car __zone_list))
       (send* _zone_list __zone_list)
     (progn
       (if __zone_list (setq _zone_list (car __zone_list)))
       _zone_list)))
  (:serialization-length
   ()
   (+
    ;; string _map_name
    4 (length _map_name)
    ;; uint8 _zone_mode
    1
    ;; string _map_uuid
    4 (length _map_uuid)
    ;; robint_msgs/Zone[] _zone_list
    (apply #'+ (send-all _zone_list :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _map_name
       (write-long (length _map_name) s) (princ _map_name s)
     ;; uint8 _zone_mode
       (write-byte _zone_mode s)
     ;; string _map_uuid
       (write-long (length _map_uuid) s) (princ _map_uuid s)
     ;; robint_msgs/Zone[] _zone_list
     (write-long (length _zone_list) s)
     (dolist (elem _zone_list)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _map_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _map_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _zone_mode
     (setq _zone_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _map_uuid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _map_uuid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; robint_msgs/Zone[] _zone_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _zone_list (let (r) (dotimes (i n) (push (instance robint_msgs::Zone :init) r)) r))
     (dolist (elem- _zone_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass robint_msgs::AddZoneListResponse
  :super ros::object
  :slots (_zone_list _success _error_code _message ))

(defmethod robint_msgs::AddZoneListResponse
  (:init
   (&key
    ((:zone_list __zone_list) ())
    ((:success __success) nil)
    ((:error_code __error_code) 0)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _zone_list __zone_list)
   (setq _success __success)
   (setq _error_code (round __error_code))
   (setq _message (string __message))
   self)
  (:zone_list
   (&rest __zone_list)
   (if (keywordp (car __zone_list))
       (send* _zone_list __zone_list)
     (progn
       (if __zone_list (setq _zone_list (car __zone_list)))
       _zone_list)))
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
    ;; robint_msgs/Zone[] _zone_list
    (apply #'+ (send-all _zone_list :serialization-length)) 4
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
     ;; robint_msgs/Zone[] _zone_list
     (write-long (length _zone_list) s)
     (dolist (elem _zone_list)
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
   ;; robint_msgs/Zone[] _zone_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _zone_list (let (r) (dotimes (i n) (push (instance robint_msgs::Zone :init) r)) r))
     (dolist (elem- _zone_list)
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

(defclass robint_msgs::AddZoneList
  :super ros::object
  :slots ())

(setf (get robint_msgs::AddZoneList :md5sum-) "83b364b705a108c43245079072195081")
(setf (get robint_msgs::AddZoneList :datatype-) "robint_msgs/AddZoneList")
(setf (get robint_msgs::AddZoneList :request) robint_msgs::AddZoneListRequest)
(setf (get robint_msgs::AddZoneList :response) robint_msgs::AddZoneListResponse)

(defmethod robint_msgs::AddZoneListRequest
  (:response () (instance robint_msgs::AddZoneListResponse :init)))

(setf (get robint_msgs::AddZoneListRequest :md5sum-) "83b364b705a108c43245079072195081")
(setf (get robint_msgs::AddZoneListRequest :datatype-) "robint_msgs/AddZoneListRequest")
(setf (get robint_msgs::AddZoneListRequest :definition-)
      "string map_name
uint8 zone_mode
uint8 WORLD=0
uint8 IMAGE=1
string map_uuid
Zone[] zone_list

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
---
Zone[] zone_list
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

(setf (get robint_msgs::AddZoneListResponse :md5sum-) "83b364b705a108c43245079072195081")
(setf (get robint_msgs::AddZoneListResponse :datatype-) "robint_msgs/AddZoneListResponse")
(setf (get robint_msgs::AddZoneListResponse :definition-)
      "string map_name
uint8 zone_mode
uint8 WORLD=0
uint8 IMAGE=1
string map_uuid
Zone[] zone_list

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
---
Zone[] zone_list
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



(provide :robint_msgs/AddZoneList "83b364b705a108c43245079072195081")


