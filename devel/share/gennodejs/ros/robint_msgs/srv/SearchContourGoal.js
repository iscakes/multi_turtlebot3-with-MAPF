// Auto-generated. Do not edit!

// (in-package robint_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let PathWithPoint = require('../msg/PathWithPoint.js');

//-----------------------------------------------------------

let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class SearchContourGoalRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.contour = null;
    }
    else {
      if (initObj.hasOwnProperty('contour')) {
        this.contour = initObj.contour
      }
      else {
        this.contour = new PathWithPoint();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SearchContourGoalRequest
    // Serialize message field [contour]
    bufferOffset = PathWithPoint.serialize(obj.contour, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SearchContourGoalRequest
    let len;
    let data = new SearchContourGoalRequest(null);
    // Deserialize message field [contour]
    data.contour = PathWithPoint.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += PathWithPoint.getMessageSize(object.contour);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robint_msgs/SearchContourGoalRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4222eabda1f0ef51c003c52a3744b624';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    PathWithPoint contour
    
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
    const resolved = new SearchContourGoalRequest(null);
    if (msg.contour !== undefined) {
      resolved.contour = PathWithPoint.Resolve(msg.contour)
    }
    else {
      resolved.contour = new PathWithPoint()
    }

    return resolved;
    }
};

class SearchContourGoalResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.goal_point = null;
      this.success = null;
      this.error_code = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('goal_point')) {
        this.goal_point = initObj.goal_point
      }
      else {
        this.goal_point = new geometry_msgs.msg.Point();
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
    // Serializes a message object of type SearchContourGoalResponse
    // Serialize message field [goal_point]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.goal_point, buffer, bufferOffset);
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [error_code]
    bufferOffset = _serializer.uint8(obj.error_code, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SearchContourGoalResponse
    let len;
    let data = new SearchContourGoalResponse(null);
    // Deserialize message field [goal_point]
    data.goal_point = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
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
    return length + 30;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robint_msgs/SearchContourGoalResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd51f3cc58e953f08ebd4182676e51747';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Point goal_point
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
    const resolved = new SearchContourGoalResponse(null);
    if (msg.goal_point !== undefined) {
      resolved.goal_point = geometry_msgs.msg.Point.Resolve(msg.goal_point)
    }
    else {
      resolved.goal_point = new geometry_msgs.msg.Point()
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
  Request: SearchContourGoalRequest,
  Response: SearchContourGoalResponse,
  md5sum() { return '03eee4fe4b2d2cff2b33a97e7e028c10'; },
  datatype() { return 'robint_msgs/SearchContourGoal'; }
};
