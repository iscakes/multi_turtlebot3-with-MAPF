;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::DeleteVirtualWall)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'DeleteVirtualWall (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::DELETEVIRTUALWALL")
  (make-package "ROBINT_MSGS::DELETEVIRTUALWALL"))
(unless (find-package "ROBINT_MSGS::DELETEVIRTUALWALLREQUEST")
  (make-package "ROBINT_MSGS::DELETEVIRTUALWALLREQUEST"))
(unless (find-package "ROBINT_MSGS::DELETEVIRTUALWALLRESPONSE")
  (make-package "ROBINT_MSGS::DELETEVIRTUALWALLRESPONSE"))

(in-package "ROS")





(defclass robint_msgs::DeleteVirtualWallRequest
  :super ros::object
  :slots (_map_name _id ))

(defmethod robint_msgs::DeleteVirtualWallRequest
  (:init
   (&key
    ((:map_name __map_name) "")
    ((:id __id) "")
    )
   (send-super :init)
   (setq _map_name (string __map_name))
   (setq _id (string __id))
   self)
  (:map_name
   (&optional __map_name)
   (if __map_name (setq _map_name __map_name)) _map_name)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:serialization-length
   ()
   (+
    ;; string _map_name
    4 (length _map_name)
    ;; string _id
    4 (length _id)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _map_name
       (write-long (length _map_name) s) (princ _map_name s)
     ;; string _id
       (write-long (length _id) s) (princ _id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _map_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _map_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robint_msgs::DeleteVirtualWallResponse
  :super ros::object
  :slots (_success _error_code _message ))

(defmethod robint_msgs::DeleteVirtualWallResponse
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

(defclass robint_msgs::DeleteVirtualWall
  :super ros::object
  :slots ())

(setf (get robint_msgs::DeleteVirtualWall :md5sum-) "be1a6ec15d3a7c0da62c91d324d28390")
(setf (get robint_msgs::DeleteVirtualWall :datatype-) "robint_msgs/DeleteVirtualWall")
(setf (get robint_msgs::DeleteVirtualWall :request) robint_msgs::DeleteVirtualWallRequest)
(setf (get robint_msgs::DeleteVirtualWall :response) robint_msgs::DeleteVirtualWallResponse)

(defmethod robint_msgs::DeleteVirtualWallRequest
  (:response () (instance robint_msgs::DeleteVirtualWallResponse :init)))

(setf (get robint_msgs::DeleteVirtualWallRequest :md5sum-) "be1a6ec15d3a7c0da62c91d324d28390")
(setf (get robint_msgs::DeleteVirtualWallRequest :datatype-) "robint_msgs/DeleteVirtualWallRequest")
(setf (get robint_msgs::DeleteVirtualWallRequest :definition-)
      "string map_name
string id
---
bool success
uint8 error_code
string message
")

(setf (get robint_msgs::DeleteVirtualWallResponse :md5sum-) "be1a6ec15d3a7c0da62c91d324d28390")
(setf (get robint_msgs::DeleteVirtualWallResponse :datatype-) "robint_msgs/DeleteVirtualWallResponse")
(setf (get robint_msgs::DeleteVirtualWallResponse :definition-)
      "string map_name
string id
---
bool success
uint8 error_code
string message
")



(provide :robint_msgs/DeleteVirtualWall "be1a6ec15d3a7c0da62c91d324d28390")


