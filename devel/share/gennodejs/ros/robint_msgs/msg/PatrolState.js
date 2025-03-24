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

class PatrolState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.state = null;
      this.current_route_name = null;
      this.current_goal_name = null;
      this.current_goal_isReached = null;
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
      if (initObj.hasOwnProperty('current_route_name')) {
        this.current_route_name = initObj.current_route_name
      }
      else {
        this.current_route_name = '';
      }
      if (initObj.hasOwnProperty('current_goal_name')) {
        this.current_goal_name = initObj.current_goal_name
      }
      else {
        this.current_goal_name = '';
      }
      if (initObj.hasOwnProperty('current_goal_isReached')) {
        this.current_goal_isReached = initObj.current_goal_isReached
      }
      else {
        this.current_goal_isReached = false;
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
    // Serializes a message object of type PatrolState
    // Serialize message field [header]
    bufferOffset = TaskStateHeader.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [state]
    bufferOffset = _serializer.string(obj.state, buffer, bufferOffset);
    // Serialize message field [current_route_name]
    bufferOffset = _serializer.string(obj.current_route_name, buffer, bufferOffset);
    // Serialize message field [current_goal_name]
    bufferOffset = _serializer.string(obj.current_goal_name, buffer, bufferOffset);
    // Serialize message field [current_goal_isReached]
    bufferOffset = _serializer.bool(obj.current_goal_isReached, buffer, bufferOffset);
    // Serialize message field [finished]
    bufferOffset = _serializer.bool(obj.finished, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PatrolState
    let len;
    let data = new PatrolState(null);
    // Deserialize message field [header]
    data.header = TaskStateHeader.deserialize(buffer, bufferOffset);
    // Deserialize message field [state]
    data.state = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [current_route_name]
    data.current_route_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [current_goal_name]
    data.current_goal_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [current_goal_isReached]
    data.current_goal_isReached = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [finished]
    data.finished = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.state);
    length += _getByteLength(object.current_route_name);
    length += _getByteLength(object.current_goal_name);
    return length + 31;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robint_msgs/PatrolState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '785c44df0181d563e8f2584a56d60a67';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    TaskStateHeader header
    string state             # "Running", "Stop", "Pause"
    string current_route_name
    string current_goal_name
    bool current_goal_isReached
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
    const resolved = new PatrolState(null);
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

    if (msg.current_route_name !== undefined) {
      resolved.current_route_name = msg.current_route_name;
    }
    else {
      resolved.current_route_name = ''
    }

    if (msg.current_goal_name !== undefined) {
      resolved.current_goal_name = msg.current_goal_name;
    }
    else {
      resolved.current_goal_name = ''
    }

    if (msg.current_goal_isReached !== undefined) {
      resolved.current_goal_isReached = msg.current_goal_isReached;
    }
    else {
      resolved.current_goal_isReached = false
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

module.exports = PatrolState;
