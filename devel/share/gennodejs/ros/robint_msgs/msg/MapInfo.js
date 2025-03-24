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

class MapInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.uuid = null;
      this.name = null;
      this.floor_id = null;
      this.building_id = null;
      this.time = null;
      this.origin = null;
      this.width = null;
      this.height = null;
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
      if (initObj.hasOwnProperty('floor_id')) {
        this.floor_id = initObj.floor_id
      }
      else {
        this.floor_id = '';
      }
      if (initObj.hasOwnProperty('building_id')) {
        this.building_id = initObj.building_id
      }
      else {
        this.building_id = '';
      }
      if (initObj.hasOwnProperty('time')) {
        this.time = initObj.time
      }
      else {
        this.time = '';
      }
      if (initObj.hasOwnProperty('origin')) {
        this.origin = initObj.origin
      }
      else {
        this.origin = [];
      }
      if (initObj.hasOwnProperty('width')) {
        this.width = initObj.width
      }
      else {
        this.width = 0;
      }
      if (initObj.hasOwnProperty('height')) {
        this.height = initObj.height
      }
      else {
        this.height = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MapInfo
    // Serialize message field [uuid]
    bufferOffset = _serializer.string(obj.uuid, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [floor_id]
    bufferOffset = _serializer.string(obj.floor_id, buffer, bufferOffset);
    // Serialize message field [building_id]
    bufferOffset = _serializer.string(obj.building_id, buffer, bufferOffset);
    // Serialize message field [time]
    bufferOffset = _serializer.string(obj.time, buffer, bufferOffset);
    // Serialize message field [origin]
    bufferOffset = _arraySerializer.float32(obj.origin, buffer, bufferOffset, null);
    // Serialize message field [width]
    bufferOffset = _serializer.uint32(obj.width, buffer, bufferOffset);
    // Serialize message field [height]
    bufferOffset = _serializer.uint32(obj.height, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MapInfo
    let len;
    let data = new MapInfo(null);
    // Deserialize message field [uuid]
    data.uuid = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [floor_id]
    data.floor_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [building_id]
    data.building_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [time]
    data.time = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [origin]
    data.origin = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [width]
    data.width = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [height]
    data.height = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.uuid);
    length += _getByteLength(object.name);
    length += _getByteLength(object.floor_id);
    length += _getByteLength(object.building_id);
    length += _getByteLength(object.time);
    length += 4 * object.origin.length;
    return length + 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robint_msgs/MapInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '25eff9fc3c56759ad869d6ff263f07dc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string uuid
    string name
    string floor_id
    string building_id
    string time
    float32[] origin
    uint32 width
    uint32 height
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MapInfo(null);
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

    if (msg.floor_id !== undefined) {
      resolved.floor_id = msg.floor_id;
    }
    else {
      resolved.floor_id = ''
    }

    if (msg.building_id !== undefined) {
      resolved.building_id = msg.building_id;
    }
    else {
      resolved.building_id = ''
    }

    if (msg.time !== undefined) {
      resolved.time = msg.time;
    }
    else {
      resolved.time = ''
    }

    if (msg.origin !== undefined) {
      resolved.origin = msg.origin;
    }
    else {
      resolved.origin = []
    }

    if (msg.width !== undefined) {
      resolved.width = msg.width;
    }
    else {
      resolved.width = 0
    }

    if (msg.height !== undefined) {
      resolved.height = msg.height;
    }
    else {
      resolved.height = 0
    }

    return resolved;
    }
};

module.exports = MapInfo;
