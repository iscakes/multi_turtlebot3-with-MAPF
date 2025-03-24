;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::LocationNameList)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'LocationNameList (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::LOCATIONNAMELIST")
  (make-package "ROBINT_MSGS::LOCATIONNAMELIST"))

(in-package "ROS")
;;//! \htmlinclude LocationNameList.msg.html


(defclass robint_msgs::LocationNameList
  :super ros::object
  :slots (_map_name _name_list ))

(defmethod robint_msgs::LocationNameList
  (:init
   (&key
    ((:map_name __map_name) "")
    ((:name_list __name_list) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _map_name (string __map_name))
   (setq _name_list __name_list)
   self)
  (:map_name
   (&optional __map_name)
   (if __map_name (setq _map_name __map_name)) _map_name)
  (:name_list
   (&optional __name_list)
   (if __name_list (setq _name_list __name_list)) _name_list)
  (:serialization-length
   ()
   (+
    ;; string _map_name
    4 (length _map_name)
    ;; string[] _name_list
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _name_list)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _map_name
       (write-long (length _map_name) s) (princ _map_name s)
     ;; string[] _name_list
     (write-long (length _name_list) s)
     (dolist (elem _name_list)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _map_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _map_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string[] _name_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _name_list (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _name_list i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(setf (get robint_msgs::LocationNameList :md5sum-) "4abada7477d6585d3a5e3ad147613d60")
(setf (get robint_msgs::LocationNameList :datatype-) "robint_msgs/LocationNameList")
(setf (get robint_msgs::LocationNameList :definition-)
      "string map_name
string[] name_list
")



(provide :robint_msgs/LocationNameList "4abada7477d6585d3a5e3ad147613d60")


