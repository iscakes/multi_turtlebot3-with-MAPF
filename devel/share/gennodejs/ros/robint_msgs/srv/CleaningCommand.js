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

class CleaningCommandRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.command = null;
      this.cleaning_area_uuid = null;
      this.resume_unfinished_task = null;
      this.save_cleaning_process = null;
      this.enable_track_contour = null;
      this.loop_count = null;
      this.track_back_dist = null;
      this.enable_break_point = null;
      this.break_robot_pose = null;
      this.break_subtask = null;
      this.break_loop_index = null;
    }
    else {
      if (initObj.hasOwnProperty('command')) {
        this.command = initObj.command
      }
      else {
        this.command = 0;
      }
      if (initObj.hasOwnProperty('cleaning_area_uuid')) {
        this.cleaning_area_uuid = initObj.cleaning_area_uuid
      }
      else {
        this.cleaning_area_uuid = '';
      }
      if (initObj.hasOwnProperty('resume_unfinished_task')) {
        this.resume_unfinished_task = initObj.resume_unfinished_task
      }
      else {
        this.resume_unfinished_task = false;
      }
      if (initObj.hasOwnProperty('save_cleaning_process')) {
        this.save_cleaning_process = initObj.save_cleaning_process
      }
      else {
        this.save_cleaning_process = false;
      }
      if (initObj.hasOwnProperty('enable_track_contour')) {
        this.enable_track_contour = initObj.enable_track_contour
      }
      else {
        this.enable_track_contour = false;
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
    // Serializes a message object of type CleaningCommandRequest
    // Serialize message field [command]
    bufferOffset = _serializer.uint8(obj.command, buffer, bufferOffset);
    // Serialize message field [cleaning_area_uuid]
    bufferOffset = _serializer.string(obj.cleaning_area_uuid, buffer, bufferOffset);
    // Serialize message field [resume_unfinished_task]
    bufferOffset = _serializer.bool(obj.resume_unfinished_task, buffer, bufferOffset);
    // Serialize message field [save_cleaning_process]
    bufferOffset = _serializer.bool(obj.save_cleaning_process, buffer, bufferOffset);
    // Serialize message field [enable_track_contour]
    bufferOffset = _serializer.bool(obj.enable_track_contour, buffer, bufferOffset);
    // Serialize message field [loop_count]
    bufferOffset = _serializer.int32(obj.loop_count, buffer, bufferOffset);
    // Serialize message field [track_back_dist]
    bufferOffset = _serializer.float64(obj.track_back_dist, buffer, bufferOffset);
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
    //deserializes a message object of type CleaningCommandRequest
    let len;
    let data = new CleaningCommandRequest(null);
    // Deserialize message field [command]
    data.command = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [cleaning_area_uuid]
    data.cleaning_area_uuid = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [resume_unfinished_task]
    data.resume_unfinished_task = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [save_cleaning_process]
    data.save_cleaning_process = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [enable_track_contour]
    data.enable_track_contour = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [loop_count]
    data.loop_count = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [track_back_dist]
    data.track_back_dist = _deserializer.float64(buffer, bufferOffset);
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
    length += _getByteLength(object.cleaning_area_uuid);
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.break_robot_pose);
    length += _getByteLength(object.break_subtask);
    return length + 29;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robint_msgs/CleaningCommandRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e374fa9e40a69c7a806539d57179d209';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 command       # 'Start', 'Pause', 'Resume', 'Stop'
    uint8 START=0
    uint8 PAUSE=1
    uint8 RESUME=2
    uint8 STOP=3
    string cleaning_area_uuid
    bool resume_unfinished_task
    bool save_cleaning_process
    bool enable_track_contour
    int32 loop_count
    float64 track_back_dist
    bool enable_break_point
    geometry_msgs/PoseStamped break_robot_pose
    string break_subtask
    int32 break_loop_index
    
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
    const resolved = new CleaningCommandRequest(null);
    if (msg.command !== undefined) {
      resolved.command = msg.command;
    }
    else {
      resolved.command = 0
    }

    if (msg.cleaning_area_uuid !== undefined) {
      resolved.cleaning_area_uuid = msg.cleaning_area_uuid;
    }
    else {
      resolved.cleaning_area_uuid = ''
    }

    if (msg.resume_unfinished_task !== undefined) {
      resolved.resume_unfinished_task = msg.resume_unfinished_task;
    }
    else {
      resolved.resume_unfinished_task = false
    }

    if (msg.save_cleaning_process !== undefined) {
      resolved.save_cleaning_process = msg.save_cleaning_process;
    }
    else {
      resolved.save_cleaning_process = false
    }

    if (msg.enable_track_contour !== undefined) {
      resolved.enable_track_contour = msg.enable_track_contour;
    }
    else {
      resolved.enable_track_contour = false
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
CleaningCommandRequest.Constants = {
  START: 0,
  PAUSE: 1,
  RESUME: 2,
  STOP: 3,
}

class CleaningCommandResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.error_code = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('error_code')) {
        this.error_code = initObj.error_code
      }
      else {
        this.error_code = 0;
      }
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CleaningCommandResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [error_code]
    bufferOffset = _serializer.uint8(obj.error_code, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CleaningCommandResponse
    let len;
    let data = new CleaningCommandResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [error_code]
    data.error_code = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.message);
    return length + 6;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robint_msgs/CleaningCommandResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4ad76664b0717ddbf6142456d7398288';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    uint8 error_code
    string message
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CleaningCommandResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.error_code !== undefined) {
      resolved.error_code = msg.error_code;
    }
    else {
      resolved.error_code = 0
    }

    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: CleaningCommandRequest,
  Response: CleaningCommandResponse,
  md5sum() { return '53d75104790d5d4f0b3ebfae9d23803e'; },
  datatype() { return 'robint_msgs/CleaningCommand'; }
};
