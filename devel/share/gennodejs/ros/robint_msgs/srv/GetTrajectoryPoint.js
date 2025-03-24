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

let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class GetTrajectoryPointRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.request_id = null;
      this.coordinate_mode = null;
    }
    else {
      if (initObj.hasOwnProperty('request_id')) {
        this.request_id = initObj.request_id
      }
      else {
        this.request_id = 0;
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
    // Serializes a message object of type GetTrajectoryPointRequest
    // Serialize message field [request_id]
    bufferOffset = _serializer.uint32(obj.request_id, buffer, bufferOffset);
    // Serialize message field [coordinate_mode]
    bufferOffset = _serializer.uint8(obj.coordinate_mode, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetTrajectoryPointRequest
    let len;
    let data = new GetTrajectoryPointRequest(null);
    // Deserialize message field [request_id]
    data.request_id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [coordinate_mode]
    data.coordinate_mode = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robint_msgs/GetTrajectoryPointRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6791409fa7c8ca779c22dd3ba8b38fc8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 request_id
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
    const resolved = new GetTrajectoryPointRequest(null);
    if (msg.request_id !== undefined) {
      resolved.request_id = msg.request_id;
    }
    else {
      resolved.request_id = 0
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
GetTrajectoryPointRequest.Constants = {
  IMAGE: 0,
  WORLD: 1,
}

class GetTrajectoryPointResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pt = null;
      this.current_id = null;
      this.total_points_number = null;
      this.success = null;
      this.error_code = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('pt')) {
        this.pt = initObj.pt
      }
      else {
        this.pt = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('current_id')) {
        this.current_id = initObj.current_id
      }
      else {
        this.current_id = 0;
      }
      if (initObj.hasOwnProperty('total_points_number')) {
        this.total_points_number = initObj.total_points_number
      }
      else {
        this.total_points_number = 0;
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
    // Serializes a message object of type GetTrajectoryPointResponse
    // Serialize message field [pt]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.pt, buffer, bufferOffset);
    // Serialize message field [current_id]
    bufferOffset = _serializer.uint32(obj.current_id, buffer, bufferOffset);
    // Serialize message field [total_points_number]
    bufferOffset = _serializer.uint32(obj.total_points_number, buffer, bufferOffset);
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [error_code]
    bufferOffset = _serializer.uint8(obj.error_code, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetTrajectoryPointResponse
    let len;
    let data = new GetTrajectoryPointResponse(null);
    // Deserialize message field [pt]
    data.pt = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [current_id]
    data.current_id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [total_points_number]
    data.total_points_number = _deserializer.uint32(buffer, bufferOffset);
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
    return length + 38;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robint_msgs/GetTrajectoryPointResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4ae0ddada152bda8cfe12a13e584f90d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Point pt
    uint32 current_id
    uint32 total_points_number
    bool success
    uint8 error_code
    string message
    
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
    const resolved = new GetTrajectoryPointResponse(null);
    if (msg.pt !== undefined) {
      resolved.pt = geometry_msgs.msg.Point.Resolve(msg.pt)
    }
    else {
      resolved.pt = new geometry_msgs.msg.Point()
    }

    if (msg.current_id !== undefined) {
      resolved.current_id = msg.current_id;
    }
    else {
      resolved.current_id = 0
    }

    if (msg.total_points_number !== undefined) {
      resolved.total_points_number = msg.total_points_number;
    }
    else {
      resolved.total_points_number = 0
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
  Request: GetTrajectoryPointRequest,
  Response: GetTrajectoryPointResponse,
  md5sum() { return '8fd56019054effcf13a55a60fa14c24c'; },
  datatype() { return 'robint_msgs/GetTrajectoryPoint'; }
};
