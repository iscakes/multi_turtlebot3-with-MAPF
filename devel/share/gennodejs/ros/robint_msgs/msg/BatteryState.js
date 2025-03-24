// Auto-generated. Do not edit!

// (in-package robint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class BatteryState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.soc_percent = null;
      this.voltage_v = null;
      this.current_a = null;
      this.temperature_c = null;
      this.cycle_times = null;
      this.error_code = null;
      this.is_charging = null;
      this.charging_state = null;
    }
    else {
      if (initObj.hasOwnProperty('soc_percent')) {
        this.soc_percent = initObj.soc_percent
      }
      else {
        this.soc_percent = 0.0;
      }
      if (initObj.hasOwnProperty('voltage_v')) {
        this.voltage_v = initObj.voltage_v
      }
      else {
        this.voltage_v = 0.0;
      }
      if (initObj.hasOwnProperty('current_a')) {
        this.current_a = initObj.current_a
      }
      else {
        this.current_a = 0.0;
      }
      if (initObj.hasOwnProperty('temperature_c')) {
        this.temperature_c = initObj.temperature_c
      }
      else {
        this.temperature_c = 0.0;
      }
      if (initObj.hasOwnProperty('cycle_times')) {
        this.cycle_times = initObj.cycle_times
      }
      else {
        this.cycle_times = 0;
      }
      if (initObj.hasOwnProperty('error_code')) {
        this.error_code = initObj.error_code
      }
      else {
        this.error_code = 0;
      }
      if (initObj.hasOwnProperty('is_charging')) {
        this.is_charging = initObj.is_charging
      }
      else {
        this.is_charging = false;
      }
      if (initObj.hasOwnProperty('charging_state')) {
        this.charging_state = initObj.charging_state
      }
      else {
        this.charging_state = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BatteryState
    // Serialize message field [soc_percent]
    bufferOffset = _serializer.float32(obj.soc_percent, buffer, bufferOffset);
    // Serialize message field [voltage_v]
    bufferOffset = _serializer.float32(obj.voltage_v, buffer, bufferOffset);
    // Serialize message field [current_a]
    bufferOffset = _serializer.float32(obj.current_a, buffer, bufferOffset);
    // Serialize message field [temperature_c]
    bufferOffset = _serializer.float32(obj.temperature_c, buffer, bufferOffset);
    // Serialize message field [cycle_times]
    bufferOffset = _serializer.uint32(obj.cycle_times, buffer, bufferOffset);
    // Serialize message field [error_code]
    bufferOffset = _serializer.uint8(obj.error_code, buffer, bufferOffset);
    // Serialize message field [is_charging]
    bufferOffset = _serializer.bool(obj.is_charging, buffer, bufferOffset);
    // Serialize message field [charging_state]
    bufferOffset = _serializer.bool(obj.charging_state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BatteryState
    let len;
    let data = new BatteryState(null);
    // Deserialize message field [soc_percent]
    data.soc_percent = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [voltage_v]
    data.voltage_v = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [current_a]
    data.current_a = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [temperature_c]
    data.temperature_c = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [cycle_times]
    data.cycle_times = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [error_code]
    data.error_code = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [is_charging]
    data.is_charging = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [charging_state]
    data.charging_state = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 23;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robint_msgs/BatteryState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cabd16a824b1a6ff2b4a4038d822019f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #battery error code
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
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BatteryState(null);
    if (msg.soc_percent !== undefined) {
      resolved.soc_percent = msg.soc_percent;
    }
    else {
      resolved.soc_percent = 0.0
    }

    if (msg.voltage_v !== undefined) {
      resolved.voltage_v = msg.voltage_v;
    }
    else {
      resolved.voltage_v = 0.0
    }

    if (msg.current_a !== undefined) {
      resolved.current_a = msg.current_a;
    }
    else {
      resolved.current_a = 0.0
    }

    if (msg.temperature_c !== undefined) {
      resolved.temperature_c = msg.temperature_c;
    }
    else {
      resolved.temperature_c = 0.0
    }

    if (msg.cycle_times !== undefined) {
      resolved.cycle_times = msg.cycle_times;
    }
    else {
      resolved.cycle_times = 0
    }

    if (msg.error_code !== undefined) {
      resolved.error_code = msg.error_code;
    }
    else {
      resolved.error_code = 0
    }

    if (msg.is_charging !== undefined) {
      resolved.is_charging = msg.is_charging;
    }
    else {
      resolved.is_charging = false
    }

    if (msg.charging_state !== undefined) {
      resolved.charging_state = msg.charging_state;
    }
    else {
      resolved.charging_state = false
    }

    return resolved;
    }
};

// Constants for message
BatteryState.Constants = {
  UBAT_ERR_NULL: 0,
  UBAT_ERR_CHARGER_OVRE_CURRENT: 1,
  UBAT_ERR_DISCHARGE_OVRE_CURRENT: 2,
  UBAT_ERR_SHORT_CIRCUIT: 3,
  UBAT_ERR_CELL_OPEN_CIRCUIT: 4,
  UBAT_ERR_TEMP_NTC_OPEN_CIRCUIT: 5,
  UBAT_ERR_CELL_OVER_VOLTAGEM: 6,
  UBAT_ERR_CELL_UNDER_VOLTAGE: 7,
  UBAT_ERR_ALL_OVER_VOLTAGE: 8,
  UBAT_ERR_ALL_UNDER_VOLTAGE: 9,
  UBAT_ERR_CELL_TEMP_OVER_CHARGE_TEMP_UPPER_LIMIT: 10,
  UBAT_ERR_CELL_TEMP_OVER_DISCHARGE_TEMP_UPPER_LIMIT: 11,
  UBAT_ERR_CELL_TEMP_UNDER_CHARGE_TEMP_LOWER_LIMIT: 12,
  UBAT_ERR_CELL_TEMP_UNDER_DISCHARGE_TEMP_LOWER_LIMIT: 13,
  UBAT_ERR_CELL_TEMP_DIFF_OVER_CHARGE_TEMP_UPPER_LIMIT: 14,
  UBAT_ERR_CELL_TEMP_DIFF_OVER_DISCHARGE_TEMP_UPPER_LIMIT: 15,
}

module.exports = BatteryState;
