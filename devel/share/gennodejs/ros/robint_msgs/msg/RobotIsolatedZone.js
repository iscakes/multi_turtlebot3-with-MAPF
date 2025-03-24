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

class RobotIsolatedZone {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.zone_uuid = null;
      this.robot_list = null;
    }
    else {
      if (initObj.hasOwnProperty('zone_uuid')) {
        this.zone_uuid = initObj.zone_uuid
      }
      else {
        this.zone_uuid = '';
      }
      if (initObj.hasOwnProperty('robot_list')) {
        this.robot_list = initObj.robot_list
      }
      else {
        this.robot_list = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RobotIsolatedZone
    // Serialize message field [zone_uuid]
    bufferOffset = _serializer.string(obj.zone_uuid, buffer, bufferOffset);
    // Serialize message field [robot_list]
    bufferOffset = _arraySerializer.string(obj.robot_list, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotIsolatedZone
    let len;
    let data = new RobotIsolatedZone(null);
    // Deserialize message field [zone_uuid]
    data.zone_uuid = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [robot_list]
    data.robot_list = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.zone_uuid);
    object.robot_list.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robint_msgs/RobotIsolatedZone';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ae9554ce58aef29ade4877f7ded80370';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string zone_uuid
    string[] robot_list
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RobotIsolatedZone(null);
    if (msg.zone_uuid !== undefined) {
      resolved.zone_uuid = msg.zone_uuid;
    }
    else {
      resolved.zone_uuid = ''
    }

    if (msg.robot_list !== undefined) {
      resolved.robot_list = msg.robot_list;
    }
    else {
      resolved.robot_list = []
    }

    return resolved;
    }
};

module.exports = RobotIsolatedZone;
