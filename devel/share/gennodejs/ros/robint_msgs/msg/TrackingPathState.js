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

class TrackingPathState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.path_name = null;
      this.path_uuid = null;
      this.path_group_uuid = null;
      this.state = null;
      this.feedback = null;
      this.r_state = null;
      this.r_feedback = null;
      this.progress = null;
      this.current_loop_index = null;
      this.subtask = null;
      this.high_speed_status = null;
      this.finished = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new TaskStateHeader();
      }
      if (initObj.hasOwnProperty('path_name')) {
        this.path_name = initObj.path_name
      }
      else {
        this.path_name = '';
      }
      if (initObj.hasOwnProperty('path_uuid')) {
        this.path_uuid = initObj.path_uuid
      }
      else {
        this.path_uuid = '';
      }
      if (initObj.hasOwnProperty('path_group_uuid')) {
        this.path_group_uuid = initObj.path_group_uuid
      }
      else {
        this.path_group_uuid = '';
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
      if (initObj.hasOwnProperty('progress')) {
        this.progress = initObj.progress
      }
      else {
        this.progress = 0.0;
      }
      if (initObj.hasOwnProperty('current_loop_index')) {
        this.current_loop_index = initObj.current_loop_index
      }
      else {
        this.current_loop_index = 0;
      }
      if (initObj.hasOwnProperty('subtask')) {
        this.subtask = initObj.subtask
      }
      else {
        this.subtask = '';
      }
      if (initObj.hasOwnProperty('high_speed_status')) {
        this.high_speed_status = initObj.high_speed_status
      }
      else {
        this.high_speed_status = false;
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
    // Serializes a message object of type TrackingPathState
    // Serialize message field [header]
    bufferOffset = TaskStateHeader.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [path_name]
    bufferOffset = _serializer.string(obj.path_name, buffer, bufferOffset);
    // Serialize message field [path_uuid]
    bufferOffset = _serializer.string(obj.path_uuid, buffer, bufferOffset);
    // Serialize message field [path_group_uuid]
    bufferOffset = _serializer.string(obj.path_group_uuid, buffer, bufferOffset);
    // Serialize message field [state]
    bufferOffset = _serializer.string(obj.state, buffer, bufferOffset);
    // Serialize message field [feedback]
    bufferOffset = _serializer.string(obj.feedback, buffer, bufferOffset);
    // Serialize message field [r_state]
    bufferOffset = _serializer.uint8(obj.r_state, buffer, bufferOffset);
    // Serialize message field [r_feedback]
    bufferOffset = _serializer.uint8(obj.r_feedback, buffer, bufferOffset);
    // Serialize message field [progress]
    bufferOffset = _serializer.float32(obj.progress, buffer, bufferOffset);
    // Serialize message field [current_loop_index]
    bufferOffset = _serializer.int32(obj.current_loop_index, buffer, bufferOffset);
    // Serialize message field [subtask]
    bufferOffset = _serializer.string(obj.subtask, buffer, bufferOffset);
    // Serialize message field [high_speed_status]
    bufferOffset = _serializer.bool(obj.high_speed_status, buffer, bufferOffset);
    // Serialize message field [finished]
    bufferOffset = _serializer.bool(obj.finished, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrackingPathState
    let len;
    let data = new TrackingPathState(null);
    // Deserialize message field [header]
    data.header = TaskStateHeader.deserialize(buffer, bufferOffset);
    // Deserialize message field [path_name]
    data.path_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [path_uuid]
    data.path_uuid = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [path_group_uuid]
    data.path_group_uuid = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [state]
    data.state = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [feedback]
    data.feedback = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [r_state]
    data.r_state = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [r_feedback]
    data.r_feedback = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [progress]
    data.progress = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [current_loop_index]
    data.current_loop_index = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [subtask]
    data.subtask = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [high_speed_status]
    data.high_speed_status = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [finished]
    data.finished = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.path_name);
    length += _getByteLength(object.path_uuid);
    length += _getByteLength(object.path_group_uuid);
    length += _getByteLength(object.state);
    length += _getByteLength(object.feedback);
    length += _getByteLength(object.subtask);
    return length + 53;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robint_msgs/TrackingPathState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e85e55ca5dc1fe8c31d4a12fbf57df8e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    TaskStateHeader header 
    string path_name
    string path_uuid
    string path_group_uuid
    string state
    string feedback
    uint8 r_state
    uint8 r_feedback
    float32 progress
    int32 current_loop_index
    string subtask
    bool high_speed_status
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
    const resolved = new TrackingPathState(null);
    if (msg.header !== undefined) {
      resolved.header = TaskStateHeader.Resolve(msg.header)
    }
    else {
      resolved.header = new TaskStateHeader()
    }

    if (msg.path_name !== undefined) {
      resolved.path_name = msg.path_name;
    }
    else {
      resolved.path_name = ''
    }

    if (msg.path_uuid !== undefined) {
      resolved.path_uuid = msg.path_uuid;
    }
    else {
      resolved.path_uuid = ''
    }

    if (msg.path_group_uuid !== undefined) {
      resolved.path_group_uuid = msg.path_group_uuid;
    }
    else {
      resolved.path_group_uuid = ''
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

    if (msg.progress !== undefined) {
      resolved.progress = msg.progress;
    }
    else {
      resolved.progress = 0.0
    }

    if (msg.current_loop_index !== undefined) {
      resolved.current_loop_index = msg.current_loop_index;
    }
    else {
      resolved.current_loop_index = 0
    }

    if (msg.subtask !== undefined) {
      resolved.subtask = msg.subtask;
    }
    else {
      resolved.subtask = ''
    }

    if (msg.high_speed_status !== undefined) {
      resolved.high_speed_status = msg.high_speed_status;
    }
    else {
      resolved.high_speed_status = false
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

module.exports = TrackingPathState;
