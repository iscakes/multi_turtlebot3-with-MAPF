// Auto-generated. Do not edit!

// (in-package robint_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class ConvertToImagePoseRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.map_uuid = null;
      this.pose = null;
    }
    else {
      if (initObj.hasOwnProperty('map_uuid')) {
        this.map_uuid = initObj.map_uuid
      }
      else {
        this.map_uuid = '';
      }
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.Pose();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ConvertToImagePoseRequest
    // Serialize message field [map_uuid]
    bufferOffset = _serializer.string(obj.map_uuid, buffer, bufferOffset);
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.pose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ConvertToImagePoseRequest
    let len;
    let data = new ConvertToImagePoseRequest(null);
    // Deserialize message field [map_uuid]
    data.map_uuid = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.map_uuid);
    return length + 60;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robint_msgs/ConvertToImagePoseRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f7f5ba711f2488cd973b90ac02618588';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string map_uuid
    geometry_msgs/Pose pose
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
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
    const resolved = new ConvertToImagePoseRequest(null);
    if (msg.map_uuid !== undefined) {
      resolved.map_uuid = msg.map_uuid;
    }
    else {
      resolved.map_uuid = ''
    }

    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.Pose.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.Pose()
    }

    return resolved;
    }
};

class ConvertToImagePoseResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.map_uuid = null;
      this.pose2d = null;
      this.error_code = null;
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('map_uuid')) {
        this.map_uuid = initObj.map_uuid
      }
      else {
        this.map_uuid = '';
      }
      if (initObj.hasOwnProperty('pose2d')) {
        this.pose2d = initObj.pose2d
      }
      else {
        this.pose2d = new geometry_msgs.msg.Pose2D();
      }
      if (initObj.hasOwnProperty('error_code')) {
        this.error_code = initObj.error_code
      }
      else {
        this.error_code = 0;
      }
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ConvertToImagePoseResponse
    // Serialize message field [map_uuid]
    bufferOffset = _serializer.string(obj.map_uuid, buffer, bufferOffset);
    // Serialize message field [pose2d]
    bufferOffset = geometry_msgs.msg.Pose2D.serialize(obj.pose2d, buffer, bufferOffset);
    // Serialize message field [error_code]
    bufferOffset = _serializer.uint8(obj.error_code, buffer, bufferOffset);
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ConvertToImagePoseResponse
    let len;
    let data = new ConvertToImagePoseResponse(null);
    // Deserialize message field [map_uuid]
    data.map_uuid = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [pose2d]
    data.pose2d = geometry_msgs.msg.Pose2D.deserialize(buffer, bufferOffset);
    // Deserialize message field [error_code]
    data.error_code = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.map_uuid);
    return length + 30;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robint_msgs/ConvertToImagePoseResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8e8e63de7baf18955c468fc994250b1a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string map_uuid
    geometry_msgs/Pose2D pose2d
    uint8 error_code
    bool success
    
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
    const resolved = new ConvertToImagePoseResponse(null);
    if (msg.map_uuid !== undefined) {
      resolved.map_uuid = msg.map_uuid;
    }
    else {
      resolved.map_uuid = ''
    }

    if (msg.pose2d !== undefined) {
      resolved.pose2d = geometry_msgs.msg.Pose2D.Resolve(msg.pose2d)
    }
    else {
      resolved.pose2d = new geometry_msgs.msg.Pose2D()
    }

    if (msg.error_code !== undefined) {
      resolved.error_code = msg.error_code;
    }
    else {
      resolved.error_code = 0
    }

    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    return resolved;
    }
};

module.exports = {
  Request: ConvertToImagePoseRequest,
  Response: ConvertToImagePoseResponse,
  md5sum() { return '98f246256c6be12ca761c5ac673adcea'; },
  datatype() { return 'robint_msgs/ConvertToImagePose'; }
};
