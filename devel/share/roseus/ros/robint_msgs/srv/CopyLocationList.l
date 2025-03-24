;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::CopyLocationList)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'CopyLocationList (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::COPYLOCATIONLIST")
  (make-package "ROBINT_MSGS::COPYLOCATIONLIST"))
(unless (find-package "ROBINT_MSGS::COPYLOCATIONLISTREQUEST")
  (make-package "ROBINT_MSGS::COPYLOCATIONLISTREQUEST"))
(unless (find-package "ROBINT_MSGS::COPYLOCATIONLISTRESPONSE")
  (make-package "ROBINT_MSGS::COPYLOCATIONLISTRESPONSE"))

(in-package "ROS")





(defclass robint_msgs::CopyLocationListRequest
  :super ros::object
  :slots (_source_map_uuid _target_map_uuid _floor_index ))

(defmethod robint_msgs::CopyLocationListRequest
  (:init
   (&key
    ((:source_map_uuid __source_map_uuid) "")
    ((:target_map_uuid __target_map_uuid) "")
    ((:floor_index __floor_index) 0)
    )
   (send-super :init)
   (setq _source_map_uuid (string __source_map_uuid))
   (setq _target_map_uuid (string __target_map_uuid))
   (setq _floor_index (round __floor_index))
   self)
  (:source_map_uuid
   (&optional __source_map_uuid)
   (if __source_map_uuid (setq _source_map_uuid __source_map_uuid)) _source_map_uuid)
  (:target_map_uuid
   (&optional __target_map_uuid)
   (if __target_map_uuid (setq _target_map_uuid __target_map_uuid)) _target_map_uuid)
  (:floor_index
   (&optional __floor_index)
   (if __floor_index (setq _floor_index __floor_index)) _floor_index)
  (:serialization-length
   ()
   (+
    ;; string _source_map_uuid
    4 (length _source_map_uuid)
    ;; string _target_map_uuid
    4 (length _target_map_uuid)
    ;; int32 _floor_index
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _source_map_uuid
       (write-long (length _source_map_uuid) s) (princ _source_map_uuid s)
     ;; string _target_map_uuid
       (write-long (length _target_map_uuid) s) (princ _target_map_uuid s)
     ;; int32 _floor_index
       (write-long _floor_index s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _source_map_uuid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _source_map_uuid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _target_map_uuid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _target_map_uuid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _floor_index
     (setq _floor_index (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass robint_msgs::CopyLocationListResponse
  :super ros::object
  :slots (_success _error_code ))

(defmethod robint_msgs::CopyLocationListResponse
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

(defclass robint_msgs::CopyLocationList
  :super ros::object
  :slots ())

(setf (get robint_msgs::CopyLocationList :md5sum-) "0302d3157602f7391af07cad52331553")
(setf (get robint_msgs::CopyLocationList :datatype-) "robint_msgs/CopyLocationList")
(setf (get robint_msgs::CopyLocationList :request) robint_msgs::CopyLocationListRequest)
(setf (get robint_msgs::CopyLocationList :response) robint_msgs::CopyLocationListResponse)

(defmethod robint_msgs::CopyLocationListRequest
  (:response () (instance robint_msgs::CopyLocationListResponse :init)))

(setf (get robint_msgs::CopyLocationListRequest :md5sum-) "0302d3157602f7391af07cad52331553")
(setf (get robint_msgs::CopyLocationListRequest :datatype-) "robint_msgs/CopyLocationListRequest")
(setf (get robint_msgs::CopyLocationListRequest :definition-)
      "string source_map_uuid
string target_map_uuid
int32 floor_index
---
bool success
uint8 error_code
")

(setf (get robint_msgs::CopyLocationListResponse :md5sum-) "0302d3157602f7391af07cad52331553")
(setf (get robint_msgs::CopyLocationListResponse :datatype-) "robint_msgs/CopyLocationListResponse")
(setf (get robint_msgs::CopyLocationListResponse :definition-)
      "string source_map_uuid
string target_map_uuid
int32 floor_index
---
bool success
uint8 error_code
")



(provide :robint_msgs/CopyLocationList "0302d3157602f7391af07cad52331553")


