;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::RangeArray)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'RangeArray (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::RANGEARRAY")
  (make-package "ROBINT_MSGS::RANGEARRAY"))

(in-package "ROS")
;;//! \htmlinclude RangeArray.msg.html
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass robint_msgs::RangeArray
  :super ros::object
  :slots (_range_array ))

(defmethod robint_msgs::RangeArray
  (:init
   (&key
    ((:range_array __range_array) ())
    )
   (send-super :init)
   (setq _range_array __range_array)
   self)
  (:range_array
   (&rest __range_array)
   (if (keywordp (car __range_array))
       (send* _range_array __range_array)
     (progn
       (if __range_array (setq _range_array (car __range_array)))
       _range_array)))
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/Range[] _range_array
    (apply #'+ (send-all _range_array :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/Range[] _range_array
     (write-long (length _range_array) s)
     (dolist (elem _range_array)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/Range[] _range_array
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _range_array (let (r) (dotimes (i n) (push (instance sensor_msgs::Range :init) r)) r))
     (dolist (elem- _range_array)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get robint_msgs::RangeArray :md5sum-) "c5df1e2f6799bc6666050913a630470c")
(setf (get robint_msgs::RangeArray :datatype-) "robint_msgs/RangeArray")
(setf (get robint_msgs::RangeArray :definition-)
      "sensor_msgs/Range[] range_array
================================================================================
MSG: sensor_msgs/Range
# Single range reading from an active ranger that emits energy and reports
# one range reading that is valid along an arc at the distance measured. 
# This message is  not appropriate for laser scanners. See the LaserScan
# message if you are working with a laser scanner.

# This message also can represent a fixed-distance (binary) ranger.  This
# sensor will have min_range===max_range===distance of detection.
# These sensors follow REP 117 and will output -Inf if the object is detected
# and +Inf if the object is outside of the detection range.

Header header           # timestamp in the header is the time the ranger
                        # returned the distance reading

# Radiation type enums
# If you want a value added to this list, send an email to the ros-users list
uint8 ULTRASOUND=0
uint8 INFRARED=1

uint8 radiation_type    # the type of radiation used by the sensor
                        # (sound, IR, etc) [enum]

float32 field_of_view   # the size of the arc that the distance reading is
                        # valid for [rad]
                        # the object causing the range reading may have
                        # been anywhere within -field_of_view/2 and
                        # field_of_view/2 at the measured range. 
                        # 0 angle corresponds to the x-axis of the sensor.

float32 min_range       # minimum range value [m]
float32 max_range       # maximum range value [m]
                        # Fixed distance rangers require min_range==max_range

float32 range           # range data [m]
                        # (Note: values < range_min or > range_max
                        # should be discarded)
                        # Fixed distance rangers only output -Inf or +Inf.
                        # -Inf represents a detection within fixed distance.
                        # (Detection too close to the sensor to quantify)
                        # +Inf represents no detection within the fixed distance.
                        # (Object out of range)
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :robint_msgs/RangeArray "c5df1e2f6799bc6666050913a630470c")


