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

class ElevatorState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.r_state = null;
      this.r_feedback = null;
      this.building_name = null;
      this.floor_index = null;
      this.door_status = null;
      this.lift_status = null;
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
      if (initObj.hasOwnProperty('building_name')) {
        this.building_name = initObj.building_name
      }
      else {
        this.building_name = '';
      }
      if (initObj.hasOwnProperty('floor_index')) {
        this.floor_index = initObj.floor_index
      }
      else {
        this.floor_index = 0;
      }
      if (initObj.hasOwnProperty('door_status')) {
        this.door_status = initObj.door_status
      }
      else {
        this.door_status = '';
      }
      if (initObj.hasOwnProperty('lift_status')) {
        this.lift_status = initObj.lift_status
      }
      else {
        this.lift_status = '';
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
    // Serializes a message object of type ElevatorState
    // Serialize message field [header]
    bufferOffset = TaskStateHeader.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [r_state]
    bufferOffset = _serializer.uint8(obj.r_state, buffer, bufferOffset);
    // Serialize message field [r_feedback]
    bufferOffset = _serializer.uint8(obj.r_feedback, buffer, bufferOffset);
    // Serialize message field [building_name]
    bufferOffset = _serializer.string(obj.building_name, buffer, bufferOffset);
    // Serialize message field [floor_index]
    bufferOffset = _serializer.int32(obj.floor_index, buffer, bufferOffset);
    // Serialize message field [door_status]
    bufferOffset = _serializer.string(obj.door_status, buffer, bufferOffset);
    // Serialize message field [lift_status]
    bufferOffset = _serializer.string(obj.lift_status, buffer, bufferOffset);
    // Serialize message field [finished]
    bufferOffset = _serializer.bool(obj.finished, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ElevatorState
    let len;
    let data = new ElevatorState(null);
    // Deserialize message field [header]
    data.header = TaskStateHeader.deserialize(buffer, bufferOffset);
    // Deserialize message field [r_state]
    data.r_state = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [r_feedback]
    data.r_feedback = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [building_name]
    data.building_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [floor_index]
    data.floor_index = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [door_status]
    data.door_status = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [lift_status]
    data.lift_status = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [finished]
    data.finished = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.building_name);
    length += _getByteLength(object.door_status);
    length += _getByteLength(object.lift_status);
    return length + 36;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robint_msgs/ElevatorState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd23507e8469034e7acb9f80b617e8be4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # elevator_status
    TaskStateHeader header
    uint8 r_state
    uint8 r_feedback
    string building_name
    int32 floor_index
    # 电梯开门状态：opened,opening,closed,closing
    string door_status
    # upgoing, downgoing, keeping
    string lift_status
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
    const resolved = new ElevatorState(null);
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

    if (msg.building_name !== undefined) {
      resolved.building_name = msg.building_name;
    }
    else {
      resolved.building_name = ''
    }

    if (msg.floor_index !== undefined) {
      resolved.floor_index = msg.floor_index;
    }
    else {
      resolved.floor_index = 0
    }

    if (msg.door_status !== undefined) {
      resolved.door_status = msg.door_status;
    }
    else {
      resolved.door_status = ''
    }

    if (msg.lift_status !== undefined) {
      resolved.lift_status = msg.lift_status;
    }
    else {
      resolved.lift_status = ''
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

module.exports = ElevatorState;
