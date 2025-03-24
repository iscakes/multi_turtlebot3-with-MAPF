;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::CopyZoneList)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'CopyZoneList (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::COPYZONELIST")
  (make-package "ROBINT_MSGS::COPYZONELIST"))
(unless (find-package "ROBINT_MSGS::COPYZONELISTREQUEST")
  (make-package "ROBINT_MSGS::COPYZONELISTREQUEST"))
(unless (find-package "ROBINT_MSGS::COPYZONELISTRESPONSE")
  (make-package "ROBINT_MSGS::COPYZONELISTRESPONSE"))

(in-package "ROS")





(defclass robint_msgs::CopyZoneListRequest
  :super ros::object
  :slots (_source_map_uuid _target_map_uuid ))

(defmethod robint_msgs::CopyZoneListRequest
  (:init
   (&key
    ((:source_map_uuid __source_map_uuid) "")
    ((:target_map_uuid __target_map_uuid) "")
    )
   (send-super :init)
   (setq _source_map_uuid (string __source_map_uuid))
   (setq _target_map_uuid (string __target_map_uuid))
   self)
  (:source_map_uuid
   (&optional __source_map_uuid)
   (if __source_map_uuid (setq _source_map_uuid __source_map_uuid)) _source_map_uuid)
  (:target_map_uuid
   (&optional __target_map_uuid)
   (if __target_map_uuid (setq _target_map_uuid __target_map_uuid)) _target_map_uuid)
  (:serialization-length
   ()
   (+
    ;; string _source_map_uuid
    4 (length _source_map_uuid)
    ;; string _target_map_uuid
    4 (length _target_map_uuid)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _source_map_uuid
       (write-long (length _source_map_uuid) s) (princ _source_map_uuid s)
     ;; string _target_map_uuid
       (write-long (length _target_map_uuid) s) (princ _target_map_uuid s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _source_map_uuid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _source_map_uuid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _target_map_uuid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _target_map_uuid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robint_msgs::CopyZoneListResponse
  :super ros::object
  :slots (_success _error_code ))

(defmethod robint_msgs::CopyZoneListResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:error_code __error_code) 0)
    )
   (send-super :init)
   (setq _success __success)
   (setq _error_code (round __error_code))
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:error_code
   (&optional __error_code)
   (if __error_code (setq _error_code __error_code)) _error_code)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; uint8 _error_code
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _error_code
       (write-byte _error_code s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _error_code
     (setq _error_code (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass robint_msgs::CopyZoneList
  :super ros::object
  :slots ())

(setf (get robint_msgs::CopyZoneList :md5sum-) "8b11985cf92920b4eb79531e78124b68")
(setf (get robint_msgs::CopyZoneList :datatype-) "robint_msgs/CopyZoneList")
(setf (get robint_msgs::CopyZoneList :request) robint_msgs::CopyZoneListRequest)
(setf (get robint_msgs::CopyZoneList :response) robint_msgs::CopyZoneListResponse)

(defmethod robint_msgs::CopyZoneListRequest
  (:response () (instance robint_msgs::CopyZoneListResponse :init)))

(setf (get robint_msgs::CopyZoneListRequest :md5sum-) "8b11985cf92920b4eb79531e78124b68")
(setf (get robint_msgs::CopyZoneListRequest :datatype-) "robint_msgs/CopyZoneListRequest")
(setf (get robint_msgs::CopyZoneListRequest :definition-)
      "string source_map_uuid
string target_map_uuid
---
bool success
uint8 error_code
")

(setf (get robint_msgs::CopyZoneListResponse :md5sum-) "8b11985cf92920b4eb79531e78124b68")
(setf (get robint_msgs::CopyZoneListResponse :datatype-) "robint_msgs/CopyZoneListResponse")
(setf (get robint_msgs::CopyZoneListResponse :definition-)
      "string source_map_uuid
string target_map_uuid
---
bool success
uint8 error_code
")



(provide :robint_msgs/CopyZoneList "8b11985cf92920b4eb79531e78124b68")


