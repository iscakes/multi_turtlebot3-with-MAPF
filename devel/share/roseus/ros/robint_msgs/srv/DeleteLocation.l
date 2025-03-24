;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::DeleteLocation)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'DeleteLocation (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::DELETELOCATION")
  (make-package "ROBINT_MSGS::DELETELOCATION"))
(unless (find-package "ROBINT_MSGS::DELETELOCATIONREQUEST")
  (make-package "ROBINT_MSGS::DELETELOCATIONREQUEST"))
(unless (find-package "ROBINT_MSGS::DELETELOCATIONRESPONSE")
  (make-package "ROBINT_MSGS::DELETELOCATIONRESPONSE"))

(in-package "ROS")





(defclass robint_msgs::DeleteLocationRequest
  :super ros::object
  :slots (_map_name _location_name ))

(defmethod robint_msgs::DeleteLocationRequest
  (:init
   (&key
    ((:map_name __map_name) "")
    ((:location_name __location_name) "")
    )
   (send-super :init)
   (setq _map_name (string __map_name))
   (setq _location_name (string __location_name))
   self)
  (:map_name
   (&optional __map_name)
   (if __map_name (setq _map_name __map_name)) _map_name)
  (:location_name
   (&optional __location_name)
   (if __location_name (setq _location_name __location_name)) _location_name)
  (:serialization-length
   ()
   (+
    ;; string _map_name
    4 (length _map_name)
    ;; string _location_name
    4 (length _location_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _map_name
       (write-long (length _map_name) s) (princ _map_name s)
     ;; string _location_name
       (write-long (length _location_name) s) (princ _location_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _map_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _map_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _location_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _location_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robint_msgs::DeleteLocationResponse
  :super ros::object
  :slots (_success ))

(defmethod robint_msgs::DeleteLocationResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass robint_msgs::DeleteLocation
  :super ros::object
  :slots ())

(setf (get robint_msgs::DeleteLocation :md5sum-) "e455ff67939cb430aa8c8b048159a412")
(setf (get robint_msgs::DeleteLocation :datatype-) "robint_msgs/DeleteLocation")
(setf (get robint_msgs::DeleteLocation :request) robint_msgs::DeleteLocationRequest)
(setf (get robint_msgs::DeleteLocation :response) robint_msgs::DeleteLocationResponse)

(defmethod robint_msgs::DeleteLocationRequest
  (:response () (instance robint_msgs::DeleteLocationResponse :init)))

(setf (get robint_msgs::DeleteLocationRequest :md5sum-) "e455ff67939cb430aa8c8b048159a412")
(setf (get robint_msgs::DeleteLocationRequest :datatype-) "robint_msgs/DeleteLocationRequest")
(setf (get robint_msgs::DeleteLocationRequest :definition-)
      "string map_name
string location_name
---
bool success
")

(setf (get robint_msgs::DeleteLocationResponse :md5sum-) "e455ff67939cb430aa8c8b048159a412")
(setf (get robint_msgs::DeleteLocationResponse :datatype-) "robint_msgs/DeleteLocationResponse")
(setf (get robint_msgs::DeleteLocationResponse :definition-)
      "string map_name
string location_name
---
bool success
")



(provide :robint_msgs/DeleteLocation "e455ff67939cb430aa8c8b048159a412")


