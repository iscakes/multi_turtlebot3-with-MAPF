// Auto-generated. Do not edit!

// (in-package robint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let TaskStateHeader = require('./TaskStateHeader.js');

//-----------------------------------------------------------

class AutoChargeState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.state = null;
      this.r_state = null;
      this.r_feedback = null;
      this.finished = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new TaskStateHeader();
      }
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = '';
      }
      if (initObj.hasOwnProperty('r_state')) {
        this.r_state = initObj.r_state
      }
      else {
        this.r_state = 0;
      }
      if (initObj.hasOwnProperty('r_feedback')) {
        this.r_feedback = initObj.r_feedback
      }
      else {
        this.r_feedback = 0;
      }
      if (initObj.hasOwnProperty('finished')) {
        this.finished = initObj.finished
      }
      else {
        this.finished = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AutoChargeState
    // Serialize message field [header]
    bufferOffset = TaskStateHeader.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [state]
    bufferOffset = _serializer.string(obj.state, buffer, bufferOffset);
    // Serialize message field [r_state]
    bufferOffset = _serializer.uint8(obj.r_state, buffer, bufferOffset);
    // Serialize message field [r_feedback]
    bufferOffset = _serializer.uint8(obj.r_feedback, buffer, bufferOffset);
    // Serialize message field [finished]
    bufferOffset = _serializer.bool(obj.finished, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AutoChargeState
    let len;
    let data = new AutoChargeState(null);
    // Deserialize message field [header]
    data.header = TaskStateHeader.deserialize(buffer, bufferOffset);
    // Deserialize message field [state]
    data.state = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [r_state]
    data.r_state = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [r_feedback]
    data.r_feedback = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [finished]
    data.finished = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.state);
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robint_msgs/AutoChargeState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '63c0b5b6b1e424d8bdc6711f167d411a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    TaskStateHeader header
    string state
    uint8 r_state
    uint8 r_feedback
    bool finished
    ================================================================================
    MSG: robint_msgs/TaskStateHeader
    bool activate  # 该任务是否处于激活状态
    time start_time
    time stop_time
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AutoChargeState(null);
    if (msg.header !== undefined) {
      resolved.header = TaskStateHeader.Resolve(msg.header)
    }
    else {
      resolved.header = new TaskStateHeader()
    }

    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = ''
    }

    if (msg.r_state !== undefined) {
      resolved.r_state = msg.r_state;
    }
    else {
      resolved.r_state = 0
    }

    if (msg.r_feedback !== undefined) {
      resolved.r_feedback = msg.r_feedback;
    }
    else {
      resolved.r_feedback = 0
    }

    if (msg.finished !== undefined) {
      resolved.finished = msg.finished;
    }
    else {
      resolved.finished = false
    }

    return resolved;
    }
};

module.exports = AutoChargeState;
