;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::GetCumulativeOdometry)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'GetCumulativeOdometry (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::GETCUMULATIVEODOMETRY")
  (make-package "ROBINT_MSGS::GETCUMULATIVEODOMETRY"))
(unless (find-package "ROBINT_MSGS::GETCUMULATIVEODOMETRYREQUEST")
  (make-package "ROBINT_MSGS::GETCUMULATIVEODOMETRYREQUEST"))
(unless (find-package "ROBINT_MSGS::GETCUMULATIVEODOMETRYRESPONSE")
  (make-package "ROBINT_MSGS::GETCUMULATIVEODOMETRYRESPONSE"))

(in-package "ROS")





(defclass robint_msgs::GetCumulativeOdometryRequest
  :super ros::object
  :slots ())

(defmethod robint_msgs::GetCumulativeOdometryRequest
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

(defclass robint_msgs::GetCumulativeOdometryResponse
  :super ros::object
  :slots (_cumulative_odometry _success _error_code ))

(defmethod robint_msgs::GetCumulativeOdometryResponse
  (:init
   (&key
    ((:cumulative_odometry __cumulative_odometry) 0.0)
    ((:success __success) nil)
    ((:error_code __error_code) 0)
    )
   (send-super :init)
   (setq _cumulative_odometry (float __cumulative_odometry))
   (setq _success __success)
   (setq _error_code (round __error_code))
   self)
  (:cumulative_odometry
   (&optional __cumulative_odometry)
   (if __cumulative_odometry (setq _cumulative_odometry __cumulative_odometry)) _cumulative_odometry)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:error_code
   (&optional __error_code)
   (if __error_code (setq _error_code __error_code)) _error_code)
  (:serialization-length
   ()
   (+
    ;; float64 _cumulative_odometry
    8
    ;; bool _success
    1
    ;; uint8 _error_code
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _cumulative_odometry
       (sys::poke _cumulative_odometry (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _error_code
       (write-byte _error_code s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _cumulative_odometry
     (setq _cumulative_odometry (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _error_code
     (setq _error_code (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass robint_msgs::GetCumulativeOdometry
  :super ros::object
  :slots ())

(setf (get robint_msgs::GetCumulativeOdometry :md5sum-) "b8e1fda0d1e61d098b773ec0b60c0116")
(setf (get robint_msgs::GetCumulativeOdometry :datatype-) "robint_msgs/GetCumulativeOdometry")
(setf (get robint_msgs::GetCumulativeOdometry :request) robint_msgs::GetCumulativeOdometryRequest)
(setf (get robint_msgs::GetCumulativeOdometry :response) robint_msgs::GetCumulativeOdometryResponse)

(defmethod robint_msgs::GetCumulativeOdometryRequest
  (:response () (instance robint_msgs::GetCumulativeOdometryResponse :init)))

(setf (get robint_msgs::GetCumulativeOdometryRequest :md5sum-) "b8e1fda0d1e61d098b773ec0b60c0116")
(setf (get robint_msgs::GetCumulativeOdometryRequest :datatype-) "robint_msgs/GetCumulativeOdometryRequest")
(setf (get robint_msgs::GetCumulativeOdometryRequest :definition-)
      "---
float64 cumulative_odometry
bool success
uint8 error_code
")

(setf (get robint_msgs::GetCumulativeOdometryResponse :md5sum-) "b8e1fda0d1e61d098b773ec0b60c0116")
(setf (get robint_msgs::GetCumulativeOdometryResponse :datatype-) "robint_msgs/GetCumulativeOdometryResponse")
(setf (get robint_msgs::GetCumulativeOdometryResponse :definition-)
      "---
float64 cumulative_odometry
bool success
uint8 error_code
")



(provide :robint_msgs/GetCumulativeOdometry "b8e1fda0d1e61d098b773ec0b60c0116")


