;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::MapState)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'MapState (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::MAPSTATE")
  (make-package "ROBINT_MSGS::MAPSTATE"))

(in-package "ROS")
;;//! \htmlinclude MapState.msg.html


(defclass robint_msgs::MapState
  :super ros::object
  :slots (_floor_id ))

(defmethod robint_msgs::MapState
  (:init
   (&key
    ((:floor_id __floor_id) 0)
    )
   (send-super :init)
   (setq _floor_id (round __floor_id))
   self)
  (:floor_id
   (&optional __floor_id)
   (if __floor_id (setq _floor_id __floor_id)) _floor_id)
  (:serialization-length
   ()
   (+
    ;; int32 _floor_id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _floor_id
       (write-long _floor_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _floor_id
     (setq _floor_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get robint_msgs::MapState :md5sum-) "91a758fc98f221cf5356ea3023ec3f39")
(setf (get robint_msgs::MapState :datatype-) "robint_msgs/MapState")
(setf (get robint_msgs::MapState :definition-)
      "int32 floor_id
")



(provide :robint_msgs/MapState "91a758fc98f221cf5356ea3023ec3f39")


