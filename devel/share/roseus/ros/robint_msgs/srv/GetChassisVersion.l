;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::GetChassisVersion)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'GetChassisVersion (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::GETCHASSISVERSION")
  (make-package "ROBINT_MSGS::GETCHASSISVERSION"))
(unless (find-package "ROBINT_MSGS::GETCHASSISVERSIONREQUEST")
  (make-package "ROBINT_MSGS::GETCHASSISVERSIONREQUEST"))
(unless (find-package "ROBINT_MSGS::GETCHASSISVERSIONRESPONSE")
  (make-package "ROBINT_MSGS::GETCHASSISVERSIONRESPONSE"))

(in-package "ROS")





(defclass robint_msgs::GetChassisVersionRequest
  :super ros::object
  :slots ())

(defmethod robint_msgs::GetChassisVersionRequest
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

(defclass robint_msgs::GetChassisVersionResponse
  :super ros::object
  :slots (_chassis_hardware_version _driver_hardware_version _chassis_software_version _driver_software_version _success _error_code ))

(defmethod robint_msgs::GetChassisVersionResponse
  (:init
   (&key
    ((:chassis_hardware_version __chassis_hardware_version) "")
    ((:driver_hardware_version __driver_hardware_version) "")
    ((:chassis_software_version __chassis_software_version) "")
    ((:driver_software_version __driver_software_version) "")
    ((:success __success) nil)
    ((:error_code __error_code) 0)
    )
   (send-super :init)
   (setq _chassis_hardware_version (string __chassis_hardware_version))
   (setq _driver_hardware_version (string __driver_hardware_version))
   (setq _chassis_software_version (string __chassis_software_version))
   (setq _driver_software_version (string __driver_software_version))
   (setq _success __success)
   (setq _error_code (round __error_code))
   self)
  (:chassis_hardware_version
   (&optional __chassis_hardware_version)
   (if __chassis_hardware_version (setq _chassis_hardware_version __chassis_hardware_version)) _chassis_hardware_version)
  (:driver_hardware_version
   (&optional __driver_hardware_version)
   (if __driver_hardware_version (setq _driver_hardware_version __driver_hardware_version)) _driver_hardware_version)
  (:chassis_software_version
   (&optional __chassis_software_version)
   (if __chassis_software_version (setq _chassis_software_version __chassis_software_version)) _chassis_software_version)
  (:driver_software_version
   (&optional __driver_software_version)
   (if __driver_software_version (setq _driver_software_version __driver_software_version)) _driver_software_version)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:error_code
   (&optional __error_code)
   (if __error_code (setq _error_code __error_code)) _error_code)
  (:serialization-length
   ()
   (+
    ;; string _chassis_hardware_version
    4 (length _chassis_hardware_version)
    ;; string _driver_hardware_version
    4 (length _driver_hardware_version)
    ;; string _chassis_software_version
    4 (length _chassis_software_version)
    ;; string _driver_software_version
    4 (length _driver_software_version)
    ;; bool _success
    1
    ;; uint8 _error_code
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _chassis_hardware_version
       (write-long (length _chassis_hardware_version) s) (princ _chassis_hardware_version s)
     ;; string _driver_hardware_version
       (write-long (length _driver_hardware_version) s) (princ _driver_hardware_version s)
     ;; string _chassis_software_version
       (write-long (length _chassis_software_version) s) (princ _chassis_software_version s)
     ;; string _driver_software_version
       (write-long (length _driver_software_version) s) (princ _driver_software_version s)
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _error_code
       (write-byte _error_code s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _chassis_hardware_version
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _chassis_hardware_version (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _driver_hardware_version
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _driver_hardware_version (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _chassis_software_version
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _chassis_software_version (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _driver_software_version
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _driver_software_version (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _error_code
     (setq _error_code (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass robint_msgs::GetChassisVersion
  :super ros::object
  :slots ())

(setf (get robint_msgs::GetChassisVersion :md5sum-) "3451500d4b57390d32336828695f590f")
(setf (get robint_msgs::GetChassisVersion :datatype-) "robint_msgs/GetChassisVersion")
(setf (get robint_msgs::GetChassisVersion :request) robint_msgs::GetChassisVersionRequest)
(setf (get robint_msgs::GetChassisVersion :response) robint_msgs::GetChassisVersionResponse)

(defmethod robint_msgs::GetChassisVersionRequest
  (:response () (instance robint_msgs::GetChassisVersionResponse :init)))

(setf (get robint_msgs::GetChassisVersionRequest :md5sum-) "3451500d4b57390d32336828695f590f")
(setf (get robint_msgs::GetChassisVersionRequest :datatype-) "robint_msgs/GetChassisVersionRequest")
(setf (get robint_msgs::GetChassisVersionRequest :definition-)
      "---
string chassis_hardware_version
string driver_hardware_version
string chassis_software_version
string driver_software_version
bool success
uint8 error_code
")

(setf (get robint_msgs::GetChassisVersionResponse :md5sum-) "3451500d4b57390d32336828695f590f")
(setf (get robint_msgs::GetChassisVersionResponse :datatype-) "robint_msgs/GetChassisVersionResponse")
(setf (get robint_msgs::GetChassisVersionResponse :definition-)
      "---
string chassis_hardware_version
string driver_hardware_version
string chassis_software_version
string driver_software_version
bool success
uint8 error_code
")



(provide :robint_msgs/GetChassisVersion "3451500d4b57390d32336828695f590f")


