// Auto-generated. Do not edit!

// (in-package robint_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Location = require('../msg/Location.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class AddLocationRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.location_mode = null;
      this.location = null;
    }
    else {
      if (initObj.hasOwnProperty('location_mode')) {
        this.location_mode = initObj.location_mode
      }
      else {
        this.location_mode = 0;
      }
      if (initObj.hasOwnProperty('location')) {
        this.location = initObj.location
      }
      else {
        this.location = new Location();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AddLocationRequest
    // Serialize message field [location_mode]
    bufferOffset = _serializer.uint8(obj.location_mode, buffer, bufferOffset);
    // Serialize message field [location]
    bufferOffset = Location.serialize(obj.location, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AddLocationRequest
    let len;
    let data = new AddLocationRequest(null);
    // Deserialize message field [location_mode]
    data.location_mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [location]
    data.location = Location.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += Location.getMessageSize(object.location);
    return length + 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robint_msgs/AddLocationRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c6c1dc444c604e2002ca91a09f08841f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 location_mode
    uint8 WORLD=0
    uint8 IMAGE=1
    Location location
    
    ================================================================================
    MSG: robint_msgs/Location
    time timestamp
    string map_name
    string map_uuid
    string location_uuid
    string type_name
    string group_uuid
    string location_name
    geometry_msgs/Pose2D image_pose
    geometry_msgs/PoseStamped pose
    
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
    
    ================================================================================
    MSG: geometry_msgs/PoseStamped
    # A Pose with reference coordinate frame and timestamp
    Header header
    Pose pose
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
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
    const resolved = new AddLocationRequest(null);
    if (msg.location_mode !== undefined) {
      resolved.location_mode = msg.location_mode;
    }
    else {
      resolved.location_mode = 0
    }

    if (msg.location !== undefined) {
      resolved.location = Location.Resolve(msg.location)
    }
    else {
      resolved.location = new Location()
    }

    return resolved;
    }
};

// Constants for message
AddLocationRequest.Constants = {
  WORLD: 0,
  IMAGE: 1,
}

class AddLocationResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AddLocationResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AddLocationResponse
    let len;
    let data = new AddLocationResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robint_msgs/AddLocationResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '358e233cde0c8a8bcfea4ce193f8fc15';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AddLocationResponse(null);
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
  Request: AddLocationRequest,
  Response: AddLocationResponse,
  md5sum() { return 'e7bdfdb420d7c889969f8ee848aa57ec'; },
  datatype() { return 'robint_msgs/AddLocation'; }
};
