;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::RobotStatisticData)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'RobotStatisticData (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::ROBOTSTATISTICDATA")
  (make-package "ROBINT_MSGS::ROBOTSTATISTICDATA"))

(in-package "ROS")
;;//! \htmlinclude RobotStatisticData.msg.html


(defclass robint_msgs::RobotStatisticData
  :super ros::object
  :slots (_travel_mileage ))

(defmethod robint_msgs::RobotStatisticData
  (:init
   (&key
    ((:travel_mileage __travel_mileage) 0)
    )
   (send-super :init)
   (setq _travel_mileage (round __travel_mileage))
   self)
  (:travel_mileage
   (&optional __travel_mileage)
   (if __travel_mileage (setq _travel_mileage __travel_mileage)) _travel_mileage)
  (:serialization-length
   ()
   (+
    ;; uint64 _travel_mileage
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint64 _travel_mileage
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _travel_mileage (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _travel_mileage) (= (length (_travel_mileage . bv)) 2)) ;; bignum
              (write-long (ash (elt (_travel_mileage . bv) 0) 0) s)
              (write-long (ash (elt (_travel_mileage . bv) 1) -1) s))
             ((and (class _travel_mileage) (= (length (_travel_mileage . bv)) 1)) ;; big1
              (write-long (elt (_travel_mileage . bv) 0) s)
              (write-long (if (>= _travel_mileage 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _travel_mileage s)(write-long (if (>= _travel_mileage 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint64 _travel_mileage
     
#+(or :alpha :irix6 :x86_64)
      (setf _travel_mileage (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _travel_mileage (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(setf (get robint_msgs::RobotStatisticData :md5sum-) "2895568322646d2b22600ac707f3da07")
(setf (get robint_msgs::RobotStatisticData :datatype-) "robint_msgs/RobotStatisticData")
(setf (get robint_msgs::RobotStatisticData :definition-)
      "uint64 travel_mileage
")



(provide :robint_msgs/RobotStatisticData "2895568322646d2b22600ac707f3da07")


