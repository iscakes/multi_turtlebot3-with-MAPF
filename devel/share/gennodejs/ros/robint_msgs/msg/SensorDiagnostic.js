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

class SensorDiagnostic {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.time = null;
      this.hardware_name = null;
      this.is_received = null;
      this.is_normal = null;
    }
    else {
      if (initObj.hasOwnProperty('time')) {
        this.time = initObj.time
      }
      else {
        this.time = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('hardware_name')) {
        this.hardware_name = initObj.hardware_name
      }
      else {
        this.hardware_name = '';
      }
      if (initObj.hasOwnProperty('is_received')) {
        this.is_received = initObj.is_received
      }
      else {
        this.is_received = false;
      }
      if (initObj.hasOwnProperty('is_normal')) {
        this.is_normal = initObj.is_normal
      }
      else {
        this.is_normal = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SensorDiagnostic
    // Serialize message field [time]
    bufferOffset = _serializer.time(obj.time, buffer, bufferOffset);
    // Serialize message field [hardware_name]
    bufferOffset = _serializer.string(obj.hardware_name, buffer, bufferOffset);
    // Serialize message field [is_received]
    bufferOffset = _serializer.bool(obj.is_received, buffer, bufferOffset);
    // Serialize message field [is_normal]
    bufferOffset = _serializer.bool(obj.is_normal, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SensorDiagnostic
    let len;
    let data = new SensorDiagnostic(null);
    // Deserialize message field [time]
    data.time = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [hardware_name]
    data.hardware_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [is_received]
    data.is_received = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_normal]
    data.is_normal = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.hardware_name);
    return length + 14;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robint_msgs/SensorDiagnostic';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ddfb3402f75cafa157926253e3f9dfef';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    time time
    string hardware_name
    bool is_received
    bool is_normal
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SensorDiagnostic(null);
    if (msg.time !== undefined) {
      resolved.time = msg.time;
    }
    else {
      resolved.time = {secs: 0, nsecs: 0}
    }

    if (msg.hardware_name !== undefined) {
      resolved.hardware_name = msg.hardware_name;
    }
    else {
      resolved.hardware_name = ''
    }

    if (msg.is_received !== undefined) {
      resolved.is_received = msg.is_received;
    }
    else {
      resolved.is_received = false
    }

    if (msg.is_normal !== undefined) {
      resolved.is_normal = msg.is_normal;
    }
    else {
      resolved.is_normal = false
    }

    return resolved;
    }
};

module.exports = SensorDiagnostic;
