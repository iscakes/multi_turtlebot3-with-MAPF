// Auto-generated. Do not edit!

// (in-package robint_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class AutoCruiseCommandRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.task_name = null;
      this.task_uuid = null;
      this.command = null;
      this.start_location_uuid = null;
      this.end_location_uuid = null;
    }
    else {
      if (initObj.hasOwnProperty('task_name')) {
        this.task_name = initObj.task_name
      }
      else {
        this.task_name = '';
      }
      if (initObj.hasOwnProperty('task_uuid')) {
        this.task_uuid = initObj.task_uuid
      }
      else {
        this.task_uuid = '';
      }
      if (initObj.hasOwnProperty('command')) {
        this.command = initObj.command
      }
      else {
        this.command = 0;
      }
      if (initObj.hasOwnProperty('start_location_uuid')) {
        this.start_location_uuid = initObj.start_location_uuid
      }
      else {
        this.start_location_uuid = '';
      }
      if (initObj.hasOwnProperty('end_location_uuid')) {
        this.end_location_uuid = initObj.end_location_uuid
      }
      else {
        this.end_location_uuid = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AutoCruiseCommandRequest
    // Serialize message field [task_name]
    bufferOffset = _serializer.string(obj.task_name, buffer, bufferOffset);
    // Serialize message field [task_uuid]
    bufferOffset = _serializer.string(obj.task_uuid, buffer, bufferOffset);
    // Serialize message field [command]
    bufferOffset = _serializer.uint8(obj.command, buffer, bufferOffset);
    // Serialize message field [start_location_uuid]
    bufferOffset = _serializer.string(obj.start_location_uuid, buffer, bufferOffset);
    // Serialize message field [end_location_uuid]
    bufferOffset = _serializer.string(obj.end_location_uuid, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AutoCruiseCommandRequest
    let len;
    let data = new AutoCruiseCommandRequest(null);
    // Deserialize message field [task_name]
    data.task_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [task_uuid]
    data.task_uuid = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [command]
    data.command = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [start_location_uuid]
    data.start_location_uuid = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [end_location_uuid]
    data.end_location_uuid = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.task_name);
    length += _getByteLength(object.task_uuid);
    length += _getByteLength(object.start_location_uuid);
    length += _getByteLength(object.end_location_uuid);
    return length + 17;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robint_msgs/AutoCruiseCommandRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd1691922be0b64d9d0e31869a28b97c9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string task_name
    string task_uuid
    uint8 command       # 'Start', 'Pause', 'Continue', 'Stop'
    uint8 START=0
    uint8 PAUSE=1
    uint8 CONTINUE=2
    uint8 STOP=3
    string start_location_uuid
    string end_location_uuid
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AutoCruiseCommandRequest(null);
    if (msg.task_name !== undefined) {
      resolved.task_name = msg.task_name;
    }
    else {
      resolved.task_name = ''
    }

    if (msg.task_uuid !== undefined) {
      resolved.task_uuid = msg.task_uuid;
    }
    else {
      resolved.task_uuid = ''
    }

    if (msg.command !== undefined) {
      resolved.command = msg.command;
    }
    else {
      resolved.command = 0
    }

    if (msg.start_location_uuid !== undefined) {
      resolved.start_location_uuid = msg.start_location_uuid;
    }
    else {
      resolved.start_location_uuid = ''
    }

    if (msg.end_location_uuid !== undefined) {
      resolved.end_location_uuid = msg.end_location_uuid;
    }
    else {
      resolved.end_location_uuid = ''
    }

    return resolved;
    }
};

// Constants for message
AutoCruiseCommandRequest.Constants = {
  START: 0,
  PAUSE: 1,
  CONTINUE: 2,
  STOP: 3,
}

class AutoCruiseCommandResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.error_code = null;
      this.message = null;
      this.percent = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('error_code')) {
        this.error_code = initObj.error_code
      }
      else {
        this.error_code = 0;
      }
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
      if (initObj.hasOwnProperty('percent')) {
        this.percent = initObj.percent
      }
      else {
        this.percent = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AutoCruiseCommandResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [error_code]
    bufferOffset = _serializer.uint8(obj.error_code, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    // Serialize message field [percent]
    bufferOffset = _serializer.uint8(obj.percent, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AutoCruiseCommandResponse
    let len;
    let data = new AutoCruiseCommandResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [error_code]
    data.error_code = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [percent]
    data.percent = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.message);
    return length + 7;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robint_msgs/AutoCruiseCommandResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cbe1b608ebd3ba83c8cad7c3acff158b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    uint8 error_code
    string message
    uint8 percent
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AutoCruiseCommandResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.error_code !== undefined) {
      resolved.error_code = msg.error_code;
    }
    else {
      resolved.error_code = 0
    }

    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    if (msg.percent !== undefined) {
      resolved.percent = msg.percent;
    }
    else {
      resolved.percent = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: AutoCruiseCommandRequest,
  Response: AutoCruiseCommandResponse,
  md5sum() { return '13b775ca1ec1ffd6cc417222cb8e4b2e'; },
  datatype() { return 'robint_msgs/AutoCruiseCommand'; }
};
