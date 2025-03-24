;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::CopyCleaningAreaList)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'CopyCleaningAreaList (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::COPYCLEANINGAREALIST")
  (make-package "ROBINT_MSGS::COPYCLEANINGAREALIST"))
(unless (find-package "ROBINT_MSGS::COPYCLEANINGAREALISTREQUEST")
  (make-package "ROBINT_MSGS::COPYCLEANINGAREALISTREQUEST"))
(unless (find-package "ROBINT_MSGS::COPYCLEANINGAREALISTRESPONSE")
  (make-package "ROBINT_MSGS::COPYCLEANINGAREALISTRESPONSE"))

(in-package "ROS")





(defclass robint_msgs::CopyCleaningAreaListRequest
  :super ros::object
  :slots (_source_map_uuid _target_map_uuid ))

(defmethod robint_msgs::CopyCleaningAreaListRequest
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

(defclass robint_msgs::CopyCleaningAreaListResponse
  :super ros::object
  :slots (_success _error_code ))

(defmethod robint_msgs::CopyCleaningAreaListResponse
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

(defclass robint_msgs::CopyCleaningAreaList
  :super ros::object
  :slots ())

(setf (get robint_msgs::CopyCleaningAreaList :md5sum-) "8b11985cf92920b4eb79531e78124b68")
(setf (get robint_msgs::CopyCleaningAreaList :datatype-) "robint_msgs/CopyCleaningAreaList")
(setf (get robint_msgs::CopyCleaningAreaList :request) robint_msgs::CopyCleaningAreaListRequest)
(setf (get robint_msgs::CopyCleaningAreaList :response) robint_msgs::CopyCleaningAreaListResponse)

(defmethod robint_msgs::CopyCleaningAreaListRequest
  (:response () (instance robint_msgs::CopyCleaningAreaListResponse :init)))

(setf (get robint_msgs::CopyCleaningAreaListRequest :md5sum-) "8b11985cf92920b4eb79531e78124b68")
(setf (get robint_msgs::CopyCleaningAreaListRequest :datatype-) "robint_msgs/CopyCleaningAreaListRequest")
(setf (get robint_msgs::CopyCleaningAreaListRequest :definition-)
      "string source_map_uuid
string target_map_uuid
---
bool success
uint8 error_code
")

(setf (get robint_msgs::CopyCleaningAreaListResponse :md5sum-) "8b11985cf92920b4eb79531e78124b68")
(setf (get robint_msgs::CopyCleaningAreaListResponse :datatype-) "robint_msgs/CopyCleaningAreaListResponse")
(setf (get robint_msgs::CopyCleaningAreaListResponse :definition-)
      "string source_map_uuid
string target_map_uuid
---
bool success
uint8 error_code
")



(provide :robint_msgs/CopyCleaningAreaList "8b11985cf92920b4eb79531e78124b68")


