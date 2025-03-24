// Auto-generated. Do not edit!

// (in-package robint_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let CruiseTaskInfo = require('../msg/CruiseTaskInfo.js');

//-----------------------------------------------------------

class GetCruiseTaskInfoRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.task_uuid = null;
      this.task_name = null;
      this.start_location_uuid = null;
      this.end_location_uuid = null;
    }
    else {
      if (initObj.hasOwnProperty('task_uuid')) {
        this.task_uuid = initObj.task_uuid
      }
      else {
        this.task_uuid = '';
      }
      if (initObj.hasOwnProperty('task_name')) {
        this.task_name = initObj.task_name
      }
      else {
        this.task_name = '';
      }
      if (initObj.hasOwnProperty('start_location_uuid')) {
        this.start_location_uuid = initObj.start_location_uuid
      }
      else {
        this.start_location_uuid = '';
      }
      if (initObj.hasOwnProperty('end_location_uuid')) {
        this.end_location_uuid = initObj.end_location_uuid
      }
      else {
        this.end_location_uuid = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetCruiseTaskInfoRequest
    // Serialize message field [task_uuid]
    bufferOffset = _serializer.string(obj.task_uuid, buffer, bufferOffset);
    // Serialize message field [task_name]
    bufferOffset = _serializer.string(obj.task_name, buffer, bufferOffset);
    // Serialize message field [start_location_uuid]
    bufferOffset = _serializer.string(obj.start_location_uuid, buffer, bufferOffset);
    // Serialize message field [end_location_uuid]
    bufferOffset = _serializer.string(obj.end_location_uuid, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetCruiseTaskInfoRequest
    let len;
    let data = new GetCruiseTaskInfoRequest(null);
    // Deserialize message field [task_uuid]
    data.task_uuid = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [task_name]
    data.task_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [start_location_uuid]
    data.start_location_uuid = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [end_location_uuid]
    data.end_location_uuid = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.task_uuid);
    length += _getByteLength(object.task_name);
    length += _getByteLength(object.start_location_uuid);
    length += _getByteLength(object.end_location_uuid);
    return length + 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robint_msgs/GetCruiseTaskInfoRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '553cbf1545f596de71234871d0e9d7a6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string task_uuid
    string task_name
    string start_location_uuid
    string end_location_uuid
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetCruiseTaskInfoRequest(null);
    if (msg.task_uuid !== undefined) {
      resolved.task_uuid = msg.task_uuid;
    }
    else {
      resolved.task_uuid = ''
    }

    if (msg.task_name !== undefined) {
      resolved.task_name = msg.task_name;
    }
    else {
      resolved.task_name = ''
    }

    if (msg.start_location_uuid !== undefined) {
      resolved.start_location_uuid = msg.start_location_uuid;
    }
    else {
      resolved.start_location_uuid = ''
    }

    if (msg.end_location_uuid !== undefined) {
      resolved.end_location_uuid = msg.end_location_uuid;
    }
    else {
      resolved.end_location_uuid = ''
    }

    return resolved;
    }
};

class GetCruiseTaskInfoResponse {
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
        this.task_info = new CruiseTaskInfo();
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
    // Serializes a message object of type GetCruiseTaskInfoResponse
    // Serialize message field [task_info]
    bufferOffset = CruiseTaskInfo.serialize(obj.task_info, buffer, bufferOffset);
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [error_code]
    bufferOffset = _serializer.uint8(obj.error_code, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetCruiseTaskInfoResponse
    let len;
    let data = new GetCruiseTaskInfoResponse(null);
    // Deserialize message field [task_info]
    data.task_info = CruiseTaskInfo.deserialize(buffer, bufferOffset);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [error_code]
    data.error_code = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += CruiseTaskInfo.getMessageSize(object.task_info);
    return length + 2;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robint_msgs/GetCruiseTaskInfoResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f06d3ba6c63ee36d1b9ca5ca04141678';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    CruiseTaskInfo task_info
    bool success
    uint8 error_code
    
    ================================================================================
    MSG: robint_msgs/CruiseTaskInfo
    Location[] location_list
    
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
    const resolved = new GetCruiseTaskInfoResponse(null);
    if (msg.task_info !== undefined) {
      resolved.task_info = CruiseTaskInfo.Resolve(msg.task_info)
    }
    else {
      resolved.task_info = new CruiseTaskInfo()
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
  Request: GetCruiseTaskInfoRequest,
  Response: GetCruiseTaskInfoResponse,
  md5sum() { return '30e01ca2aae78308577b217c8f03f041'; },
  datatype() { return 'robint_msgs/GetCruiseTaskInfo'; }
};
