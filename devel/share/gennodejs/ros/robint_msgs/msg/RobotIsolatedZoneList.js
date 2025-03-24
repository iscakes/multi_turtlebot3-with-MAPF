// Auto-generated. Do not edit!

// (in-package robint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let RobotIsolatedZone = require('./RobotIsolatedZone.js');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class RobotIsolatedZoneList {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.robot_isolated_zone_list = null;
      this.self_isolated_zone_uuid = null;
      this.robot_pose = null;
    }
    else {
      if (initObj.hasOwnProperty('robot_isolated_zone_list')) {
        this.robot_isolated_zone_list = initObj.robot_isolated_zone_list
      }
      else {
        this.robot_isolated_zone_list = [];
      }
      if (initObj.hasOwnProperty('self_isolated_zone_uuid')) {
        this.self_isolated_zone_uuid = initObj.self_isolated_zone_uuid
      }
      else {
        this.self_isolated_zone_uuid = '';
      }
      if (initObj.hasOwnProperty('robot_pose')) {
        this.robot_pose = initObj.robot_pose
      }
      else {
        this.robot_pose = new geometry_msgs.msg.Pose2D();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RobotIsolatedZoneList
    // Serialize message field [robot_isolated_zone_list]
    // Serialize the length for message field [robot_isolated_zone_list]
    bufferOffset = _serializer.uint32(obj.robot_isolated_zone_list.length, buffer, bufferOffset);
    obj.robot_isolated_zone_list.forEach((val) => {
      bufferOffset = RobotIsolatedZone.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [self_isolated_zone_uuid]
    bufferOffset = _serializer.string(obj.self_isolated_zone_uuid, buffer, bufferOffset);
    // Serialize message field [robot_pose]
    bufferOffset = geometry_msgs.msg.Pose2D.serialize(obj.robot_pose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotIsolatedZoneList
    let len;
    let data = new RobotIsolatedZoneList(null);
    // Deserialize message field [robot_isolated_zone_list]
    // Deserialize array length for message field [robot_isolated_zone_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.robot_isolated_zone_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.robot_isolated_zone_list[i] = RobotIsolatedZone.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [self_isolated_zone_uuid]
    data.self_isolated_zone_uuid = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [robot_pose]
    data.robot_pose = geometry_msgs.msg.Pose2D.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.robot_isolated_zone_list.forEach((val) => {
      length += RobotIsolatedZone.getMessageSize(val);
    });
    length += _getByteLength(object.self_isolated_zone_uuid);
    return length + 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robint_msgs/RobotIsolatedZoneList';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9d0afd21c4c4da4af1d82820d14e63e6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    RobotIsolatedZone[] robot_isolated_zone_list
    string self_isolated_zone_uuid
    geometry_msgs/Pose2D robot_pose
    ================================================================================
    MSG: robint_msgs/RobotIsolatedZone
    string zone_uuid
    string[] robot_list
    ================================================================================
    MSG: geometry_msgs/Pose2D
    # Deprecated
    # Please use the full 3D pose.
    
    # In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.
    
    # If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.
    
    
    # This expresses a position and orientation on a 2D manifold.
    
    float64 x
    float64 y
    float64 theta
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RobotIsolatedZoneList(null);
    if (msg.robot_isolated_zone_list !== undefined) {
      resolved.robot_isolated_zone_list = new Array(msg.robot_isolated_zone_list.length);
      for (let i = 0; i < resolved.robot_isolated_zone_list.length; ++i) {
        resolved.robot_isolated_zone_list[i] = RobotIsolatedZone.Resolve(msg.robot_isolated_zone_list[i]);
      }
    }
    else {
      resolved.robot_isolated_zone_list = []
    }

    if (msg.self_isolated_zone_uuid !== undefined) {
      resolved.self_isolated_zone_uuid = msg.self_isolated_zone_uuid;
    }
    else {
      resolved.self_isolated_zone_uuid = ''
    }

    if (msg.robot_pose !== undefined) {
      resolved.robot_pose = geometry_msgs.msg.Pose2D.Resolve(msg.robot_pose)
    }
    else {
      resolved.robot_pose = new geometry_msgs.msg.Pose2D()
    }

    return resolved;
    }
};

module.exports = RobotIsolatedZoneList;
