;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::GetImageBase64List)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'GetImageBase64List (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::GETIMAGEBASE64LIST")
  (make-package "ROBINT_MSGS::GETIMAGEBASE64LIST"))
(unless (find-package "ROBINT_MSGS::GETIMAGEBASE64LISTREQUEST")
  (make-package "ROBINT_MSGS::GETIMAGEBASE64LISTREQUEST"))
(unless (find-package "ROBINT_MSGS::GETIMAGEBASE64LISTRESPONSE")
  (make-package "ROBINT_MSGS::GETIMAGEBASE64LISTRESPONSE"))

(in-package "ROS")





(defclass robint_msgs::GetImageBase64ListRequest
  :super ros::object
  :slots (_topic ))

(defmethod robint_msgs::GetImageBase64ListRequest
  (:init
   (&key
    ((:topic __topic) "")
    )
   (send-super :init)
   (setq _topic (string __topic))
   self)
  (:topic
   (&optional __topic)
   (if __topic (setq _topic __topic)) _topic)
  (:serialization-length
   ()
   (+
    ;; string _topic
    4 (length _topic)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _topic
       (write-long (length _topic) s) (princ _topic s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _topic
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _topic (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robint_msgs::GetImageBase64ListResponse
  :super ros::object
  :slots (_image_list _error_code _success ))

(defmethod robint_msgs::GetImageBase64ListResponse
  (:init
   (&key
    ((:image_list __image_list) ())
    ((:error_code __error_code) 0)
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _image_list __image_list)
   (setq _error_code (round __error_code))
   (setq _success __success)
   self)
  (:image_list
   (&rest __image_list)
   (if (keywordp (car __image_list))
       (send* _image_list __image_list)
     (progn
       (if __image_list (setq _image_list (car __image_list)))
       _image_list)))
  (:error_code
   (&optional __error_code)
   (if __error_code (setq _error_code __error_code)) _error_code)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; robint_msgs/ImageInfo[] _image_list
    (apply #'+ (send-all _image_list :serialization-length)) 4
    ;; uint8 _error_code
    1
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; robint_msgs/ImageInfo[] _image_list
     (write-long (length _image_list) s)
     (dolist (elem _image_list)
       (send elem :serialize s)
       )
     ;; uint8 _error_code
       (write-byte _error_code s)
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; robint_msgs/ImageInfo[] _image_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _image_list (let (r) (dotimes (i n) (push (instance robint_msgs::ImageInfo :init) r)) r))
     (dolist (elem- _image_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; uint8 _error_code
     (setq _error_code (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass robint_msgs::GetImageBase64List
  :super ros::object
  :slots ())

(setf (get robint_msgs::GetImageBase64List :md5sum-) "7a44e79635d748554f2c54085f25c3d0")
(setf (get robint_msgs::GetImageBase64List :datatype-) "robint_msgs/GetImageBase64List")
(setf (get robint_msgs::GetImageBase64List :request) robint_msgs::GetImageBase64ListRequest)
(setf (get robint_msgs::GetImageBase64List :response) robint_msgs::GetImageBase64ListResponse)

(defmethod robint_msgs::GetImageBase64ListRequest
  (:response () (instance robint_msgs::GetImageBase64ListResponse :init)))

(setf (get robint_msgs::GetImageBase64ListRequest :md5sum-) "7a44e79635d748554f2c54085f25c3d0")
(setf (get robint_msgs::GetImageBase64ListRequest :datatype-) "robint_msgs/GetImageBase64ListRequest")
(setf (get robint_msgs::GetImageBase64ListRequest :definition-)
      "string topic
---
ImageInfo[] image_list
uint8 error_code
bool success

================================================================================
MSG: robint_msgs/ImageInfo
string id
string base64
")

(setf (get robint_msgs::GetImageBase64ListResponse :md5sum-) "7a44e79635d748554f2c54085f25c3d0")
(setf (get robint_msgs::GetImageBase64ListResponse :datatype-) "robint_msgs/GetImageBase64ListResponse")
(setf (get robint_msgs::GetImageBase64ListResponse :definition-)
      "string topic
---
ImageInfo[] image_list
uint8 error_code
bool success

================================================================================
MSG: robint_msgs/ImageInfo
string id
string base64
")



(provide :robint_msgs/GetImageBase64List "7a44e79635d748554f2c54085f25c3d0")


