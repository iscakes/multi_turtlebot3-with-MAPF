;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::GetCurrentMapInfo)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'GetCurrentMapInfo (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::GETCURRENTMAPINFO")
  (make-package "ROBINT_MSGS::GETCURRENTMAPINFO"))
(unless (find-package "ROBINT_MSGS::GETCURRENTMAPINFOREQUEST")
  (make-package "ROBINT_MSGS::GETCURRENTMAPINFOREQUEST"))
(unless (find-package "ROBINT_MSGS::GETCURRENTMAPINFORESPONSE")
  (make-package "ROBINT_MSGS::GETCURRENTMAPINFORESPONSE"))

(in-package "ROS")





(defclass robint_msgs::GetCurrentMapInfoRequest
  :super ros::object
  :slots ())

(defmethod robint_msgs::GetCurrentMapInfoRequest
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

(defclass robint_msgs::GetCurrentMapInfoResponse
  :super ros::object
  :slots (_map_info _success _error_code _message ))

(defmethod robint_msgs::GetCurrentMapInfoResponse
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

(defclass robint_msgs::GetCurrentMapInfo
  :super ros::object
  :slots ())

(setf (get robint_msgs::GetCurrentMapInfo :md5sum-) "130d1545ef98bef7c80e6aae666b48f8")
(setf (get robint_msgs::GetCurrentMapInfo :datatype-) "robint_msgs/GetCurrentMapInfo")
(setf (get robint_msgs::GetCurrentMapInfo :request) robint_msgs::GetCurrentMapInfoRequest)
(setf (get robint_msgs::GetCurrentMapInfo :response) robint_msgs::GetCurrentMapInfoResponse)

(defmethod robint_msgs::GetCurrentMapInfoRequest
  (:response () (instance robint_msgs::GetCurrentMapInfoResponse :init)))

(setf (get robint_msgs::GetCurrentMapInfoRequest :md5sum-) "130d1545ef98bef7c80e6aae666b48f8")
(setf (get robint_msgs::GetCurrentMapInfoRequest :datatype-) "robint_msgs/GetCurrentMapInfoRequest")
(setf (get robint_msgs::GetCurrentMapInfoRequest :definition-)
      "---
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

(setf (get robint_msgs::GetCurrentMapInfoResponse :md5sum-) "130d1545ef98bef7c80e6aae666b48f8")
(setf (get robint_msgs::GetCurrentMapInfoResponse :datatype-) "robint_msgs/GetCurrentMapInfoResponse")
(setf (get robint_msgs::GetCurrentMapInfoResponse :definition-)
      "---
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



(provide :robint_msgs/GetCurrentMapInfo "130d1545ef98bef7c80e6aae666b48f8")


