;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::SaveMap)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'SaveMap (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::SAVEMAP")
  (make-package "ROBINT_MSGS::SAVEMAP"))
(unless (find-package "ROBINT_MSGS::SAVEMAPREQUEST")
  (make-package "ROBINT_MSGS::SAVEMAPREQUEST"))
(unless (find-package "ROBINT_MSGS::SAVEMAPRESPONSE")
  (make-package "ROBINT_MSGS::SAVEMAPRESPONSE"))

(in-package "ROS")





(defclass robint_msgs::SaveMapRequest
  :super ros::object
  :slots (_map_name _floor_id _building_id _time ))

(defmethod robint_msgs::SaveMapRequest
  (:init
   (&key
    ((:map_name __map_name) "")
    ((:floor_id __floor_id) "")
    ((:building_id __building_id) "")
    ((:time __time) "")
    )
   (send-super :init)
   (setq _map_name (string __map_name))
   (setq _floor_id (string __floor_id))
   (setq _building_id (string __building_id))
   (setq _time (string __time))
   self)
  (:map_name
   (&optional __map_name)
   (if __map_name (setq _map_name __map_name)) _map_name)
  (:floor_id
   (&optional __floor_id)
   (if __floor_id (setq _floor_id __floor_id)) _floor_id)
  (:building_id
   (&optional __building_id)
   (if __building_id (setq _building_id __building_id)) _building_id)
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:serialization-length
   ()
   (+
    ;; string _map_name
    4 (length _map_name)
    ;; string _floor_id
    4 (length _floor_id)
    ;; string _building_id
    4 (length _building_id)
    ;; string _time
    4 (length _time)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _map_name
       (write-long (length _map_name) s) (princ _map_name s)
     ;; string _floor_id
       (write-long (length _floor_id) s) (princ _floor_id s)
     ;; string _building_id
       (write-long (length _building_id) s) (princ _building_id s)
     ;; string _time
       (write-long (length _time) s) (princ _time s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _map_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _map_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _floor_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _floor_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _building_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _building_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _time
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _time (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robint_msgs::SaveMapResponse
  :super ros::object
  :slots (_map_uuid _success _error_code ))

(defmethod robint_msgs::SaveMapResponse
  (:init
   (&key
    ((:map_uuid __map_uuid) "")
    ((:success __success) nil)
    ((:error_code __error_code) 0)
    )
   (send-super :init)
   (setq _map_uuid (string __map_uuid))
   (setq _success __success)
   (setq _error_code (round __error_code))
   self)
  (:map_uuid
   (&optional __map_uuid)
   (if __map_uuid (setq _map_uuid __map_uuid)) _map_uuid)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:error_code
   (&optional __error_code)
   (if __error_code (setq _error_code __error_code)) _error_code)
  (:serialization-length
   ()
   (+
    ;; string _map_uuid
    4 (length _map_uuid)
    ;; bool _success
    1
    ;; uint8 _error_code
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _map_uuid
       (write-long (length _map_uuid) s) (princ _map_uuid s)
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _error_code
       (write-byte _error_code s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _map_uuid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _map_uuid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _error_code
     (setq _error_code (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass robint_msgs::SaveMap
  :super ros::object
  :slots ())

(setf (get robint_msgs::SaveMap :md5sum-) "4f7dafe19f911c0cae117f85fceab982")
(setf (get robint_msgs::SaveMap :datatype-) "robint_msgs/SaveMap")
(setf (get robint_msgs::SaveMap :request) robint_msgs::SaveMapRequest)
(setf (get robint_msgs::SaveMap :response) robint_msgs::SaveMapResponse)

(defmethod robint_msgs::SaveMapRequest
  (:response () (instance robint_msgs::SaveMapResponse :init)))

(setf (get robint_msgs::SaveMapRequest :md5sum-) "4f7dafe19f911c0cae117f85fceab982")
(setf (get robint_msgs::SaveMapRequest :datatype-) "robint_msgs/SaveMapRequest")
(setf (get robint_msgs::SaveMapRequest :definition-)
      "string map_name
string floor_id
string building_id
string time
---
string map_uuid
bool success
uint8 error_code
")

(setf (get robint_msgs::SaveMapResponse :md5sum-) "4f7dafe19f911c0cae117f85fceab982")
(setf (get robint_msgs::SaveMapResponse :datatype-) "robint_msgs/SaveMapResponse")
(setf (get robint_msgs::SaveMapResponse :definition-)
      "string map_name
string floor_id
string building_id
string time
---
string map_uuid
bool success
uint8 error_code
")



(provide :robint_msgs/SaveMap "4f7dafe19f911c0cae117f85fceab982")


