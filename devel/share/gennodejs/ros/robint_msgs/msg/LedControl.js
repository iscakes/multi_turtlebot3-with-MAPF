// Auto-generated. Do not edit!

// (in-package robint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class LedControl {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.red = null;
      this.green = null;
      this.blue = null;
      this.rgb = null;
      this.brightness = null;
      this.mode = null;
      this.speed = null;
    }
    else {
      if (initObj.hasOwnProperty('red')) {
        this.red = initObj.red
      }
      else {
        this.red = 0;
      }
      if (initObj.hasOwnProperty('green')) {
        this.green = initObj.green
      }
      else {
        this.green = 0;
      }
      if (initObj.hasOwnProperty('blue')) {
        this.blue = initObj.blue
      }
      else {
        this.blue = 0;
      }
      if (initObj.hasOwnProperty('rgb')) {
        this.rgb = initObj.rgb
      }
      else {
        this.rgb = 0;
      }
      if (initObj.hasOwnProperty('brightness')) {
        this.brightness = initObj.brightness
      }
      else {
        this.brightness = 0;
      }
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = 0;
      }
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LedControl
    // Serialize message field [red]
    bufferOffset = _serializer.uint8(obj.red, buffer, bufferOffset);
    // Serialize message field [green]
    bufferOffset = _serializer.uint8(obj.green, buffer, bufferOffset);
    // Serialize message field [blue]
    bufferOffset = _serializer.uint8(obj.blue, buffer, bufferOffset);
    // Serialize message field [rgb]
    bufferOffset = _serializer.uint32(obj.rgb, buffer, bufferOffset);
    // Serialize message field [brightness]
    bufferOffset = _serializer.uint8(obj.brightness, buffer, bufferOffset);
    // Serialize message field [mode]
    bufferOffset = _serializer.uint8(obj.mode, buffer, bufferOffset);
    // Serialize message field [speed]
    bufferOffset = _serializer.uint16(obj.speed, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LedControl
    let len;
    let data = new LedControl(null);
    // Deserialize message field [red]
    data.red = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [green]
    data.green = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [blue]
    data.blue = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [rgb]
    data.rgb = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [brightness]
    data.brightness = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [mode]
    data.mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [speed]
    data.speed = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 11;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robint_msgs/LedControl';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6af3c075d10c39ecc03ad496b71b72ec';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # /*
    #  * # LED控制
    #  * ## b 亮度 [0-255], 不允许设置 10 ('\n')!!!
    #  * ## s 速度 [11,16959], 越小越快，初始化默认1000
    #  * ## c 颜色 [0x000000,0xFFFFFF], 初始化白色0xFFFFFF
    #  * ## m 模式 [0-55]
    #  * * 0: 静态单色
    #  * * 12: 彩虹全彩转圈Rainbow Cycle
    #  * * 3: 转圈color wipe
    #  * * 44: 彗星尾巴Comet
    #  * */
    
    uint8 red
    uint8 green
    uint8 blue
    uint32 rgb
    uint8 brightness
    uint8 mode
    uint16 speed
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LedControl(null);
    if (msg.red !== undefined) {
      resolved.red = msg.red;
    }
    else {
      resolved.red = 0
    }

    if (msg.green !== undefined) {
      resolved.green = msg.green;
    }
    else {
      resolved.green = 0
    }

    if (msg.blue !== undefined) {
      resolved.blue = msg.blue;
    }
    else {
      resolved.blue = 0
    }

    if (msg.rgb !== undefined) {
      resolved.rgb = msg.rgb;
    }
    else {
      resolved.rgb = 0
    }

    if (msg.brightness !== undefined) {
      resolved.brightness = msg.brightness;
    }
    else {
      resolved.brightness = 0
    }

    if (msg.mode !== undefined) {
      resolved.mode = msg.mode;
    }
    else {
      resolved.mode = 0
    }

    if (msg.speed !== undefined) {
      resolved.speed = msg.speed;
    }
    else {
      resolved.speed = 0
    }

    return resolved;
    }
};

module.exports = LedControl;
