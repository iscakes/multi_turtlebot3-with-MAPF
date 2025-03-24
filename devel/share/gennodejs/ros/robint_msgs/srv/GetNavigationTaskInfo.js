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

let NavigationTaskInfo = require('../msg/NavigationTaskInfo.js');

//-----------------------------------------------------------

class GetNavigationTaskInfoRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.target_loc_uuid = null;
      this.target_pose = null;
    }
    else {
      if (initObj.hasOwnProperty('target_loc_uuid')) {
        this.target_loc_uuid = initObj.target_loc_uuid
      }
      else {
        this.target_loc_uuid = '';
      }
      if (initObj.hasOwnProperty('target_pose')) {
        this.target_pose = initObj.target_pose
      }
      else {
        this.target_pose = new geometry_msgs.msg.Pose();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetNavigationTaskInfoRequest
    // Serialize message field [target_loc_uuid]
    bufferOffset = _serializer.string(obj.target_loc_uuid, buffer, bufferOffset);
    // Serialize message field [target_pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.target_pose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetNavigationTaskInfoRequest
    let len;
    let data = new GetNavigationTaskInfoRequest(null);
    // Deserialize message field [target_loc_uuid]
    data.target_loc_uuid = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [target_pose]
    data.target_pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.target_loc_uuid);
    return length + 60;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robint_msgs/GetNavigationTaskInfoRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7d9d811cea4944569ef95864ffc0b1e6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string target_loc_uuid
    geometry_msgs/Pose target_pose
    
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
    const resolved = new GetNavigationTaskInfoRequest(null);
    if (msg.target_loc_uuid !== undefined) {
      resolved.target_loc_uuid = msg.target_loc_uuid;
    }
    else {
      resolved.target_loc_uuid = ''
    }

    if (msg.target_pose !== undefined) {
      resolved.target_pose = geometry_msgs.msg.Pose.Resolve(msg.target_pose)
    }
    else {
      resolved.target_pose = new geometry_msgs.msg.Pose()
    }

    return resolved;
    }
};

class GetNavigationTaskInfoResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.task_info = null;
      this.success = null;
      this.error_code = null;
    }
    else {
      if (initObj.hasOwnProperty('task_info')) {
        this.task_info = initObj.task_info
      }
      else {
        this.task_info = new NavigationTaskInfo();
      }
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetNavigationTaskInfoResponse
    // Serialize message field [task_info]
    bufferOffset = NavigationTaskInfo.serialize(obj.task_info, buffer, bufferOffset);
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [error_code]
    bufferOffset = _serializer.uint8(obj.error_code, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetNavigationTaskInfoResponse
    let len;
    let data = new GetNavigationTaskInfoResponse(null);
    // Deserialize message field [task_info]
    data.task_info = NavigationTaskInfo.deserialize(buffer, bufferOffset);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [error_code]
    data.error_code = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += NavigationTaskInfo.getMessageSize(object.task_info);
    return length + 2;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robint_msgs/GetNavigationTaskInfoResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eb35a08e60cf07c10a5a8369415121d4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    NavigationTaskInfo task_info
    bool success
    uint8 error_code
    
    ================================================================================
    MSG: robint_msgs/NavigationTaskInfo
    string current_map_uuid
    string elevator_building_uuid
    string current_floor_id
    string target_map_uuid
    string target_floor_id
    string target_loc_uuid
    string target_loc_group_uuid
    string enter_elevator_loc_uuid
    string current_elevator_interior_loc_uuid
    string target_elevator_interior_loc_uuid
    string elevator_wait_loc_uuid
    string current_exit_elevator_loc_uuid
    string target_exit_elevator_loc_uuid
    geometry_msgs/PoseStamped dock_anchor_pose
    GateInfo[] current_floor_gates
    GateInfo[] target_floor_gates
    IsolatedZone[] current_floor_isolated_zones
    IsolatedZone[] target_floor_isolated_zones
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
    MSG: robint_msgs/GateInfo
    string gate_uuid
    string gate_name
    Location enter_loc
    Location exit_loc
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
    MSG: robint_msgs/IsolatedZone
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
    MSG: robint_msgs/IsolatedWait
    geometry_msgs/Pose pose
    string uuid
    bool direct
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetNavigationTaskInfoResponse(null);
    if (msg.task_info !== undefined) {
      resolved.task_info = NavigationTaskInfo.Resolve(msg.task_info)
    }
    else {
      resolved.task_info = new NavigationTaskInfo()
    }

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

    return resolved;
    }
};

module.exports = {
  Request: GetNavigationTaskInfoRequest,
  Response: GetNavigationTaskInfoResponse,
  md5sum() { return 'a25a07781fce6ba03ac72f05d14c575a'; },
  datatype() { return 'robint_msgs/GetNavigationTaskInfo'; }
};
