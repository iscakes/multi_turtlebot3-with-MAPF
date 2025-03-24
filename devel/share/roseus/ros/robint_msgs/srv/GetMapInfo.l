;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::GetMapInfo)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'GetMapInfo (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::GETMAPINFO")
  (make-package "ROBINT_MSGS::GETMAPINFO"))
(unless (find-package "ROBINT_MSGS::GETMAPINFOREQUEST")
  (make-package "ROBINT_MSGS::GETMAPINFOREQUEST"))
(unless (find-package "ROBINT_MSGS::GETMAPINFORESPONSE")
  (make-package "ROBINT_MSGS::GETMAPINFORESPONSE"))

(in-package "ROS")





(defclass robint_msgs::GetMapInfoRequest
  :super ros::object
  :slots (_map_uuid ))

(defmethod robint_msgs::GetMapInfoRequest
  (:init
   (&key
    ((:map_uuid __map_uuid) "")
    )
   (send-super :init)
   (setq _map_uuid (string __map_uuid))
   self)
  (:map_uuid
   (&optional __map_uuid)
   (if __map_uuid (setq _map_uuid __map_uuid)) _map_uuid)
  (:serialization-length
   ()
   (+
    ;; string _map_uuid
    4 (length _map_uuid)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _map_uuid
       (write-long (length _map_uuid) s) (princ _map_uuid s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _map_uuid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _map_uuid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robint_msgs::GetMapInfoResponse
  :super ros::object
  :slots (_map_info _success _error_code _message ))

(defmethod robint_msgs::GetMapInfoResponse
  (:init
   (&key
    ((:map_info __map_info) (instance robint_msgs::MapInfo :init))
    ((:success __success) nil)
    ((:error_code __error_code) 0)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _map_info __map_info)
   (setq _success __success)
   (setq _error_code (round __error_code))
   (setq _message (string __message))
   self)
  (:map_info
   (&rest __map_info)
   (if (keywordp (car __map_info))
       (send* _map_info __map_info)
     (progn
       (if __map_info (setq _map_info (car __map_info)))
       _map_info)))
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
    ;; robint_msgs/MapInfo _map_info
    (send _map_info :serialization-length)
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
     ;; robint_msgs/MapInfo _map_info
       (send _map_info :serialize s)
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
   ;; robint_msgs/MapInfo _map_info
     (send _map_info :deserialize buf ptr-) (incf ptr- (send _map_info :serialization-length))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _error_code
     (setq _error_code (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robint_msgs::GetMapInfo
  :super ros::object
  :slots ())

(setf (get robint_msgs::GetMapInfo :md5sum-) "3242f7b3517d79bee0c26d426a06d762")
(setf (get robint_msgs::GetMapInfo :datatype-) "robint_msgs/GetMapInfo")
(setf (get robint_msgs::GetMapInfo :request) robint_msgs::GetMapInfoRequest)
(setf (get robint_msgs::GetMapInfo :response) robint_msgs::GetMapInfoResponse)

(defmethod robint_msgs::GetMapInfoRequest
  (:response () (instance robint_msgs::GetMapInfoResponse :init)))

(setf (get robint_msgs::GetMapInfoRequest :md5sum-) "3242f7b3517d79bee0c26d426a06d762")
(setf (get robint_msgs::GetMapInfoRequest :datatype-) "robint_msgs/GetMapInfoRequest")
(setf (get robint_msgs::GetMapInfoRequest :definition-)
      "string map_uuid
---
MapInfo map_info
bool success
uint8 error_code
string message

================================================================================
MSG: robint_msgs/MapInfo
string uuid
string name
string floor_id
string building_id
string time
float32[] origin
uint32 width
")

(setf (get robint_msgs::GetMapInfoResponse :md5sum-) "3242f7b3517d79bee0c26d426a06d762")
(setf (get robint_msgs::GetMapInfoResponse :datatype-) "robint_msgs/GetMapInfoResponse")
(setf (get robint_msgs::GetMapInfoResponse :definition-)
      "string map_uuid
---
MapInfo map_info
bool success
uint8 error_code
string message

================================================================================
MSG: robint_msgs/MapInfo
string uuid
string name
string floor_id
string building_id
string time
float32[] origin
uint32 width
")



(provide :robint_msgs/GetMapInfo "3242f7b3517d79bee0c26d426a06d762")


