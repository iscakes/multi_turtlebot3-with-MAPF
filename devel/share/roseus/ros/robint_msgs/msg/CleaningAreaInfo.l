;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::CleaningAreaInfo)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'CleaningAreaInfo (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::CLEANINGAREAINFO")
  (make-package "ROBINT_MSGS::CLEANINGAREAINFO"))

(in-package "ROS")
;;//! \htmlinclude CleaningAreaInfo.msg.html


(defclass robint_msgs::CleaningAreaInfo
  :super ros::object
  :slots (_uuid _name _map_uuid _group_uuid _area ))

(defmethod robint_msgs::CleaningAreaInfo
  (:init
   (&key
    ((:uuid __uuid) "")
    ((:name __name) "")
    ((:map_uuid __map_uuid) "")
    ((:group_uuid __group_uuid) "")
    ((:area __area) 0.0)
    )
   (send-super :init)
   (setq _uuid (string __uuid))
   (setq _name (string __name))
   (setq _map_uuid (string __map_uuid))
   (setq _group_uuid (string __group_uuid))
   (setq _area (float __area))
   self)
  (:uuid
   (&optional __uuid)
   (if __uuid (setq _uuid __uuid)) _uuid)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:map_uuid
   (&optional __map_uuid)
   (if __map_uuid (setq _map_uuid __map_uuid)) _map_uuid)
  (:group_uuid
   (&optional __group_uuid)
   (if __group_uuid (setq _group_uuid __group_uuid)) _group_uuid)
  (:area
   (&optional __area)
   (if __area (setq _area __area)) _area)
  (:serialization-length
   ()
   (+
    ;; string _uuid
    4 (length _uuid)
    ;; string _name
    4 (length _name)
    ;; string _map_uuid
    4 (length _map_uuid)
    ;; string _group_uuid
    4 (length _group_uuid)
    ;; float32 _area
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _uuid
       (write-long (length _uuid) s) (princ _uuid s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _map_uuid
       (write-long (length _map_uuid) s) (princ _map_uuid s)
     ;; string _group_uuid
       (write-long (length _group_uuid) s) (princ _group_uuid s)
     ;; float32 _area
       (sys::poke _area (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _uuid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _uuid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _map_uuid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _map_uuid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _group_uuid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _group_uuid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _area
     (setq _area (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get robint_msgs::CleaningAreaInfo :md5sum-) "44deeac11f18e06ad9c20de2970c1c5d")
(setf (get robint_msgs::CleaningAreaInfo :datatype-) "robint_msgs/CleaningAreaInfo")
(setf (get robint_msgs::CleaningAreaInfo :definition-)
      "string uuid
string name
string map_uuid
string group_uuid
float32 area  # m * m
")



(provide :robint_msgs/CleaningAreaInfo "44deeac11f18e06ad9c20de2970c1c5d")


