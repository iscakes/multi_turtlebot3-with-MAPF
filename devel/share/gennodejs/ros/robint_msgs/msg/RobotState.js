// Auto-generated. Do not edit!

// (in-package robint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let RobotVersionInfo = require('./RobotVersionInfo.js');
let RobotPose = require('./RobotPose.js');
let RobotStatisticData = require('./RobotStatisticData.js');
let StateDiagnostic = require('./StateDiagnostic.js');

//-----------------------------------------------------------

class RobotState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.map_name = null;
      this.version_info = null;
      this.pose = null;
      this.stat_data = null;
      this.diagnostic_array = null;
    }
    else {
      if (initObj.hasOwnProperty('map_name')) {
        this.map_name = initObj.map_name
      }
      else {
        this.map_name = '';
      }
      if (initObj.hasOwnProperty('version_info')) {
        this.version_info = initObj.version_info
      }
      else {
        this.version_info = new RobotVersionInfo();
      }
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new RobotPose();
      }
      if (initObj.hasOwnProperty('stat_data')) {
        this.stat_data = initObj.stat_data
      }
      else {
        this.stat_data = new RobotStatisticData();
      }
      if (initObj.hasOwnProperty('diagnostic_array')) {
        this.diagnostic_array = initObj.diagnostic_array
      }
      else {
        this.diagnostic_array = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RobotState
    // Serialize message field [map_name]
    bufferOffset = _serializer.string(obj.map_name, buffer, bufferOffset);
    // Serialize message field [version_info]
    bufferOffset = RobotVersionInfo.serialize(obj.version_info, buffer, bufferOffset);
    // Serialize message field [pose]
    bufferOffset = RobotPose.serialize(obj.pose, buffer, bufferOffset);
    // Serialize message field [stat_data]
    bufferOffset = RobotStatisticData.serialize(obj.stat_data, buffer, bufferOffset);
    // Serialize message field [diagnostic_array]
    // Serialize the length for message field [diagnostic_array]
    bufferOffset = _serializer.uint32(obj.diagnostic_array.length, buffer, bufferOffset);
    obj.diagnostic_array.forEach((val) => {
      bufferOffset = StateDiagnostic.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotState
    let len;
    let data = new RobotState(null);
    // Deserialize message field [map_name]
    data.map_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [version_info]
    data.version_info = RobotVersionInfo.deserialize(buffer, bufferOffset);
    // Deserialize message field [pose]
    data.pose = RobotPose.deserialize(buffer, bufferOffset);
    // Deserialize message field [stat_data]
    data.stat_data = RobotStatisticData.deserialize(buffer, bufferOffset);
    // Deserialize message field [diagnostic_array]
    // Deserialize array length for message field [diagnostic_array]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.diagnostic_array = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.diagnostic_array[i] = StateDiagnostic.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.map_name);
    length += RobotVersionInfo.getMessageSize(object.version_info);
    length += RobotPose.getMessageSize(object.pose);
    object.diagnostic_array.forEach((val) => {
      length += StateDiagnostic.getMessageSize(val);
    });
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robint_msgs/RobotState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '18f0497a45a77f9f7d5f4d7a5d6b1348';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string map_name  # floor_id
    RobotVersionInfo version_info
    RobotPose pose
    RobotStatisticData stat_data
    StateDiagnostic[] diagnostic_array
    ================================================================================
    MSG: robint_msgs/RobotVersionInfo
    string robot_id
    string firmware_version
    ================================================================================
    MSG: robint_msgs/RobotPose
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
    
    ================================================================================
    MSG: robint_msgs/RobotStatisticData
    uint64 travel_mileage
    ================================================================================
    MSG: robint_msgs/StateDiagnostic
    string hardware_name
    bool is_ok
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RobotState(null);
    if (msg.map_name !== undefined) {
      resolved.map_name = msg.map_name;
    }
    else {
      resolved.map_name = ''
    }

    if (msg.version_info !== undefined) {
      resolved.version_info = RobotVersionInfo.Resolve(msg.version_info)
    }
    else {
      resolved.version_info = new RobotVersionInfo()
    }

    if (msg.pose !== undefined) {
      resolved.pose = RobotPose.Resolve(msg.pose)
    }
    else {
      resolved.pose = new RobotPose()
    }

    if (msg.stat_data !== undefined) {
      resolved.stat_data = RobotStatisticData.Resolve(msg.stat_data)
    }
    else {
      resolved.stat_data = new RobotStatisticData()
    }

    if (msg.diagnostic_array !== undefined) {
      resolved.diagnostic_array = new Array(msg.diagnostic_array.length);
      for (let i = 0; i < resolved.diagnostic_array.length; ++i) {
        resolved.diagnostic_array[i] = StateDiagnostic.Resolve(msg.diagnostic_array[i]);
      }
    }
    else {
      resolved.diagnostic_array = []
    }

    return resolved;
    }
};

module.exports = RobotState;
