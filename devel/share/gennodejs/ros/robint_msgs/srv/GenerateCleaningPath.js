// Auto-generated. Do not edit!

// (in-package robint_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let CleaningArea = require('../msg/CleaningArea.js');

//-----------------------------------------------------------

let PathWithPoint = require('../msg/PathWithPoint.js');

//-----------------------------------------------------------

class GenerateCleaningPathRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.map_uuid = null;
      this.coordinate_mode = null;
      this.method = null;
      this.area = null;
    }
    else {
      if (initObj.hasOwnProperty('map_uuid')) {
        this.map_uuid = initObj.map_uuid
      }
      else {
        this.map_uuid = '';
      }
      if (initObj.hasOwnProperty('coordinate_mode')) {
        this.coordinate_mode = initObj.coordinate_mode
      }
      else {
        this.coordinate_mode = 0;
      }
      if (initObj.hasOwnProperty('method')) {
        this.method = initObj.method
      }
      else {
        this.method = 0;
      }
      if (initObj.hasOwnProperty('area')) {
        this.area = initObj.area
      }
      else {
        this.area = new CleaningArea();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GenerateCleaningPathRequest
    // Serialize message field [map_uuid]
    bufferOffset = _serializer.string(obj.map_uuid, buffer, bufferOffset);
    // Serialize message field [coordinate_mode]
    bufferOffset = _serializer.uint8(obj.coordinate_mode, buffer, bufferOffset);
    // Serialize message field [method]
    bufferOffset = _serializer.uint8(obj.method, buffer, bufferOffset);
    // Serialize message field [area]
    bufferOffset = CleaningArea.serialize(obj.area, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GenerateCleaningPathRequest
    let len;
    let data = new GenerateCleaningPathRequest(null);
    // Deserialize message field [map_uuid]
    data.map_uuid = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [coordinate_mode]
    data.coordinate_mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [method]
    data.method = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [area]
    data.area = CleaningArea.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.map_uuid);
    length += CleaningArea.getMessageSize(object.area);
    return length + 6;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robint_msgs/GenerateCleaningPathRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '49bbbc630dc7153d64c3125acc0ddc62';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string map_uuid
    uint8 coordinate_mode
    uint8 WORLD=0
    uint8 IMAGE=1
    uint8 method
    uint8 BOUSTROPHEDON=21
    uint8 CONTOUR_LINE=22
    uint8 STRIP_LINE=23
    uint8 RECTANGLE_ZIGZAG=24
    uint8 CONTOUR_PARALLEL=25
    uint8 METHOD_TEST=26
    CleaningArea area
    
    ================================================================================
    MSG: robint_msgs/CleaningArea
    string uuid
    string name
    string map_uuid
    string group_uuid
    string coverage_method
    PathWithPoint contour
    PathWithPoint[] paths
    PathWithPoint[] holes
    ================================================================================
    MSG: robint_msgs/PathWithPoint
    uint32 id
    string type
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
    const resolved = new GenerateCleaningPathRequest(null);
    if (msg.map_uuid !== undefined) {
      resolved.map_uuid = msg.map_uuid;
    }
    else {
      resolved.map_uuid = ''
    }

    if (msg.coordinate_mode !== undefined) {
      resolved.coordinate_mode = msg.coordinate_mode;
    }
    else {
      resolved.coordinate_mode = 0
    }

    if (msg.method !== undefined) {
      resolved.method = msg.method;
    }
    else {
      resolved.method = 0
    }

    if (msg.area !== undefined) {
      resolved.area = CleaningArea.Resolve(msg.area)
    }
    else {
      resolved.area = new CleaningArea()
    }

    return resolved;
    }
};

// Constants for message
GenerateCleaningPathRequest.Constants = {
  WORLD: 0,
  IMAGE: 1,
  BOUSTROPHEDON: 21,
  CONTOUR_LINE: 22,
  STRIP_LINE: 23,
  RECTANGLE_ZIGZAG: 24,
  CONTOUR_PARALLEL: 25,
  METHOD_TEST: 26,
}

class GenerateCleaningPathResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.coordinate_mode = null;
      this.paths = null;
      this.success = null;
      this.error_code = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('coordinate_mode')) {
        this.coordinate_mode = initObj.coordinate_mode
      }
      else {
        this.coordinate_mode = 0;
      }
      if (initObj.hasOwnProperty('paths')) {
        this.paths = initObj.paths
      }
      else {
        this.paths = [];
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
    // Serializes a message object of type GenerateCleaningPathResponse
    // Serialize message field [coordinate_mode]
    bufferOffset = _serializer.uint8(obj.coordinate_mode, buffer, bufferOffset);
    // Serialize message field [paths]
    // Serialize the length for message field [paths]
    bufferOffset = _serializer.uint32(obj.paths.length, buffer, bufferOffset);
    obj.paths.forEach((val) => {
      bufferOffset = PathWithPoint.serialize(val, buffer, bufferOffset);
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
    //deserializes a message object of type GenerateCleaningPathResponse
    let len;
    let data = new GenerateCleaningPathResponse(null);
    // Deserialize message field [coordinate_mode]
    data.coordinate_mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [paths]
    // Deserialize array length for message field [paths]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.paths = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.paths[i] = PathWithPoint.deserialize(buffer, bufferOffset)
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
    object.paths.forEach((val) => {
      length += PathWithPoint.getMessageSize(val);
    });
    length += _getByteLength(object.message);
    return length + 11;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robint_msgs/GenerateCleaningPathResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c96c0178ee444b2dfcbd51830ac65d31';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 coordinate_mode
    PathWithPoint[] paths
    bool success
    uint8 error_code
    string message
    
    ================================================================================
    MSG: robint_msgs/PathWithPoint
    uint32 id
    string type
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
    const resolved = new GenerateCleaningPathResponse(null);
    if (msg.coordinate_mode !== undefined) {
      resolved.coordinate_mode = msg.coordinate_mode;
    }
    else {
      resolved.coordinate_mode = 0
    }

    if (msg.paths !== undefined) {
      resolved.paths = new Array(msg.paths.length);
      for (let i = 0; i < resolved.paths.length; ++i) {
        resolved.paths[i] = PathWithPoint.Resolve(msg.paths[i]);
      }
    }
    else {
      resolved.paths = []
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
  Request: GenerateCleaningPathRequest,
  Response: GenerateCleaningPathResponse,
  md5sum() { return 'b0af0e138bf97ac889a840793d2c3bcf'; },
  datatype() { return 'robint_msgs/GenerateCleaningPath'; }
};
