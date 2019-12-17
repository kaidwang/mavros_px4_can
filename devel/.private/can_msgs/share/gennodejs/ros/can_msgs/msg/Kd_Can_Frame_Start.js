// Auto-generated. Do not edit!

// (in-package can_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Kd_Can_Frame_Start {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.stx = null;
      this.len = null;
      this.seq = null;
      this.sys = null;
      this.comp = null;
      this.cmd = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('stx')) {
        this.stx = initObj.stx
      }
      else {
        this.stx = 0;
      }
      if (initObj.hasOwnProperty('len')) {
        this.len = initObj.len
      }
      else {
        this.len = 0;
      }
      if (initObj.hasOwnProperty('seq')) {
        this.seq = initObj.seq
      }
      else {
        this.seq = 0;
      }
      if (initObj.hasOwnProperty('sys')) {
        this.sys = initObj.sys
      }
      else {
        this.sys = 0;
      }
      if (initObj.hasOwnProperty('comp')) {
        this.comp = initObj.comp
      }
      else {
        this.comp = 0;
      }
      if (initObj.hasOwnProperty('cmd')) {
        this.cmd = initObj.cmd
      }
      else {
        this.cmd = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Kd_Can_Frame_Start
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [stx]
    bufferOffset = _serializer.uint8(obj.stx, buffer, bufferOffset);
    // Serialize message field [len]
    bufferOffset = _serializer.uint8(obj.len, buffer, bufferOffset);
    // Serialize message field [seq]
    bufferOffset = _serializer.uint8(obj.seq, buffer, bufferOffset);
    // Serialize message field [sys]
    bufferOffset = _serializer.uint8(obj.sys, buffer, bufferOffset);
    // Serialize message field [comp]
    bufferOffset = _serializer.uint8(obj.comp, buffer, bufferOffset);
    // Serialize message field [cmd]
    bufferOffset = _serializer.uint8(obj.cmd, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Kd_Can_Frame_Start
    let len;
    let data = new Kd_Can_Frame_Start(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [stx]
    data.stx = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [len]
    data.len = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [seq]
    data.seq = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [sys]
    data.sys = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [comp]
    data.comp = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [cmd]
    data.cmd = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'can_msgs/Kd_Can_Frame_Start';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1ed2d8fa2509a0e1b936f41c90c897b9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    uint8 stx
    uint8 len
    uint8 seq
    uint8 sys
    uint8 comp
    uint8 cmd
    
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
    # 0: no frame
    # 1: global frame
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Kd_Can_Frame_Start(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.stx !== undefined) {
      resolved.stx = msg.stx;
    }
    else {
      resolved.stx = 0
    }

    if (msg.len !== undefined) {
      resolved.len = msg.len;
    }
    else {
      resolved.len = 0
    }

    if (msg.seq !== undefined) {
      resolved.seq = msg.seq;
    }
    else {
      resolved.seq = 0
    }

    if (msg.sys !== undefined) {
      resolved.sys = msg.sys;
    }
    else {
      resolved.sys = 0
    }

    if (msg.comp !== undefined) {
      resolved.comp = msg.comp;
    }
    else {
      resolved.comp = 0
    }

    if (msg.cmd !== undefined) {
      resolved.cmd = msg.cmd;
    }
    else {
      resolved.cmd = 0
    }

    return resolved;
    }
};

module.exports = Kd_Can_Frame_Start;
