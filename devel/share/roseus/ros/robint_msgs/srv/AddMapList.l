;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::AddMapList)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'AddMapList (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::ADDMAPLIST")
  (make-package "ROBINT_MSGS::ADDMAPLIST"))
(unless (find-package "ROBINT_MSGS::ADDMAPLISTREQUEST")
  (make-package "ROBINT_MSGS::ADDMAPLISTREQUEST"))
(unless (find-package "ROBINT_MSGS::ADDMAPLISTRESPONSE")
  (make-package "ROBINT_MSGS::ADDMAPLISTRESPONSE"))

(in-package "ROS")





(defclass robint_msgs::AddMapListRequest
  :super ros::object
  :slots (_map_info_list ))

(defmethod robint_msgs::AddMapListRequest
  (:init
   (&key
    ((:map_info_list __map_info_list) ())
    )
   (send-super :init)
   (setq _map_info_list __map_info_list)
   self)
  (:map_info_list
   (&rest __map_info_list)
   (if (keywordp (car __map_info_list))
       (send* _map_info_list __map_info_list)
     (progn
       (if __map_info_list (setq _map_info_list (car __map_info_list)))
       _map_info_list)))
  (:serialization-length
   ()
   (+
    ;; robint_msgs/MapInfo[] _map_info_list
    (apply #'+ (send-all _map_info_list :serialization-length)) 4
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
   ;;
   self)
  )

(defclass robint_msgs::AddMapListResponse
  :super ros::object
  :slots (_success _error_code _message ))

(defmethod robint_msgs::AddMapListResponse
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

(defclass robint_msgs::AddMapList
  :super ros::object
  :slots ())

(setf (get robint_msgs::AddMapList :md5sum-) "7377a14f5bd2306faf16013588b937bd")
(setf (get robint_msgs::AddMapList :datatype-) "robint_msgs/AddMapList")
(setf (get robint_msgs::AddMapList :request) robint_msgs::AddMapListRequest)
(setf (get robint_msgs::AddMapList :response) robint_msgs::AddMapListResponse)

(defmethod robint_msgs::AddMapListRequest
  (:response () (instance robint_msgs::AddMapListResponse :init)))

(setf (get robint_msgs::AddMapListRequest :md5sum-) "7377a14f5bd2306faf16013588b937bd")
(setf (get robint_msgs::AddMapListRequest :datatype-) "robint_msgs/AddMapListRequest")
(setf (get robint_msgs::AddMapListRequest :definition-)
      "MapInfo[] map_info_list

================================================================================
MSG: robint_msgs/MapInfo
string uuid
string name
string floor_id
string building_id
string time
float32[] origin
uint32 width
---
bool success
uint8 error_code
string message
")

(setf (get robint_msgs::AddMapListResponse :md5sum-) "7377a14f5bd2306faf16013588b937bd")
(setf (get robint_msgs::AddMapListResponse :datatype-) "robint_msgs/AddMapListResponse")
(setf (get robint_msgs::AddMapListResponse :definition-)
      "MapInfo[] map_info_list

================================================================================
MSG: robint_msgs/MapInfo
string uuid
string name
string floor_id
string building_id
string time
float32[] origin
uint32 width
---
bool success
uint8 error_code
string message
")



(provide :robint_msgs/AddMapList "7377a14f5bd2306faf16013588b937bd")


