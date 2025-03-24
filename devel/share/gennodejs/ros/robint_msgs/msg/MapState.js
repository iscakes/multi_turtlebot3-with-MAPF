// Auto-generated. Do not edit!

// (in-package robint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class MapState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.floor_id = null;
    }
    else {
      if (initObj.hasOwnProperty('floor_id')) {
        this.floor_id = initObj.floor_id
      }
      else {
        this.floor_id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MapState
    // Serialize message field [floor_id]
    bufferOffset = _serializer.int32(obj.floor_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MapState
    let len;
    let data = new MapState(null);
    // Deserialize message field [floor_id]
    data.floor_id = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robint_msgs/MapState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '91a758fc98f221cf5356ea3023ec3f39';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 floor_id
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MapState(null);
    if (msg.floor_id !== undefined) {
      resolved.floor_id = msg.floor_id;
    }
    else {
      resolved.floor_id = 0
    }

    return resolved;
    }
};

module.exports = MapState;
