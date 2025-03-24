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

class JoystickPanelStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.stamp = null;
      this.joystick_trigger = null;
      this.key_return_home = null;
      this.key_speed_increase = null;
      this.key_speed_reduction = null;
      this.key_park_brake = null;
      this.key_whistle = null;
      this.mode = null;
      this.level = null;
      this.error_code = null;
    }
    else {
      if (initObj.hasOwnProperty('stamp')) {
        this.stamp = initObj.stamp
      }
      else {
        this.stamp = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('joystick_trigger')) {
        this.joystick_trigger = initObj.joystick_trigger
      }
      else {
        this.joystick_trigger = false;
      }
      if (initObj.hasOwnProperty('key_return_home')) {
        this.key_return_home = initObj.key_return_home
      }
      else {
        this.key_return_home = false;
      }
      if (initObj.hasOwnProperty('key_speed_increase')) {
        this.key_speed_increase = initObj.key_speed_increase
      }
      else {
        this.key_speed_increase = false;
      }
      if (initObj.hasOwnProperty('key_speed_reduction')) {
        this.key_speed_reduction = initObj.key_speed_reduction
      }
      else {
        this.key_speed_reduction = false;
      }
      if (initObj.hasOwnProperty('key_park_brake')) {
        this.key_park_brake = initObj.key_park_brake
      }
      else {
        this.key_park_brake = false;
      }
      if (initObj.hasOwnProperty('key_whistle')) {
        this.key_whistle = initObj.key_whistle
      }
      else {
        this.key_whistle = false;
      }
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = 0;
      }
      if (initObj.hasOwnProperty('level')) {
        this.level = initObj.level
      }
      else {
        this.level = 0;
      }
      if (initObj.hasOwnProperty('error_code')) {
        this.error_code = initObj.error_code
      }
      else {
        this.error_code = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type JoystickPanelStatus
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    // Serialize message field [joystick_trigger]
    bufferOffset = _serializer.bool(obj.joystick_trigger, buffer, bufferOffset);
    // Serialize message field [key_return_home]
    bufferOffset = _serializer.bool(obj.key_return_home, buffer, bufferOffset);
    // Serialize message field [key_speed_increase]
    bufferOffset = _serializer.bool(obj.key_speed_increase, buffer, bufferOffset);
    // Serialize message field [key_speed_reduction]
    bufferOffset = _serializer.bool(obj.key_speed_reduction, buffer, bufferOffset);
    // Serialize message field [key_park_brake]
    bufferOffset = _serializer.bool(obj.key_park_brake, buffer, bufferOffset);
    // Serialize message field [key_whistle]
    bufferOffset = _serializer.bool(obj.key_whistle, buffer, bufferOffset);
    // Serialize message field [mode]
    bufferOffset = _serializer.uint8(obj.mode, buffer, bufferOffset);
    // Serialize message field [level]
    bufferOffset = _serializer.uint8(obj.level, buffer, bufferOffset);
    // Serialize message field [error_code]
    bufferOffset = _serializer.uint8(obj.error_code, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type JoystickPanelStatus
    let len;
    let data = new JoystickPanelStatus(null);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [joystick_trigger]
    data.joystick_trigger = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [key_return_home]
    data.key_return_home = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [key_speed_increase]
    data.key_speed_increase = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [key_speed_reduction]
    data.key_speed_reduction = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [key_park_brake]
    data.key_park_brake = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [key_whistle]
    data.key_whistle = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [mode]
    data.mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [level]
    data.level = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [error_code]
    data.error_code = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 17;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robint_msgs/JoystickPanelStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b7f32ae109c05e77fb5790ce1aa37191';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    time stamp
    bool joystick_trigger
    bool key_return_home
    bool key_speed_increase
    bool key_speed_reduction
    bool key_park_brake
    bool key_whistle
    uint8 mode # 0: P档; 1: 手动; 2: 自动
    uint8 level
    uint8 error_code
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new JoystickPanelStatus(null);
    if (msg.stamp !== undefined) {
      resolved.stamp = msg.stamp;
    }
    else {
      resolved.stamp = {secs: 0, nsecs: 0}
    }

    if (msg.joystick_trigger !== undefined) {
      resolved.joystick_trigger = msg.joystick_trigger;
    }
    else {
      resolved.joystick_trigger = false
    }

    if (msg.key_return_home !== undefined) {
      resolved.key_return_home = msg.key_return_home;
    }
    else {
      resolved.key_return_home = false
    }

    if (msg.key_speed_increase !== undefined) {
      resolved.key_speed_increase = msg.key_speed_increase;
    }
    else {
      resolved.key_speed_increase = false
    }

    if (msg.key_speed_reduction !== undefined) {
      resolved.key_speed_reduction = msg.key_speed_reduction;
    }
    else {
      resolved.key_speed_reduction = false
    }

    if (msg.key_park_brake !== undefined) {
      resolved.key_park_brake = msg.key_park_brake;
    }
    else {
      resolved.key_park_brake = false
    }

    if (msg.key_whistle !== undefined) {
      resolved.key_whistle = msg.key_whistle;
    }
    else {
      resolved.key_whistle = false
    }

    if (msg.mode !== undefined) {
      resolved.mode = msg.mode;
    }
    else {
      resolved.mode = 0
    }

    if (msg.level !== undefined) {
      resolved.level = msg.level;
    }
    else {
      resolved.level = 0
    }

    if (msg.error_code !== undefined) {
      resolved.error_code = msg.error_code;
    }
    else {
      resolved.error_code = 0
    }

    return resolved;
    }
};

module.exports = JoystickPanelStatus;
