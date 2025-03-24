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

class AutoRelocationRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.limited_location = null;
      this.linear_search_window = null;
      this.angular_search_window = null;
      this.pose = null;
      this.relocation_mode = null;
    }
    else {
      if (initObj.hasOwnProperty('limited_location')) {
        this.limited_location = initObj.limited_location
      }
      else {
        this.limited_location = false;
      }
      if (initObj.hasOwnProperty('linear_search_window')) {
        this.linear_search_window = initObj.linear_search_window
      }
      else {
        this.linear_search_window = 0.0;
      }
      if (initObj.hasOwnProperty('angular_search_window')) {
        this.angular_search_window = initObj.angular_search_window
      }
      else {
        this.angular_search_window = 0.0;
      }
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.PoseStamped();
      }
      if (initObj.hasOwnProperty('relocation_mode')) {
        this.relocation_mode = initObj.relocation_mode
      }
      else {
        this.relocation_mode = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AutoRelocationRequest
    // Serialize message field [limited_location]
    bufferOffset = _serializer.bool(obj.limited_location, buffer, bufferOffset);
    // Serialize message field [linear_search_window]
    bufferOffset = _serializer.float32(obj.linear_search_window, buffer, bufferOffset);
    // Serialize message field [angular_search_window]
    bufferOffset = _serializer.float32(obj.angular_search_window, buffer, bufferOffset);
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.pose, buffer, bufferOffset);
    // Serialize message field [relocation_mode]
    bufferOffset = _serializer.uint8(obj.relocation_mode, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AutoRelocationRequest
    let len;
    let data = new AutoRelocationRequest(null);
    // Deserialize message field [limited_location]
    data.limited_location = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [linear_search_window]
    data.linear_search_window = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [angular_search_window]
    data.angular_search_window = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [relocation_mode]
    data.relocation_mode = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.pose);
    return length + 10;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robint_msgs/AutoRelocationRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cad0ad4cf80a4f9834d3b591708a326c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool limited_location
    float32 linear_search_window
    float32 angular_search_window
    geometry_msgs/PoseStamped pose
    uint8 relocation_mode
    uint8 DEFAULT=0
    uint8 FIXED_POSE=1
    uint8 FIXED_SEARCH=2
    uint8 FIXED_POSE_AND_SEARCH=3
    
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
    const resolved = new AutoRelocationRequest(null);
    if (msg.limited_location !== undefined) {
      resolved.limited_location = msg.limited_location;
    }
    else {
      resolved.limited_location = false
    }

    if (msg.linear_search_window !== undefined) {
      resolved.linear_search_window = msg.linear_search_window;
    }
    else {
      resolved.linear_search_window = 0.0
    }

    if (msg.angular_search_window !== undefined) {
      resolved.angular_search_window = msg.angular_search_window;
    }
    else {
      resolved.angular_search_window = 0.0
    }

    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.PoseStamped.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.PoseStamped()
    }

    if (msg.relocation_mode !== undefined) {
      resolved.relocation_mode = msg.relocation_mode;
    }
    else {
      resolved.relocation_mode = 0
    }

    return resolved;
    }
};

// Constants for message
AutoRelocationRequest.Constants = {
  DEFAULT: 0,
  FIXED_POSE: 1,
  FIXED_SEARCH: 2,
  FIXED_POSE_AND_SEARCH: 3,
}

class AutoRelocationResponse {
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
    // Serializes a message object of type AutoRelocationResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [error_code]
    bufferOffset = _serializer.uint8(obj.error_code, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AutoRelocationResponse
    let len;
    let data = new AutoRelocationResponse(null);
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
    return 'robint_msgs/AutoRelocationResponse';
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
    const resolved = new AutoRelocationResponse(null);
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
  Request: AutoRelocationRequest,
  Response: AutoRelocationResponse,
  md5sum() { return 'ed9dac49ff11cc301c25107899231f1b'; },
  datatype() { return 'robint_msgs/AutoRelocation'; }
};
