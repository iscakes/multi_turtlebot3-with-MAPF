;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::JoystickPanelStatus)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'JoystickPanelStatus (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::JOYSTICKPANELSTATUS")
  (make-package "ROBINT_MSGS::JOYSTICKPANELSTATUS"))

(in-package "ROS")
;;//! \htmlinclude JoystickPanelStatus.msg.html


(defclass robint_msgs::JoystickPanelStatus
  :super ros::object
  :slots (_stamp _joystick_trigger _key_return_home _key_speed_increase _key_speed_reduction _key_park_brake _key_whistle _mode _level _error_code ))

(defmethod robint_msgs::JoystickPanelStatus
  (:init
   (&key
    ((:stamp __stamp) (instance ros::time :init))
    ((:joystick_trigger __joystick_trigger) nil)
    ((:key_return_home __key_return_home) nil)
    ((:key_speed_increase __key_speed_increase) nil)
    ((:key_speed_reduction __key_speed_reduction) nil)
    ((:key_park_brake __key_park_brake) nil)
    ((:key_whistle __key_whistle) nil)
    ((:mode __mode) 0)
    ((:level __level) 0)
    ((:error_code __error_code) 0)
    )
   (send-super :init)
   (setq _stamp __stamp)
   (setq _joystick_trigger __joystick_trigger)
   (setq _key_return_home __key_return_home)
   (setq _key_speed_increase __key_speed_increase)
   (setq _key_speed_reduction __key_speed_reduction)
   (setq _key_park_brake __key_park_brake)
   (setq _key_whistle __key_whistle)
   (setq _mode (round __mode))
   (setq _level (round __level))
   (setq _error_code (round __error_code))
   self)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:joystick_trigger
   (&optional (__joystick_trigger :null))
   (if (not (eq __joystick_trigger :null)) (setq _joystick_trigger __joystick_trigger)) _joystick_trigger)
  (:key_return_home
   (&optional (__key_return_home :null))
   (if (not (eq __key_return_home :null)) (setq _key_return_home __key_return_home)) _key_return_home)
  (:key_speed_increase
   (&optional (__key_speed_increase :null))
   (if (not (eq __key_speed_increase :null)) (setq _key_speed_increase __key_speed_increase)) _key_speed_increase)
  (:key_speed_reduction
   (&optional (__key_speed_reduction :null))
   (if (not (eq __key_speed_reduction :null)) (setq _key_speed_reduction __key_speed_reduction)) _key_speed_reduction)
  (:key_park_brake
   (&optional (__key_park_brake :null))
   (if (not (eq __key_park_brake :null)) (setq _key_park_brake __key_park_brake)) _key_park_brake)
  (:key_whistle
   (&optional (__key_whistle :null))
   (if (not (eq __key_whistle :null)) (setq _key_whistle __key_whistle)) _key_whistle)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:level
   (&optional __level)
   (if __level (setq _level __level)) _level)
  (:error_code
   (&optional __error_code)
   (if __error_code (setq _error_code __error_code)) _error_code)
  (:serialization-length
   ()
   (+
    ;; time _stamp
    8
    ;; bool _joystick_trigger
    1
    ;; bool _key_return_home
    1
    ;; bool _key_speed_increase
    1
    ;; bool _key_speed_reduction
    1
    ;; bool _key_park_brake
    1
    ;; bool _key_whistle
    1
    ;; uint8 _mode
    1
    ;; uint8 _level
    1
    ;; uint8 _error_code
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; bool _joystick_trigger
       (if _joystick_trigger (write-byte -1 s) (write-byte 0 s))
     ;; bool _key_return_home
       (if _key_return_home (write-byte -1 s) (write-byte 0 s))
     ;; bool _key_speed_increase
       (if _key_speed_increase (write-byte -1 s) (write-byte 0 s))
     ;; bool _key_speed_reduction
       (if _key_speed_reduction (write-byte -1 s) (write-byte 0 s))
     ;; bool _key_park_brake
       (if _key_park_brake (write-byte -1 s) (write-byte 0 s))
     ;; bool _key_whistle
       (if _key_whistle (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _mode
       (write-byte _mode s)
     ;; uint8 _level
       (write-byte _level s)
     ;; uint8 _error_code
       (write-byte _error_code s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _joystick_trigger
     (setq _joystick_trigger (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _key_return_home
     (setq _key_return_home (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _key_speed_increase
     (setq _key_speed_increase (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _key_speed_reduction
     (setq _key_speed_reduction (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _key_park_brake
     (setq _key_park_brake (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _key_whistle
     (setq _key_whistle (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _level
     (setq _level (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _error_code
     (setq _error_code (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get robint_msgs::JoystickPanelStatus :md5sum-) "b7f32ae109c05e77fb5790ce1aa37191")
(setf (get robint_msgs::JoystickPanelStatus :datatype-) "robint_msgs/JoystickPanelStatus")
(setf (get robint_msgs::JoystickPanelStatus :definition-)
      "time stamp
bool joystick_trigger
bool key_return_home
bool key_speed_increase
bool key_speed_reduction
bool key_park_brake
bool key_whistle
uint8 mode # 0: P档; 1: 手动; 2: 自动
uint8 level
uint8 error_code
")



(provide :robint_msgs/JoystickPanelStatus "b7f32ae109c05e77fb5790ce1aa37191")


