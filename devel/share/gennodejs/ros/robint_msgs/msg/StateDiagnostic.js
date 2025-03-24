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

class StateDiagnostic {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.hardware_name = null;
      this.is_ok = null;
    }
    else {
      if (initObj.hasOwnProperty('hardware_name')) {
        this.hardware_name = initObj.hardware_name
      }
      else {
        this.hardware_name = '';
      }
      if (initObj.hasOwnProperty('is_ok')) {
        this.is_ok = initObj.is_ok
      }
      else {
        this.is_ok = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StateDiagnostic
    // Serialize message field [hardware_name]
    bufferOffset = _serializer.string(obj.hardware_name, buffer, bufferOffset);
    // Serialize message field [is_ok]
    bufferOffset = _serializer.bool(obj.is_ok, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StateDiagnostic
    let len;
    let data = new StateDiagnostic(null);
    // Deserialize message field [hardware_name]
    data.hardware_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [is_ok]
    data.is_ok = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.hardware_name);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robint_msgs/StateDiagnostic';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '639ff558d4ee8d1752d1e9ef7c8e04f2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string hardware_name
    bool is_ok
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StateDiagnostic(null);
    if (msg.hardware_name !== undefined) {
      resolved.hardware_name = msg.hardware_name;
    }
    else {
      resolved.hardware_name = ''
    }

    if (msg.is_ok !== undefined) {
      resolved.is_ok = msg.is_ok;
    }
    else {
      resolved.is_ok = false
    }

    return resolved;
    }
};

module.exports = StateDiagnostic;
