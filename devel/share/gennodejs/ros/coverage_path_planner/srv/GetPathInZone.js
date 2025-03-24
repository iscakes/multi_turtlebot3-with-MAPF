// Auto-generated. Do not edit!

// (in-package coverage_path_planner.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let nav_msgs = _finder('nav_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class GetPathInZoneRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.zone = null;
      this.type = null;
    }
    else {
      if (initObj.hasOwnProperty('zone')) {
        this.zone = initObj.zone
      }
      else {
        this.zone = new nav_msgs.msg.Path();
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetPathInZoneRequest
    // Serialize message field [zone]
    bufferOffset = nav_msgs.msg.Path.serialize(obj.zone, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.uint8(obj.type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetPathInZoneRequest
    let len;
    let data = new GetPathInZoneRequest(null);
    // Deserialize message field [zone]
    data.zone = nav_msgs.msg.Path.deserialize(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += nav_msgs.msg.Path.getMessageSize(object.zone);
    return length + 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'coverage_path_planner/GetPathInZoneRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd0b1bbcd2d5838cf2f79c1b2afc069d1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    nav_msgs/Path zone
    uint8 type # 0 - zigzag; 1 - backshaped
    
    ================================================================================
    MSG: nav_msgs/Path
    #An array of poses that represents a Path for a robot to follow
    Header header
    geometry_msgs/PoseStamped[] poses
    
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
    MSG: geometry_msgs/PoseStamped
    # A Pose with reference coordinate frame and timestamp
    Header header
    Pose pose
    
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
    const resolved = new GetPathInZoneRequest(null);
    if (msg.zone !== undefined) {
      resolved.zone = nav_msgs.msg.Path.Resolve(msg.zone)
    }
    else {
      resolved.zone = new nav_msgs.msg.Path()
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    return resolved;
    }
};

class GetPathInZoneResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.coverage_paths = null;
    }
    else {
      if (initObj.hasOwnProperty('coverage_paths')) {
        this.coverage_paths = initObj.coverage_paths
      }
      else {
        this.coverage_paths = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetPathInZoneResponse
    // Serialize message field [coverage_paths]
    // Serialize the length for message field [coverage_paths]
    bufferOffset = _serializer.uint32(obj.coverage_paths.length, buffer, bufferOffset);
    obj.coverage_paths.forEach((val) => {
      bufferOffset = nav_msgs.msg.Path.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetPathInZoneResponse
    let len;
    let data = new GetPathInZoneResponse(null);
    // Deserialize message field [coverage_paths]
    // Deserialize array length for message field [coverage_paths]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.coverage_paths = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.coverage_paths[i] = nav_msgs.msg.Path.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.coverage_paths.forEach((val) => {
      length += nav_msgs.msg.Path.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'coverage_path_planner/GetPathInZoneResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '35a09457b4b2c3f886f999cab75e4391';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    nav_msgs/Path[] coverage_paths
    
    
    ================================================================================
    MSG: nav_msgs/Path
    #An array of poses that represents a Path for a robot to follow
    Header header
    geometry_msgs/PoseStamped[] poses
    
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
    MSG: geometry_msgs/PoseStamped
    # A Pose with reference coordinate frame and timestamp
    Header header
    Pose pose
    
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
    const resolved = new GetPathInZoneResponse(null);
    if (msg.coverage_paths !== undefined) {
      resolved.coverage_paths = new Array(msg.coverage_paths.length);
      for (let i = 0; i < resolved.coverage_paths.length; ++i) {
        resolved.coverage_paths[i] = nav_msgs.msg.Path.Resolve(msg.coverage_paths[i]);
      }
    }
    else {
      resolved.coverage_paths = []
    }

    return resolved;
    }
};

module.exports = {
  Request: GetPathInZoneRequest,
  Response: GetPathInZoneResponse,
  md5sum() { return 'a62f47b7218351dab297d7590620e91a'; },
  datatype() { return 'coverage_path_planner/GetPathInZone'; }
};
