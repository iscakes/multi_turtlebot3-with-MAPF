// Auto-generated. Do not edit!

// (in-package robint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let PathWithPoint = require('./PathWithPoint.js');

//-----------------------------------------------------------

class CleaningArea {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.uuid = null;
      this.name = null;
      this.map_uuid = null;
      this.group_uuid = null;
      this.coverage_method = null;
      this.contour = null;
      this.paths = null;
      this.holes = null;
    }
    else {
      if (initObj.hasOwnProperty('uuid')) {
        this.uuid = initObj.uuid
      }
      else {
        this.uuid = '';
      }
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('map_uuid')) {
        this.map_uuid = initObj.map_uuid
      }
      else {
        this.map_uuid = '';
      }
      if (initObj.hasOwnProperty('group_uuid')) {
        this.group_uuid = initObj.group_uuid
      }
      else {
        this.group_uuid = '';
      }
      if (initObj.hasOwnProperty('coverage_method')) {
        this.coverage_method = initObj.coverage_method
      }
      else {
        this.coverage_method = '';
      }
      if (initObj.hasOwnProperty('contour')) {
        this.contour = initObj.contour
      }
      else {
        this.contour = new PathWithPoint();
      }
      if (initObj.hasOwnProperty('paths')) {
        this.paths = initObj.paths
      }
      else {
        this.paths = [];
      }
      if (initObj.hasOwnProperty('holes')) {
        this.holes = initObj.holes
      }
      else {
        this.holes = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CleaningArea
    // Serialize message field [uuid]
    bufferOffset = _serializer.string(obj.uuid, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [map_uuid]
    bufferOffset = _serializer.string(obj.map_uuid, buffer, bufferOffset);
    // Serialize message field [group_uuid]
    bufferOffset = _serializer.string(obj.group_uuid, buffer, bufferOffset);
    // Serialize message field [coverage_method]
    bufferOffset = _serializer.string(obj.coverage_method, buffer, bufferOffset);
    // Serialize message field [contour]
    bufferOffset = PathWithPoint.serialize(obj.contour, buffer, bufferOffset);
    // Serialize message field [paths]
    // Serialize the length for message field [paths]
    bufferOffset = _serializer.uint32(obj.paths.length, buffer, bufferOffset);
    obj.paths.forEach((val) => {
      bufferOffset = PathWithPoint.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [holes]
    // Serialize the length for message field [holes]
    bufferOffset = _serializer.uint32(obj.holes.length, buffer, bufferOffset);
    obj.holes.forEach((val) => {
      bufferOffset = PathWithPoint.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CleaningArea
    let len;
    let data = new CleaningArea(null);
    // Deserialize message field [uuid]
    data.uuid = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [map_uuid]
    data.map_uuid = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [group_uuid]
    data.group_uuid = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [coverage_method]
    data.coverage_method = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [contour]
    data.contour = PathWithPoint.deserialize(buffer, bufferOffset);
    // Deserialize message field [paths]
    // Deserialize array length for message field [paths]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.paths = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.paths[i] = PathWithPoint.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [holes]
    // Deserialize array length for message field [holes]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.holes = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.holes[i] = PathWithPoint.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.uuid);
    length += _getByteLength(object.name);
    length += _getByteLength(object.map_uuid);
    length += _getByteLength(object.group_uuid);
    length += _getByteLength(object.coverage_method);
    length += PathWithPoint.getMessageSize(object.contour);
    object.paths.forEach((val) => {
      length += PathWithPoint.getMessageSize(val);
    });
    object.holes.forEach((val) => {
      length += PathWithPoint.getMessageSize(val);
    });
    return length + 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robint_msgs/CleaningArea';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd085d456f94676961740fbaa496c8e73';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new CleaningArea(null);
    if (msg.uuid !== undefined) {
      resolved.uuid = msg.uuid;
    }
    else {
      resolved.uuid = ''
    }

    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.map_uuid !== undefined) {
      resolved.map_uuid = msg.map_uuid;
    }
    else {
      resolved.map_uuid = ''
    }

    if (msg.group_uuid !== undefined) {
      resolved.group_uuid = msg.group_uuid;
    }
    else {
      resolved.group_uuid = ''
    }

    if (msg.coverage_method !== undefined) {
      resolved.coverage_method = msg.coverage_method;
    }
    else {
      resolved.coverage_method = ''
    }

    if (msg.contour !== undefined) {
      resolved.contour = PathWithPoint.Resolve(msg.contour)
    }
    else {
      resolved.contour = new PathWithPoint()
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

    if (msg.holes !== undefined) {
      resolved.holes = new Array(msg.holes.length);
      for (let i = 0; i < resolved.holes.length; ++i) {
        resolved.holes[i] = PathWithPoint.Resolve(msg.holes[i]);
      }
    }
    else {
      resolved.holes = []
    }

    return resolved;
    }
};

module.exports = CleaningArea;
