;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::LedControl)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'LedControl (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::LEDCONTROL")
  (make-package "ROBINT_MSGS::LEDCONTROL"))

(in-package "ROS")
;;//! \htmlinclude LedControl.msg.html


(defclass robint_msgs::LedControl
  :super ros::object
  :slots (_red _green _blue _rgb _brightness _mode _speed ))

(defmethod robint_msgs::LedControl
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
    ;; uint8 _brightness
    1
    ;; uint8 _mode
    1
    ;; uint16 _speed
    2
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
     ;; uint8 _brightness
       (write-byte _brightness s)
     ;; uint8 _mode
       (write-byte _mode s)
     ;; uint16 _speed
       (write-word _speed s)
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
   ;; uint8 _brightness
     (setq _brightness (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _speed
     (setq _speed (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get robint_msgs::LedControl :md5sum-) "6af3c075d10c39ecc03ad496b71b72ec")
(setf (get robint_msgs::LedControl :datatype-) "robint_msgs/LedControl")
(setf (get robint_msgs::LedControl :definition-)
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
uint8 brightness
uint8 mode
uint16 speed

")



(provide :robint_msgs/LedControl "6af3c075d10c39ecc03ad496b71b72ec")


