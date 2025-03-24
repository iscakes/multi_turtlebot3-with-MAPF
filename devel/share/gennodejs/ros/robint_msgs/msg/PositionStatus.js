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

class PositionStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
      this.localization_status = null;
    }
    else {
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
      if (initObj.hasOwnProperty('localization_status')) {
        this.localization_status = initObj.localization_status
      }
      else {
        this.localization_status = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PositionStatus
    // Serialize message field [status]
    bufferOffset = _serializer.uint8(obj.status, buffer, bufferOffset);
    // Serialize message field [localization_status]
    bufferOffset = _serializer.uint8(obj.localization_status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PositionStatus
    let len;
    let data = new PositionStatus(null);
    // Deserialize message field [status]
    data.status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [localization_status]
    data.localization_status = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robint_msgs/PositionStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9f79e0da31ae4de315253c90cc1b04d0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 status
    uint8 localization_status
    uint8 NORMAL=0
    uint8 UNKNOWN=1
    uint8 LOCALIZATION_ERROR=2
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PositionStatus(null);
    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    if (msg.localization_status !== undefined) {
      resolved.localization_status = msg.localization_status;
    }
    else {
      resolved.localization_status = 0
    }

    return resolved;
    }
};

// Constants for message
PositionStatus.Constants = {
  NORMAL: 0,
  UNKNOWN: 1,
  LOCALIZATION_ERROR: 2,
}

module.exports = PositionStatus;
