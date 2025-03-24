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

class CallElevatorCommandRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.command = null;
      this.building_name = null;
      this.from_floor = null;
      this.to_floor = null;
      this.in_elevator = null;
    }
    else {
      if (initObj.hasOwnProperty('command')) {
        this.command = initObj.command
      }
      else {
        this.command = 0;
      }
      if (initObj.hasOwnProperty('building_name')) {
        this.building_name = initObj.building_name
      }
      else {
        this.building_name = '';
      }
      if (initObj.hasOwnProperty('from_floor')) {
        this.from_floor = initObj.from_floor
      }
      else {
        this.from_floor = 0;
      }
      if (initObj.hasOwnProperty('to_floor')) {
        this.to_floor = initObj.to_floor
      }
      else {
        this.to_floor = 0;
      }
      if (initObj.hasOwnProperty('in_elevator')) {
        this.in_elevator = initObj.in_elevator
      }
      else {
        this.in_elevator = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CallElevatorCommandRequest
    // Serialize message field [command]
    bufferOffset = _serializer.uint8(obj.command, buffer, bufferOffset);
    // Serialize message field [building_name]
    bufferOffset = _serializer.string(obj.building_name, buffer, bufferOffset);
    // Serialize message field [from_floor]
    bufferOffset = _serializer.int32(obj.from_floor, buffer, bufferOffset);
    // Serialize message field [to_floor]
    bufferOffset = _serializer.int32(obj.to_floor, buffer, bufferOffset);
    // Serialize message field [in_elevator]
    bufferOffset = _serializer.bool(obj.in_elevator, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CallElevatorCommandRequest
    let len;
    let data = new CallElevatorCommandRequest(null);
    // Deserialize message field [command]
    data.command = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [building_name]
    data.building_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [from_floor]
    data.from_floor = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [to_floor]
    data.to_floor = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [in_elevator]
    data.in_elevator = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.building_name);
    return length + 14;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robint_msgs/CallElevatorCommandRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3f41f29052fa72a4bfecd8c608af72e8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 command       # 'Start', 'Pause', 'Continue', 'Stop'
    uint8 START=0
    uint8 PAUSE=1
    uint8 CONTINUE=2
    uint8 STOP=3
    string building_name
    int32 from_floor
    int32 to_floor
    bool in_elevator
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CallElevatorCommandRequest(null);
    if (msg.command !== undefined) {
      resolved.command = msg.command;
    }
    else {
      resolved.command = 0
    }

    if (msg.building_name !== undefined) {
      resolved.building_name = msg.building_name;
    }
    else {
      resolved.building_name = ''
    }

    if (msg.from_floor !== undefined) {
      resolved.from_floor = msg.from_floor;
    }
    else {
      resolved.from_floor = 0
    }

    if (msg.to_floor !== undefined) {
      resolved.to_floor = msg.to_floor;
    }
    else {
      resolved.to_floor = 0
    }

    if (msg.in_elevator !== undefined) {
      resolved.in_elevator = msg.in_elevator;
    }
    else {
      resolved.in_elevator = false
    }

    return resolved;
    }
};

// Constants for message
CallElevatorCommandRequest.Constants = {
  START: 0,
  PAUSE: 1,
  CONTINUE: 2,
  STOP: 3,
}

class CallElevatorCommandResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.error_code = null;
      this.message = null;
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CallElevatorCommandResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [error_code]
    bufferOffset = _serializer.uint8(obj.error_code, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CallElevatorCommandResponse
    let len;
    let data = new CallElevatorCommandResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [error_code]
    data.error_code = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.message);
    return length + 6;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robint_msgs/CallElevatorCommandResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4ad76664b0717ddbf6142456d7398288';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    uint8 error_code
    string message
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CallElevatorCommandResponse(null);
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

    return resolved;
    }
};

module.exports = {
  Request: CallElevatorCommandRequest,
  Response: CallElevatorCommandResponse,
  md5sum() { return '76382a8f79198018adfe306bd305cb26'; },
  datatype() { return 'robint_msgs/CallElevatorCommand'; }
};
