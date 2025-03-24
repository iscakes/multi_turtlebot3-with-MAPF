;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::DeleteVirtualWallList)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'DeleteVirtualWallList (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::DELETEVIRTUALWALLLIST")
  (make-package "ROBINT_MSGS::DELETEVIRTUALWALLLIST"))
(unless (find-package "ROBINT_MSGS::DELETEVIRTUALWALLLISTREQUEST")
  (make-package "ROBINT_MSGS::DELETEVIRTUALWALLLISTREQUEST"))
(unless (find-package "ROBINT_MSGS::DELETEVIRTUALWALLLISTRESPONSE")
  (make-package "ROBINT_MSGS::DELETEVIRTUALWALLLISTRESPONSE"))

(in-package "ROS")





(defclass robint_msgs::DeleteVirtualWallListRequest
  :super ros::object
  :slots (_map_name _vw_uuid_list ))

(defmethod robint_msgs::DeleteVirtualWallListRequest
  (:init
   (&key
    ((:map_name __map_name) "")
    ((:vw_uuid_list __vw_uuid_list) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _map_name (string __map_name))
   (setq _vw_uuid_list __vw_uuid_list)
   self)
  (:map_name
   (&optional __map_name)
   (if __map_name (setq _map_name __map_name)) _map_name)
  (:vw_uuid_list
   (&optional __vw_uuid_list)
   (if __vw_uuid_list (setq _vw_uuid_list __vw_uuid_list)) _vw_uuid_list)
  (:serialization-length
   ()
   (+
    ;; string _map_name
    4 (length _map_name)
    ;; string[] _vw_uuid_list
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _vw_uuid_list)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _map_name
       (write-long (length _map_name) s) (princ _map_name s)
     ;; string[] _vw_uuid_list
     (write-long (length _vw_uuid_list) s)
     (dolist (elem _vw_uuid_list)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _map_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _map_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string[] _vw_uuid_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _vw_uuid_list (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _vw_uuid_list i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass robint_msgs::DeleteVirtualWallListResponse
  :super ros::object
  :slots (_success _error_code _message ))

(defmethod robint_msgs::DeleteVirtualWallListResponse
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

(defclass robint_msgs::DeleteVirtualWallList
  :super ros::object
  :slots ())

(setf (get robint_msgs::DeleteVirtualWallList :md5sum-) "f680126c6902059790e66ef254ef72f5")
(setf (get robint_msgs::DeleteVirtualWallList :datatype-) "robint_msgs/DeleteVirtualWallList")
(setf (get robint_msgs::DeleteVirtualWallList :request) robint_msgs::DeleteVirtualWallListRequest)
(setf (get robint_msgs::DeleteVirtualWallList :response) robint_msgs::DeleteVirtualWallListResponse)

(defmethod robint_msgs::DeleteVirtualWallListRequest
  (:response () (instance robint_msgs::DeleteVirtualWallListResponse :init)))

(setf (get robint_msgs::DeleteVirtualWallListRequest :md5sum-) "f680126c6902059790e66ef254ef72f5")
(setf (get robint_msgs::DeleteVirtualWallListRequest :datatype-) "robint_msgs/DeleteVirtualWallListRequest")
(setf (get robint_msgs::DeleteVirtualWallListRequest :definition-)
      "string map_name
string[] vw_uuid_list
---
bool success
uint8 error_code
string message
")

(setf (get robint_msgs::DeleteVirtualWallListResponse :md5sum-) "f680126c6902059790e66ef254ef72f5")
(setf (get robint_msgs::DeleteVirtualWallListResponse :datatype-) "robint_msgs/DeleteVirtualWallListResponse")
(setf (get robint_msgs::DeleteVirtualWallListResponse :definition-)
      "string map_name
string[] vw_uuid_list
---
bool success
uint8 error_code
string message
")



(provide :robint_msgs/DeleteVirtualWallList "f680126c6902059790e66ef254ef72f5")


