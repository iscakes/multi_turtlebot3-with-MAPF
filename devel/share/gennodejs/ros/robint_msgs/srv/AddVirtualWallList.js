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

class AddVirtualWallListRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.map_name = null;
      this.wall_mode = null;
      this.map_uuid = null;
      this.wall_list = null;
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
      if (initObj.hasOwnProperty('map_uuid')) {
        this.map_uuid = initObj.map_uuid
      }
      else {
        this.map_uuid = '';
      }
      if (initObj.hasOwnProperty('wall_list')) {
        this.wall_list = initObj.wall_list
      }
      else {
        this.wall_list = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AddVirtualWallListRequest
    // Serialize message field [map_name]
    bufferOffset = _serializer.string(obj.map_name, buffer, bufferOffset);
    // Serialize message field [wall_mode]
    bufferOffset = _serializer.uint8(obj.wall_mode, buffer, bufferOffset);
    // Serialize message field [map_uuid]
    bufferOffset = _serializer.string(obj.map_uuid, buffer, bufferOffset);
    // Serialize message field [wall_list]
    // Serialize the length for message field [wall_list]
    bufferOffset = _serializer.uint32(obj.wall_list.length, buffer, bufferOffset);
    obj.wall_list.forEach((val) => {
      bufferOffset = VirtualWall.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AddVirtualWallListRequest
    let len;
    let data = new AddVirtualWallListRequest(null);
    // Deserialize message field [map_name]
    data.map_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [wall_mode]
    data.wall_mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [map_uuid]
    data.map_uuid = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [wall_list]
    // Deserialize array length for message field [wall_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.wall_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.wall_list[i] = VirtualWall.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.map_name);
    length += _getByteLength(object.map_uuid);
    object.wall_list.forEach((val) => {
      length += VirtualWall.getMessageSize(val);
    });
    return length + 13;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robint_msgs/AddVirtualWallListRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '465009ca91f6be6701e248001d56ab05';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string map_name
    uint8 wall_mode
    uint8 WORLD=0
    uint8 IMAGE=1
    string map_uuid
    VirtualWall[] wall_list
    
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
    const resolved = new AddVirtualWallListRequest(null);
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

    if (msg.map_uuid !== undefined) {
      resolved.map_uuid = msg.map_uuid;
    }
    else {
      resolved.map_uuid = ''
    }

    if (msg.wall_list !== undefined) {
      resolved.wall_list = new Array(msg.wall_list.length);
      for (let i = 0; i < resolved.wall_list.length; ++i) {
        resolved.wall_list[i] = VirtualWall.Resolve(msg.wall_list[i]);
      }
    }
    else {
      resolved.wall_list = []
    }

    return resolved;
    }
};

// Constants for message
AddVirtualWallListRequest.Constants = {
  WORLD: 0,
  IMAGE: 1,
}

class AddVirtualWallListResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.wall_list = null;
      this.success = null;
      this.error_code = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('wall_list')) {
        this.wall_list = initObj.wall_list
      }
      else {
        this.wall_list = [];
      }
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
    // Serializes a message object of type AddVirtualWallListResponse
    // Serialize message field [wall_list]
    // Serialize the length for message field [wall_list]
    bufferOffset = _serializer.uint32(obj.wall_list.length, buffer, bufferOffset);
    obj.wall_list.forEach((val) => {
      bufferOffset = VirtualWall.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [error_code]
    bufferOffset = _serializer.uint8(obj.error_code, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AddVirtualWallListResponse
    let len;
    let data = new AddVirtualWallListResponse(null);
    // Deserialize message field [wall_list]
    // Deserialize array length for message field [wall_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.wall_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.wall_list[i] = VirtualWall.deserialize(buffer, bufferOffset)
    }
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
    object.wall_list.forEach((val) => {
      length += VirtualWall.getMessageSize(val);
    });
    length += _getByteLength(object.message);
    return length + 10;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robint_msgs/AddVirtualWallListResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5b5e41385d0a490b9a64ae934467fab4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    VirtualWall[] wall_list
    bool success
    uint8 error_code
    string message
    
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
    const resolved = new AddVirtualWallListResponse(null);
    if (msg.wall_list !== undefined) {
      resolved.wall_list = new Array(msg.wall_list.length);
      for (let i = 0; i < resolved.wall_list.length; ++i) {
        resolved.wall_list[i] = VirtualWall.Resolve(msg.wall_list[i]);
      }
    }
    else {
      resolved.wall_list = []
    }

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
  Request: AddVirtualWallListRequest,
  Response: AddVirtualWallListResponse,
  md5sum() { return 'ff80a94140a7d80f384e6be93d5f2838'; },
  datatype() { return 'robint_msgs/AddVirtualWallList'; }
};
