; Auto-generated. Do not edit!


(cl:in-package robint_msgs-msg)


;//! \htmlinclude BatteryState.msg.html

(cl:defclass <BatteryState> (roslisp-msg-protocol:ros-message)
  ((soc_percent
    :reader soc_percent
    :initarg :soc_percent
    :type cl:float
    :initform 0.0)
   (voltage_v
    :reader voltage_v
    :initarg :voltage_v
    :type cl:float
    :initform 0.0)
   (current_a
    :reader current_a
    :initarg :current_a
    :type cl:float
    :initform 0.0)
   (temperature_c
    :reader temperature_c
    :initarg :temperature_c
    :type cl:float
    :initform 0.0)
   (cycle_times
    :reader cycle_times
    :initarg :cycle_times
    :type cl:integer
    :initform 0)
   (error_code
    :reader error_code
    :initarg :error_code
    :type cl:fixnum
    :initform 0)
   (is_charging
    :reader is_charging
    :initarg :is_charging
    :type cl:boolean
    :initform cl:nil)
   (charging_state
    :reader charging_state
    :initarg :charging_state
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass BatteryState (<BatteryState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BatteryState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BatteryState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-msg:<BatteryState> is deprecated: use robint_msgs-msg:BatteryState instead.")))

(cl:ensure-generic-function 'soc_percent-val :lambda-list '(m))
(cl:defmethod soc_percent-val ((m <BatteryState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:soc_percent-val is deprecated.  Use robint_msgs-msg:soc_percent instead.")
  (soc_percent m))

(cl:ensure-generic-function 'voltage_v-val :lambda-list '(m))
(cl:defmethod voltage_v-val ((m <BatteryState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:voltage_v-val is deprecated.  Use robint_msgs-msg:voltage_v instead.")
  (voltage_v m))

(cl:ensure-generic-function 'current_a-val :lambda-list '(m))
(cl:defmethod current_a-val ((m <BatteryState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:current_a-val is deprecated.  Use robint_msgs-msg:current_a instead.")
  (current_a m))

(cl:ensure-generic-function 'temperature_c-val :lambda-list '(m))
(cl:defmethod temperature_c-val ((m <BatteryState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:temperature_c-val is deprecated.  Use robint_msgs-msg:temperature_c instead.")
  (temperature_c m))

(cl:ensure-generic-function 'cycle_times-val :lambda-list '(m))
(cl:defmethod cycle_times-val ((m <BatteryState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:cycle_times-val is deprecated.  Use robint_msgs-msg:cycle_times instead.")
  (cycle_times m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <BatteryState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:error_code-val is deprecated.  Use robint_msgs-msg:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'is_charging-val :lambda-list '(m))
(cl:defmethod is_charging-val ((m <BatteryState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:is_charging-val is deprecated.  Use robint_msgs-msg:is_charging instead.")
  (is_charging m))

(cl:ensure-generic-function 'charging_state-val :lambda-list '(m))
(cl:defmethod charging_state-val ((m <BatteryState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:charging_state-val is deprecated.  Use robint_msgs-msg:charging_state instead.")
  (charging_state m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<BatteryState>)))
    "Constants for message type '<BatteryState>"
  '((:UBAT_ERR_NULL . 0)
    (:UBAT_ERR_CHARGER_OVRE_CURRENT . 1)
    (:UBAT_ERR_DISCHARGE_OVRE_CURRENT . 2)
    (:UBAT_ERR_SHORT_CIRCUIT . 3)
    (:UBAT_ERR_CELL_OPEN_CIRCUIT . 4)
    (:UBAT_ERR_TEMP_NTC_OPEN_CIRCUIT . 5)
    (:UBAT_ERR_CELL_OVER_VOLTAGEM . 6)
    (:UBAT_ERR_CELL_UNDER_VOLTAGE . 7)
    (:UBAT_ERR_ALL_OVER_VOLTAGE . 8)
    (:UBAT_ERR_ALL_UNDER_VOLTAGE . 9)
    (:UBAT_ERR_CELL_TEMP_OVER_CHARGE_TEMP_UPPER_LIMIT . 10)
    (:UBAT_ERR_CELL_TEMP_OVER_DISCHARGE_TEMP_UPPER_LIMIT . 11)
    (:UBAT_ERR_CELL_TEMP_UNDER_CHARGE_TEMP_LOWER_LIMIT . 12)
    (:UBAT_ERR_CELL_TEMP_UNDER_DISCHARGE_TEMP_LOWER_LIMIT . 13)
    (:UBAT_ERR_CELL_TEMP_DIFF_OVER_CHARGE_TEMP_UPPER_LIMIT . 14)
    (:UBAT_ERR_CELL_TEMP_DIFF_OVER_DISCHARGE_TEMP_UPPER_LIMIT . 15))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'BatteryState)))
    "Constants for message type 'BatteryState"
  '((:UBAT_ERR_NULL . 0)
    (:UBAT_ERR_CHARGER_OVRE_CURRENT . 1)
    (:UBAT_ERR_DISCHARGE_OVRE_CURRENT . 2)
    (:UBAT_ERR_SHORT_CIRCUIT . 3)
    (:UBAT_ERR_CELL_OPEN_CIRCUIT . 4)
    (:UBAT_ERR_TEMP_NTC_OPEN_CIRCUIT . 5)
    (:UBAT_ERR_CELL_OVER_VOLTAGEM . 6)
    (:UBAT_ERR_CELL_UNDER_VOLTAGE . 7)
    (:UBAT_ERR_ALL_OVER_VOLTAGE . 8)
    (:UBAT_ERR_ALL_UNDER_VOLTAGE . 9)
    (:UBAT_ERR_CELL_TEMP_OVER_CHARGE_TEMP_UPPER_LIMIT . 10)
    (:UBAT_ERR_CELL_TEMP_OVER_DISCHARGE_TEMP_UPPER_LIMIT . 11)
    (:UBAT_ERR_CELL_TEMP_UNDER_CHARGE_TEMP_LOWER_LIMIT . 12)
    (:UBAT_ERR_CELL_TEMP_UNDER_DISCHARGE_TEMP_LOWER_LIMIT . 13)
    (:UBAT_ERR_CELL_TEMP_DIFF_OVER_CHARGE_TEMP_UPPER_LIMIT . 14)
    (:UBAT_ERR_CELL_TEMP_DIFF_OVER_DISCHARGE_TEMP_UPPER_LIMIT . 15))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BatteryState>) ostream)
  "Serializes a message object of type '<BatteryState>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'soc_percent))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'voltage_v))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'current_a))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'temperature_c))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cycle_times)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'cycle_times)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'cycle_times)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'cycle_times)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_charging) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'charging_state) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BatteryState>) istream)
  "Deserializes a message object of type '<BatteryState>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'soc_percent) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'voltage_v) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'current_a) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'temperature_c) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cycle_times)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'cycle_times)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'cycle_times)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'cycle_times)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'is_charging) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'charging_state) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BatteryState>)))
  "Returns string type for a message object of type '<BatteryState>"
  "robint_msgs/BatteryState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BatteryState)))
  "Returns string type for a message object of type 'BatteryState"
  "robint_msgs/BatteryState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BatteryState>)))
  "Returns md5sum for a message object of type '<BatteryState>"
  "cabd16a824b1a6ff2b4a4038d822019f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BatteryState)))
  "Returns md5sum for a message object of type 'BatteryState"
  "cabd16a824b1a6ff2b4a4038d822019f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BatteryState>)))
  "Returns full string definition for message of type '<BatteryState>"
  (cl:format cl:nil "#battery error code~%uint8 UBAT_ERR_NULL = 0~%uint8 UBAT_ERR_CHARGER_OVRE_CURRENT = 1~%uint8 UBAT_ERR_DISCHARGE_OVRE_CURRENT = 2~%uint8 UBAT_ERR_SHORT_CIRCUIT = 3~%uint8 UBAT_ERR_CELL_OPEN_CIRCUIT = 4~%uint8 UBAT_ERR_TEMP_NTC_OPEN_CIRCUIT = 5~%uint8 UBAT_ERR_CELL_OVER_VOLTAGEM = 6~%uint8 UBAT_ERR_CELL_UNDER_VOLTAGE = 7~%uint8 UBAT_ERR_ALL_OVER_VOLTAGE = 8~%uint8 UBAT_ERR_ALL_UNDER_VOLTAGE = 9~%uint8 UBAT_ERR_CELL_TEMP_OVER_CHARGE_TEMP_UPPER_LIMIT = 10~%uint8 UBAT_ERR_CELL_TEMP_OVER_DISCHARGE_TEMP_UPPER_LIMIT = 11~%uint8 UBAT_ERR_CELL_TEMP_UNDER_CHARGE_TEMP_LOWER_LIMIT = 12~%uint8 UBAT_ERR_CELL_TEMP_UNDER_DISCHARGE_TEMP_lOWER_LIMIT = 13~%uint8 UBAT_ERR_CELL_TEMP_DIFF_OVER_CHARGE_TEMP_UPPER_LIMIT = 14~%uint8 UBAT_ERR_CELL_TEMP_DIFF_OVER_DISCHARGE_TEMP_UPPER_LIMIT = 15~%~%float32 soc_percent       #/* 电量, [0-100],小于20%提示充电,小于10%报警, 小于5%提示即将自动关机 */~%float32 voltage_v         #/* 电压, 伏特 */~%float32 current_a         #/* 电流, 安培: 负数表示电池向外供电, 正数表示电池被充电 */~%float32 temperature_c     #/* 温度, 摄氏度 */~%uint32 cycle_times    #/* 充电循环次数 */~%uint8 error_code        #/* 错误编码 */~%bool is_charging        #/* 是否充电中 */~%bool charging_state     #/*新的充电参数：用来判断是否入桩成功*/~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BatteryState)))
  "Returns full string definition for message of type 'BatteryState"
  (cl:format cl:nil "#battery error code~%uint8 UBAT_ERR_NULL = 0~%uint8 UBAT_ERR_CHARGER_OVRE_CURRENT = 1~%uint8 UBAT_ERR_DISCHARGE_OVRE_CURRENT = 2~%uint8 UBAT_ERR_SHORT_CIRCUIT = 3~%uint8 UBAT_ERR_CELL_OPEN_CIRCUIT = 4~%uint8 UBAT_ERR_TEMP_NTC_OPEN_CIRCUIT = 5~%uint8 UBAT_ERR_CELL_OVER_VOLTAGEM = 6~%uint8 UBAT_ERR_CELL_UNDER_VOLTAGE = 7~%uint8 UBAT_ERR_ALL_OVER_VOLTAGE = 8~%uint8 UBAT_ERR_ALL_UNDER_VOLTAGE = 9~%uint8 UBAT_ERR_CELL_TEMP_OVER_CHARGE_TEMP_UPPER_LIMIT = 10~%uint8 UBAT_ERR_CELL_TEMP_OVER_DISCHARGE_TEMP_UPPER_LIMIT = 11~%uint8 UBAT_ERR_CELL_TEMP_UNDER_CHARGE_TEMP_LOWER_LIMIT = 12~%uint8 UBAT_ERR_CELL_TEMP_UNDER_DISCHARGE_TEMP_lOWER_LIMIT = 13~%uint8 UBAT_ERR_CELL_TEMP_DIFF_OVER_CHARGE_TEMP_UPPER_LIMIT = 14~%uint8 UBAT_ERR_CELL_TEMP_DIFF_OVER_DISCHARGE_TEMP_UPPER_LIMIT = 15~%~%float32 soc_percent       #/* 电量, [0-100],小于20%提示充电,小于10%报警, 小于5%提示即将自动关机 */~%float32 voltage_v         #/* 电压, 伏特 */~%float32 current_a         #/* 电流, 安培: 负数表示电池向外供电, 正数表示电池被充电 */~%float32 temperature_c     #/* 温度, 摄氏度 */~%uint32 cycle_times    #/* 充电循环次数 */~%uint8 error_code        #/* 错误编码 */~%bool is_charging        #/* 是否充电中 */~%bool charging_state     #/*新的充电参数：用来判断是否入桩成功*/~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BatteryState>))
  (cl:+ 0
     4
     4
     4
     4
     4
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BatteryState>))
  "Converts a ROS message object to a list"
  (cl:list 'BatteryState
    (cl:cons ':soc_percent (soc_percent msg))
    (cl:cons ':voltage_v (voltage_v msg))
    (cl:cons ':current_a (current_a msg))
    (cl:cons ':temperature_c (temperature_c msg))
    (cl:cons ':cycle_times (cycle_times msg))
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':is_charging (is_charging msg))
    (cl:cons ':charging_state (charging_state msg))
))
