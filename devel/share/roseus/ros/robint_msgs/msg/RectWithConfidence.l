;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::RectWithConfidence)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'RectWithConfidence (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::RECTWITHCONFIDENCE")
  (make-package "ROBINT_MSGS::RECTWITHCONFIDENCE"))

(in-package "ROS")
;;//! \htmlinclude RectWithConfidence.msg.html


(defclass robint_msgs::RectWithConfidence
  :super ros::object
  :slots (_x _y _width _height _confidence ))

(defmethod robint_msgs::RectWithConfidence
  (:init
   (&key
    ((:x __x) 0)
    ((:y __y) 0)
    ((:width __width) 0)
    ((:height __height) 0)
    ((:confidence __confidence) 0.0)
    )
   (send-super :init)
   (setq _x (round __x))
   (setq _y (round __y))
   (setq _width (round __width))
   (setq _height (round __height))
   (setq _confidence (float __confidence))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:confidence
   (&optional __confidence)
   (if __confidence (setq _confidence __confidence)) _confidence)
  (:serialization-length
   ()
   (+
    ;; int32 _x
    4
    ;; int32 _y
    4
    ;; int32 _width
    4
    ;; int32 _height
    4
    ;; float32 _confidence
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _x
       (write-long _x s)
     ;; int32 _y
       (write-long _y s)
     ;; int32 _width
       (write-long _width s)
     ;; int32 _height
       (write-long _height s)
     ;; float32 _confidence
       (sys::poke _confidence (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _x
     (setq _x (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _y
     (setq _y (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _width
     (setq _width (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _height
     (setq _height (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _confidence
     (setq _confidence (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get robint_msgs::RectWithConfidence :md5sum-) "3d9976813d287f1ad2ce9a5d45ace1cd")
(setf (get robint_msgs::RectWithConfidence :datatype-) "robint_msgs/RectWithConfidence")
(setf (get robint_msgs::RectWithConfidence :definition-)
      "int32 x
int32 y
int32 width
int32 height
float32 confidence

")



(provide :robint_msgs/RectWithConfidence "3d9976813d287f1ad2ce9a5d45ace1cd")


