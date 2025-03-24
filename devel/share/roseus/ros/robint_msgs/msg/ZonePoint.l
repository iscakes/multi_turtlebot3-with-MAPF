;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::ZonePoint)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'ZonePoint (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::ZONEPOINT")
  (make-package "ROBINT_MSGS::ZONEPOINT"))

(in-package "ROS")
;;//! \htmlinclude ZonePoint.msg.html


(defclass robint_msgs::ZonePoint
  :super ros::object
  :slots (_x _y _uuid _name ))

(defmethod robint_msgs::ZonePoint
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:uuid __uuid) "")
    ((:name __name) "")
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _uuid (string __uuid))
   (setq _name (string __name))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:uuid
   (&optional __uuid)
   (if __uuid (setq _uuid __uuid)) _uuid)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:serialization-length
   ()
   (+
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; string _uuid
    4 (length _uuid)
    ;; string _name
    4 (length _name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _uuid
       (write-long (length _uuid) s) (princ _uuid s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _uuid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _uuid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get robint_msgs::ZonePoint :md5sum-) "b27b9562e7f1dbf72e41a428e9367651")
(setf (get robint_msgs::ZonePoint :datatype-) "robint_msgs/ZonePoint")
(setf (get robint_msgs::ZonePoint :definition-)
      "float32 x
float32 y
string uuid
string name
")



(provide :robint_msgs/ZonePoint "b27b9562e7f1dbf72e41a428e9367651")


