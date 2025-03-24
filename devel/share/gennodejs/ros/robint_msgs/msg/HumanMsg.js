// Auto-generated. Do not edit!

// (in-package robint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let RectWithConfidence = require('./RectWithConfidence.js');
let std_msgs = _finder('std_msgs');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class HumanMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.id = null;
      this.name = null;
      this.center_of_world = null;
      this.body_rect = null;
      this.face_rect = null;
      this.is_within_security_line = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = '';
      }
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('center_of_world')) {
        this.center_of_world = initObj.center_of_world
      }
      else {
        this.center_of_world = new geometry_msgs.msg.Point32();
      }
      if (initObj.hasOwnProperty('body_rect')) {
        this.body_rect = initObj.body_rect
      }
      else {
        this.body_rect = new RectWithConfidence();
      }
      if (initObj.hasOwnProperty('face_rect')) {
        this.face_rect = initObj.face_rect
      }
      else {
        this.face_rect = new RectWithConfidence();
      }
      if (initObj.hasOwnProperty('is_within_security_line')) {
        this.is_within_security_line = initObj.is_within_security_line
      }
      else {
        this.is_within_security_line = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HumanMsg
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _serializer.string(obj.id, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [center_of_world]
    bufferOffset = geometry_msgs.msg.Point32.serialize(obj.center_of_world, buffer, bufferOffset);
    // Serialize message field [body_rect]
    bufferOffset = RectWithConfidence.serialize(obj.body_rect, buffer, bufferOffset);
    // Serialize message field [face_rect]
    bufferOffset = RectWithConfidence.serialize(obj.face_rect, buffer, bufferOffset);
    // Serialize message field [is_within_security_line]
    bufferOffset = _serializer.bool(obj.is_within_security_line, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HumanMsg
    let len;
    let data = new HumanMsg(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [center_of_world]
    data.center_of_world = geometry_msgs.msg.Point32.deserialize(buffer, bufferOffset);
    // Deserialize message field [body_rect]
    data.body_rect = RectWithConfidence.deserialize(buffer, bufferOffset);
    // Deserialize message field [face_rect]
    data.face_rect = RectWithConfidence.deserialize(buffer, bufferOffset);
    // Deserialize message field [is_within_security_line]
    data.is_within_security_line = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += _getByteLength(object.id);
    length += _getByteLength(object.name);
    return length + 61;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robint_msgs/HumanMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'aa008a33f57c2fa0495cfd1ccd404ddc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    string id
    string name
    geometry_msgs/Point32 center_of_world
    RectWithConfidence body_rect
    RectWithConfidence face_rect
    bool is_within_security_line
    
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
    MSG: geometry_msgs/Point32
    # This contains the position of a point in free space(with 32 bits of precision).
    # It is recommeded to use Point wherever possible instead of Point32.  
    # 
    # This recommendation is to promote interoperability.  
    #
    # This message is designed to take up less space when sending
    # lots of points at once, as in the case of a PointCloud.  
    
    float32 x
    float32 y
    float32 z
    ================================================================================
    MSG: robint_msgs/RectWithConfidence
    int32 x
    int32 y
    int32 width
    int32 height
    float32 confidence
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HumanMsg(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = ''
    }

    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.center_of_world !== undefined) {
      resolved.center_of_world = geometry_msgs.msg.Point32.Resolve(msg.center_of_world)
    }
    else {
      resolved.center_of_world = new geometry_msgs.msg.Point32()
    }

    if (msg.body_rect !== undefined) {
      resolved.body_rect = RectWithConfidence.Resolve(msg.body_rect)
    }
    else {
      resolved.body_rect = new RectWithConfidence()
    }

    if (msg.face_rect !== undefined) {
      resolved.face_rect = RectWithConfidence.Resolve(msg.face_rect)
    }
    else {
      resolved.face_rect = new RectWithConfidence()
    }

    if (msg.is_within_security_line !== undefined) {
      resolved.is_within_security_line = msg.is_within_security_line;
    }
    else {
      resolved.is_within_security_line = false
    }

    return resolved;
    }
};

module.exports = HumanMsg;
