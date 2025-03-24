;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::CopyMap)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'CopyMap (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::COPYMAP")
  (make-package "ROBINT_MSGS::COPYMAP"))
(unless (find-package "ROBINT_MSGS::COPYMAPREQUEST")
  (make-package "ROBINT_MSGS::COPYMAPREQUEST"))
(unless (find-package "ROBINT_MSGS::COPYMAPRESPONSE")
  (make-package "ROBINT_MSGS::COPYMAPRESPONSE"))

(in-package "ROS")





(defclass robint_msgs::CopyMapRequest
  :super ros::object
  :slots (_source_map_uuid _target_map_name _target_floor_id _target_building_id ))

(defmethod robint_msgs::CopyMapRequest
  (:init
   (&key
    ((:source_map_uuid __source_map_uuid) "")
    ((:target_map_name __target_map_name) "")
    ((:target_floor_id __target_floor_id) "")
    ((:target_building_id __target_building_id) "")
    )
   (send-super :init)
   (setq _source_map_uuid (string __source_map_uuid))
   (setq _target_map_name (string __target_map_name))
   (setq _target_floor_id (string __target_floor_id))
   (setq _target_building_id (string __target_building_id))
   self)
  (:source_map_uuid
   (&optional __source_map_uuid)
   (if __source_map_uuid (setq _source_map_uuid __source_map_uuid)) _source_map_uuid)
  (:target_map_name
   (&optional __target_map_name)
   (if __target_map_name (setq _target_map_name __target_map_name)) _target_map_name)
  (:target_floor_id
   (&optional __target_floor_id)
   (if __target_floor_id (setq _target_floor_id __target_floor_id)) _target_floor_id)
  (:target_building_id
   (&optional __target_building_id)
   (if __target_building_id (setq _target_building_id __target_building_id)) _target_building_id)
  (:serialization-length
   ()
   (+
    ;; string _source_map_uuid
    4 (length _source_map_uuid)
    ;; string _target_map_name
    4 (length _target_map_name)
    ;; string _target_floor_id
    4 (length _target_floor_id)
    ;; string _target_building_id
    4 (length _target_building_id)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _source_map_uuid
       (write-long (length _source_map_uuid) s) (princ _source_map_uuid s)
     ;; string _target_map_name
       (write-long (length _target_map_name) s) (princ _target_map_name s)
     ;; string _target_floor_id
       (write-long (length _target_floor_id) s) (princ _target_floor_id s)
     ;; string _target_building_id
       (write-long (length _target_building_id) s) (princ _target_building_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _source_map_uuid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _source_map_uuid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _target_map_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _target_map_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _target_floor_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _target_floor_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _target_building_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _target_building_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robint_msgs::CopyMapResponse
  :super ros::object
  :slots (_target_map_uuid _success _error_code ))

(defmethod robint_msgs::CopyMapResponse
  (:init
   (&key
    ((:target_map_uuid __target_map_uuid) "")
    ((:success __success) nil)
    ((:error_code __error_code) 0)
    )
   (send-super :init)
   (setq _target_map_uuid (string __target_map_uuid))
   (setq _success __success)
   (setq _error_code (round __error_code))
   self)
  (:target_map_uuid
   (&optional __target_map_uuid)
   (if __target_map_uuid (setq _target_map_uuid __target_map_uuid)) _target_map_uuid)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:error_code
   (&optional __error_code)
   (if __error_code (setq _error_code __error_code)) _error_code)
  (:serialization-length
   ()
   (+
    ;; string _target_map_uuid
    4 (length _target_map_uuid)
    ;; bool _success
    1
    ;; uint8 _error_code
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _target_map_uuid
       (write-long (length _target_map_uuid) s) (princ _target_map_uuid s)
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _error_code
       (write-byte _error_code s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _target_map_uuid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _target_map_uuid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _error_code
     (setq _error_code (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass robint_msgs::CopyMap
  :super ros::object
  :slots ())

(setf (get robint_msgs::CopyMap :md5sum-) "1ace97e6535e79ec46c2b2a38a254a6f")
(setf (get robint_msgs::CopyMap :datatype-) "robint_msgs/CopyMap")
(setf (get robint_msgs::CopyMap :request) robint_msgs::CopyMapRequest)
(setf (get robint_msgs::CopyMap :response) robint_msgs::CopyMapResponse)

(defmethod robint_msgs::CopyMapRequest
  (:response () (instance robint_msgs::CopyMapResponse :init)))

(setf (get robint_msgs::CopyMapRequest :md5sum-) "1ace97e6535e79ec46c2b2a38a254a6f")
(setf (get robint_msgs::CopyMapRequest :datatype-) "robint_msgs/CopyMapRequest")
(setf (get robint_msgs::CopyMapRequest :definition-)
      "string source_map_uuid
string target_map_name
string target_floor_id
string target_building_id
---
string target_map_uuid
bool success
uint8 error_code
")

(setf (get robint_msgs::CopyMapResponse :md5sum-) "1ace97e6535e79ec46c2b2a38a254a6f")
(setf (get robint_msgs::CopyMapResponse :datatype-) "robint_msgs/CopyMapResponse")
(setf (get robint_msgs::CopyMapResponse :definition-)
      "string source_map_uuid
string target_map_name
string target_floor_id
string target_building_id
---
string target_map_uuid
bool success
uint8 error_code
")



(provide :robint_msgs/CopyMap "1ace97e6535e79ec46c2b2a38a254a6f")


