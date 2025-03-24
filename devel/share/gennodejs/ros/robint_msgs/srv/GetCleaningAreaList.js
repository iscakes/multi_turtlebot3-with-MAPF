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

let CleaningArea = require('../msg/CleaningArea.js');

//-----------------------------------------------------------

class GetCleaningAreaListRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.map_uuid = null;
      this.coordinate_mode = null;
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetCleaningAreaListRequest
    // Serialize message field [map_uuid]
    bufferOffset = _serializer.string(obj.map_uuid, buffer, bufferOffset);
    // Serialize message field [coordinate_mode]
    bufferOffset = _serializer.uint8(obj.coordinate_mode, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetCleaningAreaListRequest
    let len;
    let data = new GetCleaningAreaListRequest(null);
    // Deserialize message field [map_uuid]
    data.map_uuid = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [coordinate_mode]
    data.coordinate_mode = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.map_uuid);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robint_msgs/GetCleaningAreaListRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c005ae0ccdf75fba08d9abbc1cea2fb8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string map_uuid
    uint8 coordinate_mode
    uint8 IMAGE=0
    uint8 WORLD=1
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetCleaningAreaListRequest(null);
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

    return resolved;
    }
};

// Constants for message
GetCleaningAreaListRequest.Constants = {
  IMAGE: 0,
  WORLD: 1,
}

class GetCleaningAreaListResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.area_list = null;
      this.success = null;
      this.error_code = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('area_list')) {
        this.area_list = initObj.area_list
      }
      else {
        this.area_list = [];
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
    // Serializes a message object of type GetCleaningAreaListResponse
    // Serialize message field [area_list]
    // Serialize the length for message field [area_list]
    bufferOffset = _serializer.uint32(obj.area_list.length, buffer, bufferOffset);
    obj.area_list.forEach((val) => {
      bufferOffset = CleaningArea.serialize(val, buffer, bufferOffset);
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
    //deserializes a message object of type GetCleaningAreaListResponse
    let len;
    let data = new GetCleaningAreaListResponse(null);
    // Deserialize message field [area_list]
    // Deserialize array length for message field [area_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.area_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.area_list[i] = CleaningArea.deserialize(buffer, bufferOffset)
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
    object.area_list.forEach((val) => {
      length += CleaningArea.getMessageSize(val);
    });
    length += _getByteLength(object.message);
    return length + 10;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robint_msgs/GetCleaningAreaListResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd87bd1e24980d36f072a517f12a8d667';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    CleaningArea[] area_list
    bool success
    uint8 error_code
    string message
    
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
    const resolved = new GetCleaningAreaListResponse(null);
    if (msg.area_list !== undefined) {
      resolved.area_list = new Array(msg.area_list.length);
      for (let i = 0; i < resolved.area_list.length; ++i) {
        resolved.area_list[i] = CleaningArea.Resolve(msg.area_list[i]);
      }
    }
    else {
      resolved.area_list = []
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
  Request: GetCleaningAreaListRequest,
  Response: GetCleaningAreaListResponse,
  md5sum() { return '553fc9d22a1c98218e5830b3a4d1e80c'; },
  datatype() { return 'robint_msgs/GetCleaningAreaList'; }
};
