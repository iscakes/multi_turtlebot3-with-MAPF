// Auto-generated. Do not edit!

// (in-package robint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class ExplorationGoal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.map_originX = null;
      this.map_originY = null;
      this.map_width = null;
      this.map_height = null;
      this.map_resolution = null;
      this.points = null;
    }
    else {
      if (initObj.hasOwnProperty('map_originX')) {
        this.map_originX = initObj.map_originX
      }
      else {
        this.map_originX = 0.0;
      }
      if (initObj.hasOwnProperty('map_originY')) {
        this.map_originY = initObj.map_originY
      }
      else {
        this.map_originY = 0.0;
      }
      if (initObj.hasOwnProperty('map_width')) {
        this.map_width = initObj.map_width
      }
      else {
        this.map_width = 0;
      }
      if (initObj.hasOwnProperty('map_height')) {
        this.map_height = initObj.map_height
      }
      else {
        this.map_height = 0;
      }
      if (initObj.hasOwnProperty('map_resolution')) {
        this.map_resolution = initObj.map_resolution
      }
      else {
        this.map_resolution = 0.0;
      }
      if (initObj.hasOwnProperty('points')) {
        this.points = initObj.points
      }
      else {
        this.points = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ExplorationGoal
    // Serialize message field [map_originX]
    bufferOffset = _serializer.float32(obj.map_originX, buffer, bufferOffset);
    // Serialize message field [map_originY]
    bufferOffset = _serializer.float32(obj.map_originY, buffer, bufferOffset);
    // Serialize message field [map_width]
    bufferOffset = _serializer.uint32(obj.map_width, buffer, bufferOffset);
    // Serialize message field [map_height]
    bufferOffset = _serializer.uint32(obj.map_height, buffer, bufferOffset);
    // Serialize message field [map_resolution]
    bufferOffset = _serializer.float32(obj.map_resolution, buffer, bufferOffset);
    // Serialize message field [points]
    // Serialize the length for message field [points]
    bufferOffset = _serializer.uint32(obj.points.length, buffer, bufferOffset);
    obj.points.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ExplorationGoal
    let len;
    let data = new ExplorationGoal(null);
    // Deserialize message field [map_originX]
    data.map_originX = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [map_originY]
    data.map_originY = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [map_width]
    data.map_width = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [map_height]
    data.map_height = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [map_resolution]
    data.map_resolution = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [points]
    // Deserialize array length for message field [points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.points[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 24 * object.points.length;
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robint_msgs/ExplorationGoal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e071b18ba3db984910845497c9be477d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 map_originX
    float32 map_originY
    uint32 map_width
    uint32 map_height
    float32 map_resolution
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
    const resolved = new ExplorationGoal(null);
    if (msg.map_originX !== undefined) {
      resolved.map_originX = msg.map_originX;
    }
    else {
      resolved.map_originX = 0.0
    }

    if (msg.map_originY !== undefined) {
      resolved.map_originY = msg.map_originY;
    }
    else {
      resolved.map_originY = 0.0
    }

    if (msg.map_width !== undefined) {
      resolved.map_width = msg.map_width;
    }
    else {
      resolved.map_width = 0
    }

    if (msg.map_height !== undefined) {
      resolved.map_height = msg.map_height;
    }
    else {
      resolved.map_height = 0
    }

    if (msg.map_resolution !== undefined) {
      resolved.map_resolution = msg.map_resolution;
    }
    else {
      resolved.map_resolution = 0.0
    }

    if (msg.points !== undefined) {
      resolved.points = new Array(msg.points.length);
      for (let i = 0; i < resolved.points.length; ++i) {
        resolved.points[i] = geometry_msgs.msg.Point.Resolve(msg.points[i]);
      }
    }
    else {
      resolved.points = []
    }

    return resolved;
    }
};

module.exports = ExplorationGoal;
