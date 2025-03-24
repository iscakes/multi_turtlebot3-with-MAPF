// Auto-generated. Do not edit!

// (in-package robint_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let VirtualWall = require('../msg/VirtualWall.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class AddVirtualWallRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.map_name = null;
      this.wall_mode = null;
      this.wall = null;
    }
    else {
      if (initObj.hasOwnProperty('map_name')) {
        this.map_name = initObj.map_name
      }
      else {
        this.map_name = '';
      }
      if (initObj.hasOwnProperty('wall_mode')) {
        this.wall_mode = initObj.wall_mode
      }
      else {
        this.wall_mode = 0;
      }
      if (initObj.hasOwnProperty('wall')) {
        this.wall = initObj.wall
      }
      else {
        this.wall = new VirtualWall();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AddVirtualWallRequest
    // Serialize message field [map_name]
    bufferOffset = _serializer.string(obj.map_name, buffer, bufferOffset);
    // Serialize message field [wall_mode]
    bufferOffset = _serializer.uint8(obj.wall_mode, buffer, bufferOffset);
    // Serialize message field [wall]
    bufferOffset = VirtualWall.serialize(obj.wall, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AddVirtualWallRequest
    let len;
    let data = new AddVirtualWallRequest(null);
    // Deserialize message field [map_name]
    data.map_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [wall_mode]
    data.wall_mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [wall]
    data.wall = VirtualWall.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.map_name);
    length += VirtualWall.getMessageSize(object.wall);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robint_msgs/AddVirtualWallRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c7a0e78602c856c41f91f27d272eb6d5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string map_name
    uint8 wall_mode
    uint8 WORLD=0
    uint8 IMAGE=1
    VirtualWall wall
    
    ================================================================================
    MSG: robint_msgs/VirtualWall
    string id
    uint8 type
    uint8 Line = 0
    uint8 Rectangle = 1
    uint8 Polygon = 2
    string vw_uuid
    string vw_name
    string map_uuid
    string group_uuid
    geometry_msgs/Point[] points 
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AddVirtualWallRequest(null);
    if (msg.map_name !== undefined) {
      resolved.map_name = msg.map_name;
    }
    else {
      resolved.map_name = ''
    }

    if (msg.wall_mode !== undefined) {
      resolved.wall_mode = msg.wall_mode;
    }
    else {
      resolved.wall_mode = 0
    }

    if (msg.wall !== undefined) {
      resolved.wall = VirtualWall.Resolve(msg.wall)
    }
    else {
      resolved.wall = new VirtualWall()
    }

    return resolved;
    }
};

// Constants for message
AddVirtualWallRequest.Constants = {
  WORLD: 0,
  IMAGE: 1,
}

class AddVirtualWallResponse {
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
    // Serializes a message object of type AddVirtualWallResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [error_code]
    bufferOffset = _serializer.uint8(obj.error_code, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AddVirtualWallResponse
    let len;
    let data = new AddVirtualWallResponse(null);
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
    return 'robint_msgs/AddVirtualWallResponse';
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
    const resolved = new AddVirtualWallResponse(null);
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
  Request: AddVirtualWallRequest,
  Response: AddVirtualWallResponse,
  md5sum() { return '3a1852c1238db68b4147612cc61f0fdd'; },
  datatype() { return 'robint_msgs/AddVirtualWall'; }
};
