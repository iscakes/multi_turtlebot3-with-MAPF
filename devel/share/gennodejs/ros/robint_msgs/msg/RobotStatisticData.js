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

class RobotStatisticData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.travel_mileage = null;
    }
    else {
      if (initObj.hasOwnProperty('travel_mileage')) {
        this.travel_mileage = initObj.travel_mileage
      }
      else {
        this.travel_mileage = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RobotStatisticData
    // Serialize message field [travel_mileage]
    bufferOffset = _serializer.uint64(obj.travel_mileage, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotStatisticData
    let len;
    let data = new RobotStatisticData(null);
    // Deserialize message field [travel_mileage]
    data.travel_mileage = _deserializer.uint64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robint_msgs/RobotStatisticData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2895568322646d2b22600ac707f3da07';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint64 travel_mileage
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RobotStatisticData(null);
    if (msg.travel_mileage !== undefined) {
      resolved.travel_mileage = msg.travel_mileage;
    }
    else {
      resolved.travel_mileage = 0
    }

    return resolved;
    }
};

module.exports = RobotStatisticData;
