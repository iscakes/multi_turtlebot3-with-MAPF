// Auto-generated. Do not edit!

// (in-package robint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SensorDiagnostic = require('./SensorDiagnostic.js');

//-----------------------------------------------------------

class SensorState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.diagnostic_array = null;
    }
    else {
      if (initObj.hasOwnProperty('diagnostic_array')) {
        this.diagnostic_array = initObj.diagnostic_array
      }
      else {
        this.diagnostic_array = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SensorState
    // Serialize message field [diagnostic_array]
    // Serialize the length for message field [diagnostic_array]
    bufferOffset = _serializer.uint32(obj.diagnostic_array.length, buffer, bufferOffset);
    obj.diagnostic_array.forEach((val) => {
      bufferOffset = SensorDiagnostic.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SensorState
    let len;
    let data = new SensorState(null);
    // Deserialize message field [diagnostic_array]
    // Deserialize array length for message field [diagnostic_array]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.diagnostic_array = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.diagnostic_array[i] = SensorDiagnostic.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.diagnostic_array.forEach((val) => {
      length += SensorDiagnostic.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robint_msgs/SensorState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b413862050990d5004a35381425f2c59';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    SensorDiagnostic[] diagnostic_array
    # SensorDiagnostic imu
    # SensorDiagnostic scan
    # SensorDiagnostic depth_scan
    # SensorDiagnostic[] ultrasonic_array
    ================================================================================
    MSG: robint_msgs/SensorDiagnostic
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
    const resolved = new SensorState(null);
    if (msg.diagnostic_array !== undefined) {
      resolved.diagnostic_array = new Array(msg.diagnostic_array.length);
      for (let i = 0; i < resolved.diagnostic_array.length; ++i) {
        resolved.diagnostic_array[i] = SensorDiagnostic.Resolve(msg.diagnostic_array[i]);
      }
    }
    else {
      resolved.diagnostic_array = []
    }

    return resolved;
    }
};

module.exports = SensorState;
