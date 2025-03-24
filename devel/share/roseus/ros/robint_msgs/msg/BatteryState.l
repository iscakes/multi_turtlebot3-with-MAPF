;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::BatteryState)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'BatteryState (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::BATTERYSTATE")
  (make-package "ROBINT_MSGS::BATTERYSTATE"))

(in-package "ROS")
;;//! \htmlinclude BatteryState.msg.html


(intern "*UBAT_ERR_NULL*" (find-package "ROBINT_MSGS::BATTERYSTATE"))
(shadow '*UBAT_ERR_NULL* (find-package "ROBINT_MSGS::BATTERYSTATE"))
(defconstant robint_msgs::BatteryState::*UBAT_ERR_NULL* 0)
(intern "*UBAT_ERR_CHARGER_OVRE_CURRENT*" (find-package "ROBINT_MSGS::BATTERYSTATE"))
(shadow '*UBAT_ERR_CHARGER_OVRE_CURRENT* (find-package "ROBINT_MSGS::BATTERYSTATE"))
(defconstant robint_msgs::BatteryState::*UBAT_ERR_CHARGER_OVRE_CURRENT* 1)
(intern "*UBAT_ERR_DISCHARGE_OVRE_CURRENT*" (find-package "ROBINT_MSGS::BATTERYSTATE"))
(shadow '*UBAT_ERR_DISCHARGE_OVRE_CURRENT* (find-package "ROBINT_MSGS::BATTERYSTATE"))
(defconstant robint_msgs::BatteryState::*UBAT_ERR_DISCHARGE_OVRE_CURRENT* 2)
(intern "*UBAT_ERR_SHORT_CIRCUIT*" (find-package "ROBINT_MSGS::BATTERYSTATE"))
(shadow '*UBAT_ERR_SHORT_CIRCUIT* (find-package "ROBINT_MSGS::BATTERYSTATE"))
(defconstant robint_msgs::BatteryState::*UBAT_ERR_SHORT_CIRCUIT* 3)
(intern "*UBAT_ERR_CELL_OPEN_CIRCUIT*" (find-package "ROBINT_MSGS::BATTERYSTATE"))
(shadow '*UBAT_ERR_CELL_OPEN_CIRCUIT* (find-package "ROBINT_MSGS::BATTERYSTATE"))
(defconstant robint_msgs::BatteryState::*UBAT_ERR_CELL_OPEN_CIRCUIT* 4)
(intern "*UBAT_ERR_TEMP_NTC_OPEN_CIRCUIT*" (find-package "ROBINT_MSGS::BATTERYSTATE"))
(shadow '*UBAT_ERR_TEMP_NTC_OPEN_CIRCUIT* (find-package "ROBINT_MSGS::BATTERYSTATE"))
(defconstant robint_msgs::BatteryState::*UBAT_ERR_TEMP_NTC_OPEN_CIRCUIT* 5)
(intern "*UBAT_ERR_CELL_OVER_VOLTAGEM*" (find-package "ROBINT_MSGS::BATTERYSTATE"))
(shadow '*UBAT_ERR_CELL_OVER_VOLTAGEM* (find-package "ROBINT_MSGS::BATTERYSTATE"))
(defconstant robint_msgs::BatteryState::*UBAT_ERR_CELL_OVER_VOLTAGEM* 6)
(intern "*UBAT_ERR_CELL_UNDER_VOLTAGE*" (find-package "ROBINT_MSGS::BATTERYSTATE"))
(shadow '*UBAT_ERR_CELL_UNDER_VOLTAGE* (find-package "ROBINT_MSGS::BATTERYSTATE"))
(defconstant robint_msgs::BatteryState::*UBAT_ERR_CELL_UNDER_VOLTAGE* 7)
(intern "*UBAT_ERR_ALL_OVER_VOLTAGE*" (find-package "ROBINT_MSGS::BATTERYSTATE"))
(shadow '*UBAT_ERR_ALL_OVER_VOLTAGE* (find-package "ROBINT_MSGS::BATTERYSTATE"))
(defconstant robint_msgs::BatteryState::*UBAT_ERR_ALL_OVER_VOLTAGE* 8)
(intern "*UBAT_ERR_ALL_UNDER_VOLTAGE*" (find-package "ROBINT_MSGS::BATTERYSTATE"))
(shadow '*UBAT_ERR_ALL_UNDER_VOLTAGE* (find-package "ROBINT_MSGS::BATTERYSTATE"))
(defconstant robint_msgs::BatteryState::*UBAT_ERR_ALL_UNDER_VOLTAGE* 9)
(intern "*UBAT_ERR_CELL_TEMP_OVER_CHARGE_TEMP_UPPER_LIMIT*" (find-package "ROBINT_MSGS::BATTERYSTATE"))
(shadow '*UBAT_ERR_CELL_TEMP_OVER_CHARGE_TEMP_UPPER_LIMIT* (find-package "ROBINT_MSGS::BATTERYSTATE"))
(defconstant robint_msgs::BatteryState::*UBAT_ERR_CELL_TEMP_OVER_CHARGE_TEMP_UPPER_LIMIT* 10)
(intern "*UBAT_ERR_CELL_TEMP_OVER_DISCHARGE_TEMP_UPPER_LIMIT*" (find-package "ROBINT_MSGS::BATTERYSTATE"))
(shadow '*UBAT_ERR_CELL_TEMP_OVER_DISCHARGE_TEMP_UPPER_LIMIT* (find-package "ROBINT_MSGS::BATTERYSTATE"))
(defconstant robint_msgs::BatteryState::*UBAT_ERR_CELL_TEMP_OVER_DISCHARGE_TEMP_UPPER_LIMIT* 11)
(intern "*UBAT_ERR_CELL_TEMP_UNDER_CHARGE_TEMP_LOWER_LIMIT*" (find-package "ROBINT_MSGS::BATTERYSTATE"))
(shadow '*UBAT_ERR_CELL_TEMP_UNDER_CHARGE_TEMP_LOWER_LIMIT* (find-package "ROBINT_MSGS::BATTERYSTATE"))
(defconstant robint_msgs::BatteryState::*UBAT_ERR_CELL_TEMP_UNDER_CHARGE_TEMP_LOWER_LIMIT* 12)
(intern "*UBAT_ERR_CELL_TEMP_UNDER_DISCHARGE_TEMP_LOWER_LIMIT*" (find-package "ROBINT_MSGS::BATTERYSTATE"))
(shadow '*UBAT_ERR_CELL_TEMP_UNDER_DISCHARGE_TEMP_LOWER_LIMIT* (find-package "ROBINT_MSGS::BATTERYSTATE"))
(defconstant robint_msgs::BatteryState::*UBAT_ERR_CELL_TEMP_UNDER_DISCHARGE_TEMP_LOWER_LIMIT* 13)
(intern "*UBAT_ERR_CELL_TEMP_DIFF_OVER_CHARGE_TEMP_UPPER_LIMIT*" (find-package "ROBINT_MSGS::BATTERYSTATE"))
(shadow '*UBAT_ERR_CELL_TEMP_DIFF_OVER_CHARGE_TEMP_UPPER_LIMIT* (find-package "ROBINT_MSGS::BATTERYSTATE"))
(defconstant robint_msgs::BatteryState::*UBAT_ERR_CELL_TEMP_DIFF_OVER_CHARGE_TEMP_UPPER_LIMIT* 14)
(intern "*UBAT_ERR_CELL_TEMP_DIFF_OVER_DISCHARGE_TEMP_UPPER_LIMIT*" (find-package "ROBINT_MSGS::BATTERYSTATE"))
(shadow '*UBAT_ERR_CELL_TEMP_DIFF_OVER_DISCHARGE_TEMP_UPPER_LIMIT* (find-package "ROBINT_MSGS::BATTERYSTATE"))
(defconstant robint_msgs::BatteryState::*UBAT_ERR_CELL_TEMP_DIFF_OVER_DISCHARGE_TEMP_UPPER_LIMIT* 15)

(defun robint_msgs::BatteryState-to-symbol (const)
  (cond
        ((= const 0) 'robint_msgs::BatteryState::*UBAT_ERR_NULL*)
        ((= const 1) 'robint_msgs::BatteryState::*UBAT_ERR_CHARGER_OVRE_CURRENT*)
        ((= const 2) 'robint_msgs::BatteryState::*UBAT_ERR_DISCHARGE_OVRE_CURRENT*)
        ((= const 3) 'robint_msgs::BatteryState::*UBAT_ERR_SHORT_CIRCUIT*)
        ((= const 4) 'robint_msgs::BatteryState::*UBAT_ERR_CELL_OPEN_CIRCUIT*)
        ((= const 5) 'robint_msgs::BatteryState::*UBAT_ERR_TEMP_NTC_OPEN_CIRCUIT*)
        ((= const 6) 'robint_msgs::BatteryState::*UBAT_ERR_CELL_OVER_VOLTAGEM*)
        ((= const 7) 'robint_msgs::BatteryState::*UBAT_ERR_CELL_UNDER_VOLTAGE*)
        ((= const 8) 'robint_msgs::BatteryState::*UBAT_ERR_ALL_OVER_VOLTAGE*)
        ((= const 9) 'robint_msgs::BatteryState::*UBAT_ERR_ALL_UNDER_VOLTAGE*)
        ((= const 10) 'robint_msgs::BatteryState::*UBAT_ERR_CELL_TEMP_OVER_CHARGE_TEMP_UPPER_LIMIT*)
        ((= const 11) 'robint_msgs::BatteryState::*UBAT_ERR_CELL_TEMP_OVER_DISCHARGE_TEMP_UPPER_LIMIT*)
        ((= const 12) 'robint_msgs::BatteryState::*UBAT_ERR_CELL_TEMP_UNDER_CHARGE_TEMP_LOWER_LIMIT*)
        ((= const 13) 'robint_msgs::BatteryState::*UBAT_ERR_CELL_TEMP_UNDER_DISCHARGE_TEMP_lOWER_LIMIT*)
        ((= const 14) 'robint_msgs::BatteryState::*UBAT_ERR_CELL_TEMP_DIFF_OVER_CHARGE_TEMP_UPPER_LIMIT*)
        ((= const 15) 'robint_msgs::BatteryState::*UBAT_ERR_CELL_TEMP_DIFF_OVER_DISCHARGE_TEMP_UPPER_LIMIT*)
        (t nil)))

(defclass robint_msgs::BatteryState
  :super ros::object
  :slots (_soc_percent _voltage_v _current_a _temperature_c _cycle_times _error_code _is_charging _charging_state ))

(defmethod robint_msgs::BatteryState
  (:init
   (&key
    ((:soc_percent __soc_percent) 0.0)
    ((:voltage_v __voltage_v) 0.0)
    ((:current_a __current_a) 0.0)
    ((:temperature_c __temperature_c) 0.0)
    ((:cycle_times __cycle_times) 0)
    ((:error_code __error_code) 0)
    ((:is_charging __is_charging) nil)
    ((:charging_state __charging_state) nil)
    )
   (send-super :init)
   (setq _soc_percent (float __soc_percent))
   (setq _voltage_v (float __voltage_v))
   (setq _current_a (float __current_a))
   (setq _temperature_c (float __temperature_c))
   (setq _cycle_times (round __cycle_times))
   (setq _error_code (round __error_code))
   (setq _is_charging __is_charging)
   (setq _charging_state __charging_state)
   self)
  (:soc_percent
   (&optional __soc_percent)
   (if __soc_percent (setq _soc_percent __soc_percent)) _soc_percent)
  (:voltage_v
   (&optional __voltage_v)
   (if __voltage_v (setq _voltage_v __voltage_v)) _voltage_v)
  (:current_a
   (&optional __current_a)
   (if __current_a (setq _current_a __current_a)) _current_a)
  (:temperature_c
   (&optional __temperature_c)
   (if __temperature_c (setq _temperature_c __temperature_c)) _temperature_c)
  (:cycle_times
   (&optional __cycle_times)
   (if __cycle_times (setq _cycle_times __cycle_times)) _cycle_times)
  (:error_code
   (&optional __error_code)
   (if __error_code (setq _error_code __error_code)) _error_code)
  (:is_charging
   (&optional (__is_charging :null))
   (if (not (eq __is_charging :null)) (setq _is_charging __is_charging)) _is_charging)
  (:charging_state
   (&optional (__charging_state :null))
   (if (not (eq __charging_state :null)) (setq _charging_state __charging_state)) _charging_state)
  (:serialization-length
   ()
   (+
    ;; float32 _soc_percent
    4
    ;; float32 _voltage_v
    4
    ;; float32 _current_a
    4
    ;; float32 _temperature_c
    4
    ;; uint32 _cycle_times
    4
    ;; uint8 _error_code
    1
    ;; bool _is_charging
    1
    ;; bool _charging_state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _soc_percent
       (sys::poke _soc_percent (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _voltage_v
       (sys::poke _voltage_v (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _current_a
       (sys::poke _current_a (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _temperature_c
       (sys::poke _temperature_c (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint32 _cycle_times
       (write-long _cycle_times s)
     ;; uint8 _error_code
       (write-byte _error_code s)
     ;; bool _is_charging
       (if _is_charging (write-byte -1 s) (write-byte 0 s))
     ;; bool _charging_state
       (if _charging_state (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _soc_percent
     (setq _soc_percent (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _voltage_v
     (setq _voltage_v (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _current_a
     (setq _current_a (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _temperature_c
     (setq _temperature_c (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint32 _cycle_times
     (setq _cycle_times (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _error_code
     (setq _error_code (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _is_charging
     (setq _is_charging (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _charging_state
     (setq _charging_state (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get robint_msgs::BatteryState :md5sum-) "cabd16a824b1a6ff2b4a4038d822019f")
(setf (get robint_msgs::BatteryState :datatype-) "robint_msgs/BatteryState")
(setf (get robint_msgs::BatteryState :definition-)
      "#battery error code
uint8 UBAT_ERR_NULL = 0
uint8 UBAT_ERR_CHARGER_OVRE_CURRENT = 1
uint8 UBAT_ERR_DISCHARGE_OVRE_CURRENT = 2
uint8 UBAT_ERR_SHORT_CIRCUIT = 3
uint8 UBAT_ERR_CELL_OPEN_CIRCUIT = 4
uint8 UBAT_ERR_TEMP_NTC_OPEN_CIRCUIT = 5
uint8 UBAT_ERR_CELL_OVER_VOLTAGEM = 6
uint8 UBAT_ERR_CELL_UNDER_VOLTAGE = 7
uint8 UBAT_ERR_ALL_OVER_VOLTAGE = 8
uint8 UBAT_ERR_ALL_UNDER_VOLTAGE = 9
uint8 UBAT_ERR_CELL_TEMP_OVER_CHARGE_TEMP_UPPER_LIMIT = 10
uint8 UBAT_ERR_CELL_TEMP_OVER_DISCHARGE_TEMP_UPPER_LIMIT = 11
uint8 UBAT_ERR_CELL_TEMP_UNDER_CHARGE_TEMP_LOWER_LIMIT = 12
uint8 UBAT_ERR_CELL_TEMP_UNDER_DISCHARGE_TEMP_lOWER_LIMIT = 13
uint8 UBAT_ERR_CELL_TEMP_DIFF_OVER_CHARGE_TEMP_UPPER_LIMIT = 14
uint8 UBAT_ERR_CELL_TEMP_DIFF_OVER_DISCHARGE_TEMP_UPPER_LIMIT = 15

float32 soc_percent       #/* 电量, [0-100],小于20%提示充电,小于10%报警, 小于5%提示即将自动关机 */
float32 voltage_v         #/* 电压, 伏特 */
float32 current_a         #/* 电流, 安培: 负数表示电池向外供电, 正数表示电池被充电 */
float32 temperature_c     #/* 温度, 摄氏度 */
uint32 cycle_times    #/* 充电循环次数 */
uint8 error_code        #/* 错误编码 */
bool is_charging        #/* 是否充电中 */
bool charging_state     #/*新的充电参数：用来判断是否入桩成功*/
")



(provide :robint_msgs/BatteryState "cabd16a824b1a6ff2b4a4038d822019f")


