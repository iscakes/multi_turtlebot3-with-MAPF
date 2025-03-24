;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::GetDetailedNavigationInfo)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'GetDetailedNavigationInfo (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::GETDETAILEDNAVIGATIONINFO")
  (make-package "ROBINT_MSGS::GETDETAILEDNAVIGATIONINFO"))
(unless (find-package "ROBINT_MSGS::GETDETAILEDNAVIGATIONINFOREQUEST")
  (make-package "ROBINT_MSGS::GETDETAILEDNAVIGATIONINFOREQUEST"))
(unless (find-package "ROBINT_MSGS::GETDETAILEDNAVIGATIONINFORESPONSE")
  (make-package "ROBINT_MSGS::GETDETAILEDNAVIGATIONINFORESPONSE"))

(in-package "ROS")





(defclass robint_msgs::GetDetailedNavigationInfoRequest
  :super ros::object
  :slots (_loc_uuid ))

(defmethod robint_msgs::GetDetailedNavigationInfoRequest
  (:init
   (&key
    ((:loc_uuid __loc_uuid) "")
    )
   (send-super :init)
   (setq _loc_uuid (string __loc_uuid))
   self)
  (:loc_uuid
   (&optional __loc_uuid)
   (if __loc_uuid (setq _loc_uuid __loc_uuid)) _loc_uuid)
  (:serialization-length
   ()
   (+
    ;; string _loc_uuid
    4 (length _loc_uuid)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _loc_uuid
       (write-long (length _loc_uuid) s) (princ _loc_uuid s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _loc_uuid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _loc_uuid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robint_msgs::GetDetailedNavigationInfoResponse
  :super ros::object
  :slots (_current_map_uuid _current_floor_id _target_map_uuid _target_floor_uuid _target_loc_uuid _enter_elevator_loc_uuid _elevator_interior_loc_uuid _elevator_wait_loc_uuid _exit_elevator_loc_uuid _result ))

(defmethod robint_msgs::GetDetailedNavigationInfoResponse
  (:init
   (&key
    ((:current_map_uuid __current_map_uuid) "")
    ((:current_floor_id __current_floor_id) "")
    ((:target_map_uuid __target_map_uuid) "")
    ((:target_floor_uuid __target_floor_uuid) "")
    ((:target_loc_uuid __target_loc_uuid) "")
    ((:enter_elevator_loc_uuid __enter_elevator_loc_uuid) "")
    ((:elevator_interior_loc_uuid __elevator_interior_loc_uuid) "")
    ((:elevator_wait_loc_uuid __elevator_wait_loc_uuid) "")
    ((:exit_elevator_loc_uuid __exit_elevator_loc_uuid) "")
    ((:result __result) nil)
    )
   (send-super :init)
   (setq _current_map_uuid (string __current_map_uuid))
   (setq _current_floor_id (string __current_floor_id))
   (setq _target_map_uuid (string __target_map_uuid))
   (setq _target_floor_uuid (string __target_floor_uuid))
   (setq _target_loc_uuid (string __target_loc_uuid))
   (setq _enter_elevator_loc_uuid (string __enter_elevator_loc_uuid))
   (setq _elevator_interior_loc_uuid (string __elevator_interior_loc_uuid))
   (setq _elevator_wait_loc_uuid (string __elevator_wait_loc_uuid))
   (setq _exit_elevator_loc_uuid (string __exit_elevator_loc_uuid))
   (setq _result __result)
   self)
  (:current_map_uuid
   (&optional __current_map_uuid)
   (if __current_map_uuid (setq _current_map_uuid __current_map_uuid)) _current_map_uuid)
  (:current_floor_id
   (&optional __current_floor_id)
   (if __current_floor_id (setq _current_floor_id __current_floor_id)) _current_floor_id)
  (:target_map_uuid
   (&optional __target_map_uuid)
   (if __target_map_uuid (setq _target_map_uuid __target_map_uuid)) _target_map_uuid)
  (:target_floor_uuid
   (&optional __target_floor_uuid)
   (if __target_floor_uuid (setq _target_floor_uuid __target_floor_uuid)) _target_floor_uuid)
  (:target_loc_uuid
   (&optional __target_loc_uuid)
   (if __target_loc_uuid (setq _target_loc_uuid __target_loc_uuid)) _target_loc_uuid)
  (:enter_elevator_loc_uuid
   (&optional __enter_elevator_loc_uuid)
   (if __enter_elevator_loc_uuid (setq _enter_elevator_loc_uuid __enter_elevator_loc_uuid)) _enter_elevator_loc_uuid)
  (:elevator_interior_loc_uuid
   (&optional __elevator_interior_loc_uuid)
   (if __elevator_interior_loc_uuid (setq _elevator_interior_loc_uuid __elevator_interior_loc_uuid)) _elevator_interior_loc_uuid)
  (:elevator_wait_loc_uuid
   (&optional __elevator_wait_loc_uuid)
   (if __elevator_wait_loc_uuid (setq _elevator_wait_loc_uuid __elevator_wait_loc_uuid)) _elevator_wait_loc_uuid)
  (:exit_elevator_loc_uuid
   (&optional __exit_elevator_loc_uuid)
   (if __exit_elevator_loc_uuid (setq _exit_elevator_loc_uuid __exit_elevator_loc_uuid)) _exit_elevator_loc_uuid)
  (:result
   (&optional (__result :null))
   (if (not (eq __result :null)) (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; string _current_map_uuid
    4 (length _current_map_uuid)
    ;; string _current_floor_id
    4 (length _current_floor_id)
    ;; string _target_map_uuid
    4 (length _target_map_uuid)
    ;; string _target_floor_uuid
    4 (length _target_floor_uuid)
    ;; string _target_loc_uuid
    4 (length _target_loc_uuid)
    ;; string _enter_elevator_loc_uuid
    4 (length _enter_elevator_loc_uuid)
    ;; string _elevator_interior_loc_uuid
    4 (length _elevator_interior_loc_uuid)
    ;; string _elevator_wait_loc_uuid
    4 (length _elevator_wait_loc_uuid)
    ;; string _exit_elevator_loc_uuid
    4 (length _exit_elevator_loc_uuid)
    ;; bool _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _current_map_uuid
       (write-long (length _current_map_uuid) s) (princ _current_map_uuid s)
     ;; string _current_floor_id
       (write-long (length _current_floor_id) s) (princ _current_floor_id s)
     ;; string _target_map_uuid
       (write-long (length _target_map_uuid) s) (princ _target_map_uuid s)
     ;; string _target_floor_uuid
       (write-long (length _target_floor_uuid) s) (princ _target_floor_uuid s)
     ;; string _target_loc_uuid
       (write-long (length _target_loc_uuid) s) (princ _target_loc_uuid s)
     ;; string _enter_elevator_loc_uuid
       (write-long (length _enter_elevator_loc_uuid) s) (princ _enter_elevator_loc_uuid s)
     ;; string _elevator_interior_loc_uuid
       (write-long (length _elevator_interior_loc_uuid) s) (princ _elevator_interior_loc_uuid s)
     ;; string _elevator_wait_loc_uuid
       (write-long (length _elevator_wait_loc_uuid) s) (princ _elevator_wait_loc_uuid s)
     ;; string _exit_elevator_loc_uuid
       (write-long (length _exit_elevator_loc_uuid) s) (princ _exit_elevator_loc_uuid s)
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _current_map_uuid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _current_map_uuid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _current_floor_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _current_floor_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _target_map_uuid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _target_map_uuid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _target_floor_uuid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _target_floor_uuid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _target_loc_uuid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _target_loc_uuid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _enter_elevator_loc_uuid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _enter_elevator_loc_uuid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _elevator_interior_loc_uuid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _elevator_interior_loc_uuid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _elevator_wait_loc_uuid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _elevator_wait_loc_uuid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _exit_elevator_loc_uuid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _exit_elevator_loc_uuid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass robint_msgs::GetDetailedNavigationInfo
  :super ros::object
  :slots ())

(setf (get robint_msgs::GetDetailedNavigationInfo :md5sum-) "d40b5c7df15504a3cb8d5081f8acd091")
(setf (get robint_msgs::GetDetailedNavigationInfo :datatype-) "robint_msgs/GetDetailedNavigationInfo")
(setf (get robint_msgs::GetDetailedNavigationInfo :request) robint_msgs::GetDetailedNavigationInfoRequest)
(setf (get robint_msgs::GetDetailedNavigationInfo :response) robint_msgs::GetDetailedNavigationInfoResponse)

(defmethod robint_msgs::GetDetailedNavigationInfoRequest
  (:response () (instance robint_msgs::GetDetailedNavigationInfoResponse :init)))

(setf (get robint_msgs::GetDetailedNavigationInfoRequest :md5sum-) "d40b5c7df15504a3cb8d5081f8acd091")
(setf (get robint_msgs::GetDetailedNavigationInfoRequest :datatype-) "robint_msgs/GetDetailedNavigationInfoRequest")
(setf (get robint_msgs::GetDetailedNavigationInfoRequest :definition-)
      "string loc_uuid
---
string current_map_uuid
string current_floor_id
string target_map_uuid
string target_floor_uuid
string target_loc_uuid
string enter_elevator_loc_uuid
string elevator_interior_loc_uuid
string elevator_wait_loc_uuid
string exit_elevator_loc_uuid

bool result
")

(setf (get robint_msgs::GetDetailedNavigationInfoResponse :md5sum-) "d40b5c7df15504a3cb8d5081f8acd091")
(setf (get robint_msgs::GetDetailedNavigationInfoResponse :datatype-) "robint_msgs/GetDetailedNavigationInfoResponse")
(setf (get robint_msgs::GetDetailedNavigationInfoResponse :definition-)
      "string loc_uuid
---
string current_map_uuid
string current_floor_id
string target_map_uuid
string target_floor_uuid
string target_loc_uuid
string enter_elevator_loc_uuid
string elevator_interior_loc_uuid
string elevator_wait_loc_uuid
string exit_elevator_loc_uuid

bool result
")



(provide :robint_msgs/GetDetailedNavigationInfo "d40b5c7df15504a3cb8d5081f8acd091")


