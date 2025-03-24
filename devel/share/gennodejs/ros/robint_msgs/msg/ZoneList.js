// Auto-generated. Do not edit!

// (in-package robint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Zone = require('./Zone.js');

//-----------------------------------------------------------

class ZoneList {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.zone_list = null;
    }
    else {
      if (initObj.hasOwnProperty('zone_list')) {
        this.zone_list = initObj.zone_list
      }
      else {
        this.zone_list = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ZoneList
    // Serialize message field [zone_list]
    // Serialize the length for message field [zone_list]
    bufferOffset = _serializer.uint32(obj.zone_list.length, buffer, bufferOffset);
    obj.zone_list.forEach((val) => {
      bufferOffset = Zone.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ZoneList
    let len;
    let data = new ZoneList(null);
    // Deserialize message field [zone_list]
    // Deserialize array length for message field [zone_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.zone_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.zone_list[i] = Zone.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.zone_list.forEach((val) => {
      length += Zone.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robint_msgs/ZoneList';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '78e20121c12878622efd248cb2a92c84';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Zone[] zone_list
    ================================================================================
    MSG: robint_msgs/Zone
    string uuid
    string name
    string map_uuid
    string group_uuid
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
    const resolved = new ZoneList(null);
    if (msg.zone_list !== undefined) {
      resolved.zone_list = new Array(msg.zone_list.length);
      for (let i = 0; i < resolved.zone_list.length; ++i) {
        resolved.zone_list[i] = Zone.Resolve(msg.zone_list[i]);
      }
    }
    else {
      resolved.zone_list = []
    }

    return resolved;
    }
};

module.exports = ZoneList;
