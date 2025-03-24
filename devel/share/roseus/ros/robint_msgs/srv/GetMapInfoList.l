;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::GetMapInfoList)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'GetMapInfoList (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::GETMAPINFOLIST")
  (make-package "ROBINT_MSGS::GETMAPINFOLIST"))
(unless (find-package "ROBINT_MSGS::GETMAPINFOLISTREQUEST")
  (make-package "ROBINT_MSGS::GETMAPINFOLISTREQUEST"))
(unless (find-package "ROBINT_MSGS::GETMAPINFOLISTRESPONSE")
  (make-package "ROBINT_MSGS::GETMAPINFOLISTRESPONSE"))

(in-package "ROS")





(defclass robint_msgs::GetMapInfoListRequest
  :super ros::object
  :slots ())

(defmethod robint_msgs::GetMapInfoListRequest
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

(defclass robint_msgs::GetMapInfoListResponse
  :super ros::object
  :slots (_map_info_list _success _error_code _message ))

(defmethod robint_msgs::GetMapInfoListResponse
  (:init
   (&key
    ((:map_info_list __map_info_list) ())
    ((:success __success) nil)
    ((:error_code __error_code) 0)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _map_info_list __map_info_list)
   (setq _success __success)
   (setq _error_code (round __error_code))
   (setq _message (string __message))
   self)
  (:map_info_list
   (&rest __map_info_list)
   (if (keywordp (car __map_info_list))
       (send* _map_info_list __map_info_list)
     (progn
       (if __map_info_list (setq _map_info_list (car __map_info_list)))
       _map_info_list)))
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
    ;; robint_msgs/MapInfo[] _map_info_list
    (apply #'+ (send-all _map_info_list :serialization-length)) 4
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
     ;; robint_msgs/MapInfo[] _map_info_list
     (write-long (length _map_info_list) s)
     (dolist (elem _map_info_list)
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
   ;; robint_msgs/MapInfo[] _map_info_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _map_info_list (let (r) (dotimes (i n) (push (instance robint_msgs::MapInfo :init) r)) r))
     (dolist (elem- _map_info_list)
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

(defclass robint_msgs::GetMapInfoList
  :super ros::object
  :slots ())

(setf (get robint_msgs::GetMapInfoList :md5sum-) "57f05d6fb9592a3ccafd77c7df55a4c2")
(setf (get robint_msgs::GetMapInfoList :datatype-) "robint_msgs/GetMapInfoList")
(setf (get robint_msgs::GetMapInfoList :request) robint_msgs::GetMapInfoListRequest)
(setf (get robint_msgs::GetMapInfoList :response) robint_msgs::GetMapInfoListResponse)

(defmethod robint_msgs::GetMapInfoListRequest
  (:response () (instance robint_msgs::GetMapInfoListResponse :init)))

(setf (get robint_msgs::GetMapInfoListRequest :md5sum-) "57f05d6fb9592a3ccafd77c7df55a4c2")
(setf (get robint_msgs::GetMapInfoListRequest :datatype-) "robint_msgs/GetMapInfoListRequest")
(setf (get robint_msgs::GetMapInfoListRequest :definition-)
      "---
MapInfo[] map_info_list
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

(setf (get robint_msgs::GetMapInfoListResponse :md5sum-) "57f05d6fb9592a3ccafd77c7df55a4c2")
(setf (get robint_msgs::GetMapInfoListResponse :datatype-) "robint_msgs/GetMapInfoListResponse")
(setf (get robint_msgs::GetMapInfoListResponse :definition-)
      "---
MapInfo[] map_info_list
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



(provide :robint_msgs/GetMapInfoList "57f05d6fb9592a3ccafd77c7df55a4c2")


