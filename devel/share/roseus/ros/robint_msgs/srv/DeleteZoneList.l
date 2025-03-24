;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::DeleteZoneList)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'DeleteZoneList (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::DELETEZONELIST")
  (make-package "ROBINT_MSGS::DELETEZONELIST"))
(unless (find-package "ROBINT_MSGS::DELETEZONELISTREQUEST")
  (make-package "ROBINT_MSGS::DELETEZONELISTREQUEST"))
(unless (find-package "ROBINT_MSGS::DELETEZONELISTRESPONSE")
  (make-package "ROBINT_MSGS::DELETEZONELISTRESPONSE"))

(in-package "ROS")





(defclass robint_msgs::DeleteZoneListRequest
  :super ros::object
  :slots (_map_name _uuid_list ))

(defmethod robint_msgs::DeleteZoneListRequest
  (:init
   (&key
    ((:map_name __map_name) "")
    ((:uuid_list __uuid_list) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _map_name (string __map_name))
   (setq _uuid_list __uuid_list)
   self)
  (:map_name
   (&optional __map_name)
   (if __map_name (setq _map_name __map_name)) _map_name)
  (:uuid_list
   (&optional __uuid_list)
   (if __uuid_list (setq _uuid_list __uuid_list)) _uuid_list)
  (:serialization-length
   ()
   (+
    ;; string _map_name
    4 (length _map_name)
    ;; string[] _uuid_list
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _uuid_list)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _map_name
       (write-long (length _map_name) s) (princ _map_name s)
     ;; string[] _uuid_list
     (write-long (length _uuid_list) s)
     (dolist (elem _uuid_list)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _map_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _map_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string[] _uuid_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _uuid_list (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _uuid_list i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass robint_msgs::DeleteZoneListResponse
  :super ros::object
  :slots (_success _error_code _message ))

(defmethod robint_msgs::DeleteZoneListResponse
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

(defclass robint_msgs::DeleteZoneList
  :super ros::object
  :slots ())

(setf (get robint_msgs::DeleteZoneList :md5sum-) "f4e37ba52bfa65dbaebe7aca30d2737d")
(setf (get robint_msgs::DeleteZoneList :datatype-) "robint_msgs/DeleteZoneList")
(setf (get robint_msgs::DeleteZoneList :request) robint_msgs::DeleteZoneListRequest)
(setf (get robint_msgs::DeleteZoneList :response) robint_msgs::DeleteZoneListResponse)

(defmethod robint_msgs::DeleteZoneListRequest
  (:response () (instance robint_msgs::DeleteZoneListResponse :init)))

(setf (get robint_msgs::DeleteZoneListRequest :md5sum-) "f4e37ba52bfa65dbaebe7aca30d2737d")
(setf (get robint_msgs::DeleteZoneListRequest :datatype-) "robint_msgs/DeleteZoneListRequest")
(setf (get robint_msgs::DeleteZoneListRequest :definition-)
      "string map_name
string[] uuid_list
---
bool success
uint8 error_code
string message
")

(setf (get robint_msgs::DeleteZoneListResponse :md5sum-) "f4e37ba52bfa65dbaebe7aca30d2737d")
(setf (get robint_msgs::DeleteZoneListResponse :datatype-) "robint_msgs/DeleteZoneListResponse")
(setf (get robint_msgs::DeleteZoneListResponse :definition-)
      "string map_name
string[] uuid_list
---
bool success
uint8 error_code
string message
")



(provide :robint_msgs/DeleteZoneList "f4e37ba52bfa65dbaebe7aca30d2737d")


