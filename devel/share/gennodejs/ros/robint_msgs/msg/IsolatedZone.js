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
let IsolatedWait = require('./IsolatedWait.js');

//-----------------------------------------------------------

class IsolatedZone {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.zone = null;
      this.wait_points = null;
      this.next_task = null;
    }
    else {
      if (initObj.hasOwnProperty('zone')) {
        this.zone = initObj.zone
      }
      else {
        this.zone = new Zone();
      }
      if (initObj.hasOwnProperty('wait_points')) {
        this.wait_points = initObj.wait_points
      }
      else {
        this.wait_points = [];
      }
      if (initObj.hasOwnProperty('next_task')) {
        this.next_task = initObj.next_task
      }
      else {
        this.next_task = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type IsolatedZone
    // Serialize message field [zone]
    bufferOffset = Zone.serialize(obj.zone, buffer, bufferOffset);
    // Serialize message field [wait_points]
    // Serialize the length for message field [wait_points]
    bufferOffset = _serializer.uint32(obj.wait_points.length, buffer, bufferOffset);
    obj.wait_points.forEach((val) => {
      bufferOffset = IsolatedWait.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [next_task]
    bufferOffset = _serializer.string(obj.next_task, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type IsolatedZone
    let len;
    let data = new IsolatedZone(null);
    // Deserialize message field [zone]
    data.zone = Zone.deserialize(buffer, bufferOffset);
    // Deserialize message field [wait_points]
    // Deserialize array length for message field [wait_points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.wait_points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.wait_points[i] = IsolatedWait.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [next_task]
    data.next_task = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += Zone.getMessageSize(object.zone);
    object.wait_points.forEach((val) => {
      length += IsolatedWait.getMessageSize(val);
    });
    length += _getByteLength(object.next_task);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robint_msgs/IsolatedZone';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '42047e004f43f0c737c09962b5dbeda6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Zone zone
    IsolatedWait[] wait_points
    string next_task
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
    
    ================================================================================
    MSG: robint_msgs/IsolatedWait
    geometry_msgs/Pose pose
    string uuid
    bool direct
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new IsolatedZone(null);
    if (msg.zone !== undefined) {
      resolved.zone = Zone.Resolve(msg.zone)
    }
    else {
      resolved.zone = new Zone()
    }

    if (msg.wait_points !== undefined) {
      resolved.wait_points = new Array(msg.wait_points.length);
      for (let i = 0; i < resolved.wait_points.length; ++i) {
        resolved.wait_points[i] = IsolatedWait.Resolve(msg.wait_points[i]);
      }
    }
    else {
      resolved.wait_points = []
    }

    if (msg.next_task !== undefined) {
      resolved.next_task = msg.next_task;
    }
    else {
      resolved.next_task = ''
    }

    return resolved;
    }
};

module.exports = IsolatedZone;
