;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::GetLocationNameList)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'GetLocationNameList (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::GETLOCATIONNAMELIST")
  (make-package "ROBINT_MSGS::GETLOCATIONNAMELIST"))
(unless (find-package "ROBINT_MSGS::GETLOCATIONNAMELISTREQUEST")
  (make-package "ROBINT_MSGS::GETLOCATIONNAMELISTREQUEST"))
(unless (find-package "ROBINT_MSGS::GETLOCATIONNAMELISTRESPONSE")
  (make-package "ROBINT_MSGS::GETLOCATIONNAMELISTRESPONSE"))

(in-package "ROS")





(defclass robint_msgs::GetLocationNameListRequest
  :super ros::object
  :slots ())

(defmethod robint_msgs::GetLocationNameListRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass robint_msgs::GetLocationNameListResponse
  :super ros::object
  :slots (_name_list _success ))

(defmethod robint_msgs::GetLocationNameListResponse
  (:init
   (&key
    ((:name_list __name_list) ())
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _name_list __name_list)
   (setq _success __success)
   self)
  (:name_list
   (&rest __name_list)
   (if (keywordp (car __name_list))
       (send* _name_list __name_list)
     (progn
       (if __name_list (setq _name_list (car __name_list)))
       _name_list)))
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; robint_msgs/LocationNameList[] _name_list
    (apply #'+ (send-all _name_list :serialization-length)) 4
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; robint_msgs/LocationNameList[] _name_list
     (write-long (length _name_list) s)
     (dolist (elem _name_list)
       (send elem :serialize s)
       )
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; robint_msgs/LocationNameList[] _name_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _name_list (let (r) (dotimes (i n) (push (instance robint_msgs::LocationNameList :init) r)) r))
     (dolist (elem- _name_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass robint_msgs::GetLocationNameList
  :super ros::object
  :slots ())

(setf (get robint_msgs::GetLocationNameList :md5sum-) "bb2a629baa6b7acd53d72d954cb25dd5")
(setf (get robint_msgs::GetLocationNameList :datatype-) "robint_msgs/GetLocationNameList")
(setf (get robint_msgs::GetLocationNameList :request) robint_msgs::GetLocationNameListRequest)
(setf (get robint_msgs::GetLocationNameList :response) robint_msgs::GetLocationNameListResponse)

(defmethod robint_msgs::GetLocationNameListRequest
  (:response () (instance robint_msgs::GetLocationNameListResponse :init)))

(setf (get robint_msgs::GetLocationNameListRequest :md5sum-) "bb2a629baa6b7acd53d72d954cb25dd5")
(setf (get robint_msgs::GetLocationNameListRequest :datatype-) "robint_msgs/GetLocationNameListRequest")
(setf (get robint_msgs::GetLocationNameListRequest :definition-)
      "---
LocationNameList[] name_list
bool success

================================================================================
MSG: robint_msgs/LocationNameList
string map_name
")

(setf (get robint_msgs::GetLocationNameListResponse :md5sum-) "bb2a629baa6b7acd53d72d954cb25dd5")
(setf (get robint_msgs::GetLocationNameListResponse :datatype-) "robint_msgs/GetLocationNameListResponse")
(setf (get robint_msgs::GetLocationNameListResponse :definition-)
      "---
LocationNameList[] name_list
bool success

================================================================================
MSG: robint_msgs/LocationNameList
string map_name
")



(provide :robint_msgs/GetLocationNameList "bb2a629baa6b7acd53d72d954cb25dd5")


