;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::UpdateMapList)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'UpdateMapList (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::UPDATEMAPLIST")
  (make-package "ROBINT_MSGS::UPDATEMAPLIST"))
(unless (find-package "ROBINT_MSGS::UPDATEMAPLISTREQUEST")
  (make-package "ROBINT_MSGS::UPDATEMAPLISTREQUEST"))
(unless (find-package "ROBINT_MSGS::UPDATEMAPLISTRESPONSE")
  (make-package "ROBINT_MSGS::UPDATEMAPLISTRESPONSE"))

(in-package "ROS")





(defclass robint_msgs::UpdateMapListRequest
  :super ros::object
  :slots (_map_uuid_list ))

(defmethod robint_msgs::UpdateMapListRequest
  (:init
   (&key
    ((:map_uuid_list __map_uuid_list) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _map_uuid_list __map_uuid_list)
   self)
  (:map_uuid_list
   (&optional __map_uuid_list)
   (if __map_uuid_list (setq _map_uuid_list __map_uuid_list)) _map_uuid_list)
  (:serialization-length
   ()
   (+
    ;; string[] _map_uuid_list
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _map_uuid_list)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _map_uuid_list
     (write-long (length _map_uuid_list) s)
     (dolist (elem _map_uuid_list)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _map_uuid_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _map_uuid_list (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _map_uuid_list i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass robint_msgs::UpdateMapListResponse
  :super ros::object
  :slots (_success _error_code ))

(defmethod robint_msgs::UpdateMapListResponse
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

(defclass robint_msgs::UpdateMapList
  :super ros::object
  :slots ())

(setf (get robint_msgs::UpdateMapList :md5sum-) "5b682de0bd32eef9ed86c7dc25bda0e8")
(setf (get robint_msgs::UpdateMapList :datatype-) "robint_msgs/UpdateMapList")
(setf (get robint_msgs::UpdateMapList :request) robint_msgs::UpdateMapListRequest)
(setf (get robint_msgs::UpdateMapList :response) robint_msgs::UpdateMapListResponse)

(defmethod robint_msgs::UpdateMapListRequest
  (:response () (instance robint_msgs::UpdateMapListResponse :init)))

(setf (get robint_msgs::UpdateMapListRequest :md5sum-) "5b682de0bd32eef9ed86c7dc25bda0e8")
(setf (get robint_msgs::UpdateMapListRequest :datatype-) "robint_msgs/UpdateMapListRequest")
(setf (get robint_msgs::UpdateMapListRequest :definition-)
      "string[] map_uuid_list
---
bool success
uint8 error_code
")

(setf (get robint_msgs::UpdateMapListResponse :md5sum-) "5b682de0bd32eef9ed86c7dc25bda0e8")
(setf (get robint_msgs::UpdateMapListResponse :datatype-) "robint_msgs/UpdateMapListResponse")
(setf (get robint_msgs::UpdateMapListResponse :definition-)
      "string[] map_uuid_list
---
bool success
uint8 error_code
")



(provide :robint_msgs/UpdateMapList "5b682de0bd32eef9ed86c7dc25bda0e8")


