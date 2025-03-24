;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::SetLedParams)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'SetLedParams (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::SETLEDPARAMS")
  (make-package "ROBINT_MSGS::SETLEDPARAMS"))
(unless (find-package "ROBINT_MSGS::SETLEDPARAMSREQUEST")
  (make-package "ROBINT_MSGS::SETLEDPARAMSREQUEST"))
(unless (find-package "ROBINT_MSGS::SETLEDPARAMSRESPONSE")
  (make-package "ROBINT_MSGS::SETLEDPARAMSRESPONSE"))

(in-package "ROS")





(defclass robint_msgs::SetLedParamsRequest
  :super ros::object
  :slots (_red _green _blue _rgb _brightness _mode _speed ))

(defmethod robint_msgs::SetLedParamsRequest
  (:init
   (&key
    ((:red __red) 0)
    ((:green __green) 0)
    ((:blue __blue) 0)
    ((:rgb __rgb) 0)
    ((:brightness __brightness) 0)
    ((:mode __mode) 0)
    ((:speed __speed) 0)
    )
   (send-super :init)
   (setq _red (round __red))
   (setq _green (round __green))
   (setq _blue (round __blue))
   (setq _rgb (round __rgb))
   (setq _brightness (round __brightness))
   (setq _mode (round __mode))
   (setq _speed (round __speed))
   self)
  (:red
   (&optional __red)
   (if __red (setq _red __red)) _red)
  (:green
   (&optional __green)
   (if __green (setq _green __green)) _green)
  (:blue
   (&optional __blue)
   (if __blue (setq _blue __blue)) _blue)
  (:rgb
   (&optional __rgb)
   (if __rgb (setq _rgb __rgb)) _rgb)
  (:brightness
   (&optional __brightness)
   (if __brightness (setq _brightness __brightness)) _brightness)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:serialization-length
   ()
   (+
    ;; uint8 _red
    1
    ;; uint8 _green
    1
    ;; uint8 _blue
    1
    ;; uint32 _rgb
    4
    ;; uint32 _brightness
    4
    ;; uint32 _mode
    4
    ;; uint32 _speed
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _red
       (write-byte _red s)
     ;; uint8 _green
       (write-byte _green s)
     ;; uint8 _blue
       (write-byte _blue s)
     ;; uint32 _rgb
       (write-long _rgb s)
     ;; uint32 _brightness
       (write-long _brightness s)
     ;; uint32 _mode
       (write-long _mode s)
     ;; uint32 _speed
       (write-long _speed s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _red
     (setq _red (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _green
     (setq _green (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _blue
     (setq _blue (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint32 _rgb
     (setq _rgb (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _brightness
     (setq _brightness (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _mode
     (setq _mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _speed
     (setq _speed (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass robint_msgs::SetLedParamsResponse
  :super ros::object
  :slots (_success ))

(defmethod robint_msgs::SetLedParamsResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass robint_msgs::SetLedParams
  :super ros::object
  :slots ())

(setf (get robint_msgs::SetLedParams :md5sum-) "8ee2fcdcc512eade49a305e79b9688d9")
(setf (get robint_msgs::SetLedParams :datatype-) "robint_msgs/SetLedParams")
(setf (get robint_msgs::SetLedParams :request) robint_msgs::SetLedParamsRequest)
(setf (get robint_msgs::SetLedParams :response) robint_msgs::SetLedParamsResponse)

(defmethod robint_msgs::SetLedParamsRequest
  (:response () (instance robint_msgs::SetLedParamsResponse :init)))

(setf (get robint_msgs::SetLedParamsRequest :md5sum-) "8ee2fcdcc512eade49a305e79b9688d9")
(setf (get robint_msgs::SetLedParamsRequest :datatype-) "robint_msgs/SetLedParamsRequest")
(setf (get robint_msgs::SetLedParamsRequest :definition-)
      "# /*
#  * # LED控制
#  * ## b 亮度 [0-255], 不允许设置 10 ('\\n')!!!
#  * ## s 速度 [11,16959], 越小越快，初始化默认1000
#  * ## c 颜色 [0x000000,0xFFFFFF], 初始化白色0xFFFFFF
#  * ## m 模式 [0-55]
#  * * 0: 静态单色
#  * * 12: 彩虹全彩转圈Rainbow Cycle
#  * * 3: 转圈color wipe
#  * * 44: 彗星尾巴Comet
#  * */

uint8 red
uint8 green
uint8 blue
uint32 rgb
uint32 brightness
uint32 mode
uint32 speed
---
bool success
")

(setf (get robint_msgs::SetLedParamsResponse :md5sum-) "8ee2fcdcc512eade49a305e79b9688d9")
(setf (get robint_msgs::SetLedParamsResponse :datatype-) "robint_msgs/SetLedParamsResponse")
(setf (get robint_msgs::SetLedParamsResponse :definition-)
      "# /*
#  * # LED控制
#  * ## b 亮度 [0-255], 不允许设置 10 ('\\n')!!!
#  * ## s 速度 [11,16959], 越小越快，初始化默认1000
#  * ## c 颜色 [0x000000,0xFFFFFF], 初始化白色0xFFFFFF
#  * ## m 模式 [0-55]
#  * * 0: 静态单色
#  * * 12: 彩虹全彩转圈Rainbow Cycle
#  * * 3: 转圈color wipe
#  * * 44: 彗星尾巴Comet
#  * */

uint8 red
uint8 green
uint8 blue
uint32 rgb
uint32 brightness
uint32 mode
uint32 speed
---
bool success
")



(provide :robint_msgs/SetLedParams "8ee2fcdcc512eade49a305e79b9688d9")


