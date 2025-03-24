;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::ImageInfo)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'ImageInfo (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::IMAGEINFO")
  (make-package "ROBINT_MSGS::IMAGEINFO"))

(in-package "ROS")
;;//! \htmlinclude ImageInfo.msg.html


(defclass robint_msgs::ImageInfo
  :super ros::object
  :slots (_id _base64 _format ))

(defmethod robint_msgs::ImageInfo
  (:init
   (&key
    ((:id __id) "")
    ((:base64 __base64) "")
    ((:format __format) "")
    )
   (send-super :init)
   (setq _id (string __id))
   (setq _base64 (string __base64))
   (setq _format (string __format))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:base64
   (&optional __base64)
   (if __base64 (setq _base64 __base64)) _base64)
  (:format
   (&optional __format)
   (if __format (setq _format __format)) _format)
  (:serialization-length
   ()
   (+
    ;; string _id
    4 (length _id)
    ;; string _base64
    4 (length _base64)
    ;; string _format
    4 (length _format)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _id
       (write-long (length _id) s) (princ _id s)
     ;; string _base64
       (write-long (length _base64) s) (princ _base64 s)
     ;; string _format
       (write-long (length _format) s) (princ _format s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _base64
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _base64 (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _format
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _format (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get robint_msgs::ImageInfo :md5sum-) "ec708a88adeb2d16cf2e489c284cf4e3")
(setf (get robint_msgs::ImageInfo :datatype-) "robint_msgs/ImageInfo")
(setf (get robint_msgs::ImageInfo :definition-)
      "string id
string base64
string format
")



(provide :robint_msgs/ImageInfo "ec708a88adeb2d16cf2e489c284cf4e3")


