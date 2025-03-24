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

class RobotImagePose {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.map_uuid = null;
      this.image_pose = null;
      this.normal = null;
    }
    else {
      if (initObj.hasOwnProperty('map_uuid')) {
        this.map_uuid = initObj.map_uuid
      }
      else {
        this.map_uuid = '';
      }
      if (initObj.hasOwnProperty('image_pose')) {
        this.image_pose = initObj.image_pose
      }
      else {
        this.image_pose = new geometry_msgs.msg.Pose2D();
      }
      if (initObj.hasOwnProperty('normal')) {
        this.normal = initObj.normal
      }
      else {
        this.normal = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RobotImagePose
    // Serialize message field [map_uuid]
    bufferOffset = _serializer.string(obj.map_uuid, buffer, bufferOffset);
    // Serialize message field [image_pose]
    bufferOffset = geometry_msgs.msg.Pose2D.serialize(obj.image_pose, buffer, bufferOffset);
    // Serialize message field [normal]
    bufferOffset = _serializer.bool(obj.normal, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotImagePose
    let len;
    let data = new RobotImagePose(null);
    // Deserialize message field [map_uuid]
    data.map_uuid = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [image_pose]
    data.image_pose = geometry_msgs.msg.Pose2D.deserialize(buffer, bufferOffset);
    // Deserialize message field [normal]
    data.normal = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.map_uuid);
    return length + 29;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robint_msgs/RobotImagePose';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '63c6918d070f32a3168513d2d33658bd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string map_uuid
    geometry_msgs/Pose2D image_pose
    bool normal
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
    const resolved = new RobotImagePose(null);
    if (msg.map_uuid !== undefined) {
      resolved.map_uuid = msg.map_uuid;
    }
    else {
      resolved.map_uuid = ''
    }

    if (msg.image_pose !== undefined) {
      resolved.image_pose = geometry_msgs.msg.Pose2D.Resolve(msg.image_pose)
    }
    else {
      resolved.image_pose = new geometry_msgs.msg.Pose2D()
    }

    if (msg.normal !== undefined) {
      resolved.normal = msg.normal;
    }
    else {
      resolved.normal = false
    }

    return resolved;
    }
};

module.exports = RobotImagePose;
