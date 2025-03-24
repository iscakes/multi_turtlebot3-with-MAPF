// Auto-generated. Do not edit!

// (in-package robint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let VirtualWall = require('./VirtualWall.js');

//-----------------------------------------------------------

class VirtualWallList {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.wall_list = null;
    }
    else {
      if (initObj.hasOwnProperty('wall_list')) {
        this.wall_list = initObj.wall_list
      }
      else {
        this.wall_list = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VirtualWallList
    // Serialize message field [wall_list]
    // Serialize the length for message field [wall_list]
    bufferOffset = _serializer.uint32(obj.wall_list.length, buffer, bufferOffset);
    obj.wall_list.forEach((val) => {
      bufferOffset = VirtualWall.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VirtualWallList
    let len;
    let data = new VirtualWallList(null);
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
    object.wall_list.forEach((val) => {
      length += VirtualWall.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robint_msgs/VirtualWallList';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e31dc94ec8c76c82853f300c24dbb707';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new VirtualWallList(null);
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

module.exports = VirtualWallList;
