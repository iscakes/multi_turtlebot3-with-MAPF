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

class GateState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.r_state = null;
      this.r_feedback = null;
      this.gate_id = null;
      this.finished = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new TaskStateHeader();
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
      if (initObj.hasOwnProperty('gate_id')) {
        this.gate_id = initObj.gate_id
      }
      else {
        this.gate_id = '';
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
    // Serializes a message object of type GateState
    // Serialize message field [header]
    bufferOffset = TaskStateHeader.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [r_state]
    bufferOffset = _serializer.uint8(obj.r_state, buffer, bufferOffset);
    // Serialize message field [r_feedback]
    bufferOffset = _serializer.uint8(obj.r_feedback, buffer, bufferOffset);
    // Serialize message field [gate_id]
    bufferOffset = _serializer.string(obj.gate_id, buffer, bufferOffset);
    // Serialize message field [finished]
    bufferOffset = _serializer.bool(obj.finished, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GateState
    let len;
    let data = new GateState(null);
    // Deserialize message field [header]
    data.header = TaskStateHeader.deserialize(buffer, bufferOffset);
    // Deserialize message field [r_state]
    data.r_state = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [r_feedback]
    data.r_feedback = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [gate_id]
    data.gate_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [finished]
    data.finished = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.gate_id);
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robint_msgs/GateState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '08e4940fb1e5fcf371098421ae5adcfa';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # gate_status
    TaskStateHeader header
    uint8 r_state
    uint8 r_feedback
    string gate_id
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
    const resolved = new GateState(null);
    if (msg.header !== undefined) {
      resolved.header = TaskStateHeader.Resolve(msg.header)
    }
    else {
      resolved.header = new TaskStateHeader()
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

    if (msg.gate_id !== undefined) {
      resolved.gate_id = msg.gate_id;
    }
    else {
      resolved.gate_id = ''
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

module.exports = GateState;
