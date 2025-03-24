;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::GetCleaningAreaInfoList)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'GetCleaningAreaInfoList (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::GETCLEANINGAREAINFOLIST")
  (make-package "ROBINT_MSGS::GETCLEANINGAREAINFOLIST"))
(unless (find-package "ROBINT_MSGS::GETCLEANINGAREAINFOLISTREQUEST")
  (make-package "ROBINT_MSGS::GETCLEANINGAREAINFOLISTREQUEST"))
(unless (find-package "ROBINT_MSGS::GETCLEANINGAREAINFOLISTRESPONSE")
  (make-package "ROBINT_MSGS::GETCLEANINGAREAINFOLISTRESPONSE"))

(in-package "ROS")





(defclass robint_msgs::GetCleaningAreaInfoListRequest
  :super ros::object
  :slots (_map_uuid ))

(defmethod robint_msgs::GetCleaningAreaInfoListRequest
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

(defclass robint_msgs::GetCleaningAreaInfoListResponse
  :super ros::object
  :slots (_area_info_list _success _error_code _message ))

(defmethod robint_msgs::GetCleaningAreaInfoListResponse
  (:init
   (&key
    ((:area_info_list __area_info_list) ())
    ((:success __success) nil)
    ((:error_code __error_code) 0)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _area_info_list __area_info_list)
   (setq _success __success)
   (setq _error_code (round __error_code))
   (setq _message (string __message))
   self)
  (:area_info_list
   (&rest __area_info_list)
   (if (keywordp (car __area_info_list))
       (send* _area_info_list __area_info_list)
     (progn
       (if __area_info_list (setq _area_info_list (car __area_info_list)))
       _area_info_list)))
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
    ;; robint_msgs/CleaningAreaInfo[] _area_info_list
    (apply #'+ (send-all _area_info_list :serialization-length)) 4
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
     ;; robint_msgs/CleaningAreaInfo[] _area_info_list
     (write-long (length _area_info_list) s)
     (dolist (elem _area_info_list)
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
   ;; robint_msgs/CleaningAreaInfo[] _area_info_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _area_info_list (let (r) (dotimes (i n) (push (instance robint_msgs::CleaningAreaInfo :init) r)) r))
     (dolist (elem- _area_info_list)
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

(defclass robint_msgs::GetCleaningAreaInfoList
  :super ros::object
  :slots ())

(setf (get robint_msgs::GetCleaningAreaInfoList :md5sum-) "c9bd3dc1e14b85c9d69ae02a4712f46b")
(setf (get robint_msgs::GetCleaningAreaInfoList :datatype-) "robint_msgs/GetCleaningAreaInfoList")
(setf (get robint_msgs::GetCleaningAreaInfoList :request) robint_msgs::GetCleaningAreaInfoListRequest)
(setf (get robint_msgs::GetCleaningAreaInfoList :response) robint_msgs::GetCleaningAreaInfoListResponse)

(defmethod robint_msgs::GetCleaningAreaInfoListRequest
  (:response () (instance robint_msgs::GetCleaningAreaInfoListResponse :init)))

(setf (get robint_msgs::GetCleaningAreaInfoListRequest :md5sum-) "c9bd3dc1e14b85c9d69ae02a4712f46b")
(setf (get robint_msgs::GetCleaningAreaInfoListRequest :datatype-) "robint_msgs/GetCleaningAreaInfoListRequest")
(setf (get robint_msgs::GetCleaningAreaInfoListRequest :definition-)
      "string map_uuid
---
CleaningAreaInfo[] area_info_list
bool success
uint8 error_code
string message

================================================================================
MSG: robint_msgs/CleaningAreaInfo
string uuid
string name
string map_uuid
string group_uuid
")

(setf (get robint_msgs::GetCleaningAreaInfoListResponse :md5sum-) "c9bd3dc1e14b85c9d69ae02a4712f46b")
(setf (get robint_msgs::GetCleaningAreaInfoListResponse :datatype-) "robint_msgs/GetCleaningAreaInfoListResponse")
(setf (get robint_msgs::GetCleaningAreaInfoListResponse :definition-)
      "string map_uuid
---
CleaningAreaInfo[] area_info_list
bool success
uint8 error_code
string message

================================================================================
MSG: robint_msgs/CleaningAreaInfo
string uuid
string name
string map_uuid
string group_uuid
")



(provide :robint_msgs/GetCleaningAreaInfoList "c9bd3dc1e14b85c9d69ae02a4712f46b")


