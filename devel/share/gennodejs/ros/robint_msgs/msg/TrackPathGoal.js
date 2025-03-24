// Auto-generated. Do not edit!

// (in-package robint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let PathWithPose = require('./PathWithPose.js');
let PathWithPoint = require('./PathWithPoint.js');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class TrackPathGoal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.paths = null;
      this.boundary = null;
      this.mode = null;
      this.loop_count = null;
      this.track_back_dist = null;
      this.enable_path_interpolation = null;
      this.path_group_uuid = null;
      this.coverage_method = null;
      this.enable_break_point = null;
      this.break_robot_pose = null;
      this.break_subtask = null;
      this.break_loop_index = null;
    }
    else {
      if (initObj.hasOwnProperty('paths')) {
        this.paths = initObj.paths
      }
      else {
        this.paths = [];
      }
      if (initObj.hasOwnProperty('boundary')) {
        this.boundary = initObj.boundary
      }
      else {
        this.boundary = new PathWithPoint();
      }
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = 0;
      }
      if (initObj.hasOwnProperty('loop_count')) {
        this.loop_count = initObj.loop_count
      }
      else {
        this.loop_count = 0;
      }
      if (initObj.hasOwnProperty('track_back_dist')) {
        this.track_back_dist = initObj.track_back_dist
      }
      else {
        this.track_back_dist = 0.0;
      }
      if (initObj.hasOwnProperty('enable_path_interpolation')) {
        this.enable_path_interpolation = initObj.enable_path_interpolation
      }
      else {
        this.enable_path_interpolation = false;
      }
      if (initObj.hasOwnProperty('path_group_uuid')) {
        this.path_group_uuid = initObj.path_group_uuid
      }
      else {
        this.path_group_uuid = '';
      }
      if (initObj.hasOwnProperty('coverage_method')) {
        this.coverage_method = initObj.coverage_method
      }
      else {
        this.coverage_method = '';
      }
      if (initObj.hasOwnProperty('enable_break_point')) {
        this.enable_break_point = initObj.enable_break_point
      }
      else {
        this.enable_break_point = false;
      }
      if (initObj.hasOwnProperty('break_robot_pose')) {
        this.break_robot_pose = initObj.break_robot_pose
      }
      else {
        this.break_robot_pose = new geometry_msgs.msg.PoseStamped();
      }
      if (initObj.hasOwnProperty('break_subtask')) {
        this.break_subtask = initObj.break_subtask
      }
      else {
        this.break_subtask = '';
      }
      if (initObj.hasOwnProperty('break_loop_index')) {
        this.break_loop_index = initObj.break_loop_index
      }
      else {
        this.break_loop_index = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TrackPathGoal
    // Serialize message field [paths]
    // Serialize the length for message field [paths]
    bufferOffset = _serializer.uint32(obj.paths.length, buffer, bufferOffset);
    obj.paths.forEach((val) => {
      bufferOffset = PathWithPose.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [boundary]
    bufferOffset = PathWithPoint.serialize(obj.boundary, buffer, bufferOffset);
    // Serialize message field [mode]
    bufferOffset = _serializer.uint8(obj.mode, buffer, bufferOffset);
    // Serialize message field [loop_count]
    bufferOffset = _serializer.int32(obj.loop_count, buffer, bufferOffset);
    // Serialize message field [track_back_dist]
    bufferOffset = _serializer.float64(obj.track_back_dist, buffer, bufferOffset);
    // Serialize message field [enable_path_interpolation]
    bufferOffset = _serializer.bool(obj.enable_path_interpolation, buffer, bufferOffset);
    // Serialize message field [path_group_uuid]
    bufferOffset = _serializer.string(obj.path_group_uuid, buffer, bufferOffset);
    // Serialize message field [coverage_method]
    bufferOffset = _serializer.string(obj.coverage_method, buffer, bufferOffset);
    // Serialize message field [enable_break_point]
    bufferOffset = _serializer.bool(obj.enable_break_point, buffer, bufferOffset);
    // Serialize message field [break_robot_pose]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.break_robot_pose, buffer, bufferOffset);
    // Serialize message field [break_subtask]
    bufferOffset = _serializer.string(obj.break_subtask, buffer, bufferOffset);
    // Serialize message field [break_loop_index]
    bufferOffset = _serializer.int32(obj.break_loop_index, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrackPathGoal
    let len;
    let data = new TrackPathGoal(null);
    // Deserialize message field [paths]
    // Deserialize array length for message field [paths]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.paths = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.paths[i] = PathWithPose.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [boundary]
    data.boundary = PathWithPoint.deserialize(buffer, bufferOffset);
    // Deserialize message field [mode]
    data.mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [loop_count]
    data.loop_count = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [track_back_dist]
    data.track_back_dist = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [enable_path_interpolation]
    data.enable_path_interpolation = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [path_group_uuid]
    data.path_group_uuid = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [coverage_method]
    data.coverage_method = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [enable_break_point]
    data.enable_break_point = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [break_robot_pose]
    data.break_robot_pose = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [break_subtask]
    data.break_subtask = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [break_loop_index]
    data.break_loop_index = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.paths.forEach((val) => {
      length += PathWithPose.getMessageSize(val);
    });
    length += PathWithPoint.getMessageSize(object.boundary);
    length += _getByteLength(object.path_group_uuid);
    length += _getByteLength(object.coverage_method);
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.break_robot_pose);
    length += _getByteLength(object.break_subtask);
    return length + 35;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robint_msgs/TrackPathGoal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '61ffb591b1c795b53886c88a6d22f5c4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    PathWithPose[] paths
    PathWithPoint boundary
    uint8 mode
    uint8 BackAndForth=0
    uint8 Loop=1
    int32 loop_count
    float64 track_back_dist
    bool enable_path_interpolation
    string path_group_uuid
    string coverage_method
    bool enable_break_point
    geometry_msgs/PoseStamped break_robot_pose
    string break_subtask
    int32 break_loop_index
    
    ================================================================================
    MSG: robint_msgs/PathWithPose
    uint32 id
    string type
    geometry_msgs/PoseStamped[] poses
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
    MSG: robint_msgs/PathWithPoint
    uint32 id
    string type
    geometry_msgs/Point[] points
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TrackPathGoal(null);
    if (msg.paths !== undefined) {
      resolved.paths = new Array(msg.paths.length);
      for (let i = 0; i < resolved.paths.length; ++i) {
        resolved.paths[i] = PathWithPose.Resolve(msg.paths[i]);
      }
    }
    else {
      resolved.paths = []
    }

    if (msg.boundary !== undefined) {
      resolved.boundary = PathWithPoint.Resolve(msg.boundary)
    }
    else {
      resolved.boundary = new PathWithPoint()
    }

    if (msg.mode !== undefined) {
      resolved.mode = msg.mode;
    }
    else {
      resolved.mode = 0
    }

    if (msg.loop_count !== undefined) {
      resolved.loop_count = msg.loop_count;
    }
    else {
      resolved.loop_count = 0
    }

    if (msg.track_back_dist !== undefined) {
      resolved.track_back_dist = msg.track_back_dist;
    }
    else {
      resolved.track_back_dist = 0.0
    }

    if (msg.enable_path_interpolation !== undefined) {
      resolved.enable_path_interpolation = msg.enable_path_interpolation;
    }
    else {
      resolved.enable_path_interpolation = false
    }

    if (msg.path_group_uuid !== undefined) {
      resolved.path_group_uuid = msg.path_group_uuid;
    }
    else {
      resolved.path_group_uuid = ''
    }

    if (msg.coverage_method !== undefined) {
      resolved.coverage_method = msg.coverage_method;
    }
    else {
      resolved.coverage_method = ''
    }

    if (msg.enable_break_point !== undefined) {
      resolved.enable_break_point = msg.enable_break_point;
    }
    else {
      resolved.enable_break_point = false
    }

    if (msg.break_robot_pose !== undefined) {
      resolved.break_robot_pose = geometry_msgs.msg.PoseStamped.Resolve(msg.break_robot_pose)
    }
    else {
      resolved.break_robot_pose = new geometry_msgs.msg.PoseStamped()
    }

    if (msg.break_subtask !== undefined) {
      resolved.break_subtask = msg.break_subtask;
    }
    else {
      resolved.break_subtask = ''
    }

    if (msg.break_loop_index !== undefined) {
      resolved.break_loop_index = msg.break_loop_index;
    }
    else {
      resolved.break_loop_index = 0
    }

    return resolved;
    }
};

// Constants for message
TrackPathGoal.Constants = {
  BACKANDFORTH: 0,
  LOOP: 1,
}

module.exports = TrackPathGoal;
