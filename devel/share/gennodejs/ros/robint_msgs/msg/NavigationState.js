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

class NavigationState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.goal_name = null;
      this.location_name = null;
      this.goal_group_uuid = null;
      this.state = null;
      this.feedback = null;
      this.r_state = null;
      this.r_feedback = null;
      this.reached = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new TaskStateHeader();
      }
      if (initObj.hasOwnProperty('goal_name')) {
        this.goal_name = initObj.goal_name
      }
      else {
        this.goal_name = '';
      }
      if (initObj.hasOwnProperty('location_name')) {
        this.location_name = initObj.location_name
      }
      else {
        this.location_name = '';
      }
      if (initObj.hasOwnProperty('goal_group_uuid')) {
        this.goal_group_uuid = initObj.goal_group_uuid
      }
      else {
        this.goal_group_uuid = '';
      }
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = '';
      }
      if (initObj.hasOwnProperty('feedback')) {
        this.feedback = initObj.feedback
      }
      else {
        this.feedback = '';
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
      if (initObj.hasOwnProperty('reached')) {
        this.reached = initObj.reached
      }
      else {
        this.reached = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NavigationState
    // Serialize message field [header]
    bufferOffset = TaskStateHeader.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [goal_name]
    bufferOffset = _serializer.string(obj.goal_name, buffer, bufferOffset);
    // Serialize message field [location_name]
    bufferOffset = _serializer.string(obj.location_name, buffer, bufferOffset);
    // Serialize message field [goal_group_uuid]
    bufferOffset = _serializer.string(obj.goal_group_uuid, buffer, bufferOffset);
    // Serialize message field [state]
    bufferOffset = _serializer.string(obj.state, buffer, bufferOffset);
    // Serialize message field [feedback]
    bufferOffset = _serializer.string(obj.feedback, buffer, bufferOffset);
    // Serialize message field [r_state]
    bufferOffset = _serializer.uint8(obj.r_state, buffer, bufferOffset);
    // Serialize message field [r_feedback]
    bufferOffset = _serializer.uint8(obj.r_feedback, buffer, bufferOffset);
    // Serialize message field [reached]
    bufferOffset = _serializer.bool(obj.reached, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NavigationState
    let len;
    let data = new NavigationState(null);
    // Deserialize message field [header]
    data.header = TaskStateHeader.deserialize(buffer, bufferOffset);
    // Deserialize message field [goal_name]
    data.goal_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [location_name]
    data.location_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [goal_group_uuid]
    data.goal_group_uuid = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [state]
    data.state = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [feedback]
    data.feedback = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [r_state]
    data.r_state = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [r_feedback]
    data.r_feedback = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [reached]
    data.reached = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.goal_name);
    length += _getByteLength(object.location_name);
    length += _getByteLength(object.goal_group_uuid);
    length += _getByteLength(object.state);
    length += _getByteLength(object.feedback);
    return length + 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robint_msgs/NavigationState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4a12325509252f95a5569a9f32265fdc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    TaskStateHeader header 
    string goal_name
    string location_name
    string goal_group_uuid
    string state
    string feedback
    uint8 r_state
    uint8 r_feedback
    bool reached
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
    const resolved = new NavigationState(null);
    if (msg.header !== undefined) {
      resolved.header = TaskStateHeader.Resolve(msg.header)
    }
    else {
      resolved.header = new TaskStateHeader()
    }

    if (msg.goal_name !== undefined) {
      resolved.goal_name = msg.goal_name;
    }
    else {
      resolved.goal_name = ''
    }

    if (msg.location_name !== undefined) {
      resolved.location_name = msg.location_name;
    }
    else {
      resolved.location_name = ''
    }

    if (msg.goal_group_uuid !== undefined) {
      resolved.goal_group_uuid = msg.goal_group_uuid;
    }
    else {
      resolved.goal_group_uuid = ''
    }

    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = ''
    }

    if (msg.feedback !== undefined) {
      resolved.feedback = msg.feedback;
    }
    else {
      resolved.feedback = ''
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

    if (msg.reached !== undefined) {
      resolved.reached = msg.reached;
    }
    else {
      resolved.reached = false
    }

    return resolved;
    }
};

module.exports = NavigationState;
