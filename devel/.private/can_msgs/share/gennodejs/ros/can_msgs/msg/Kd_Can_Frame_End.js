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

class Kd_Can_Frame_End {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.crca = null;
      this.crcb = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('crca')) {
        this.crca = initObj.crca
      }
      else {
        this.crca = 0;
      }
      if (initObj.hasOwnProperty('crcb')) {
        this.crcb = initObj.crcb
      }
      else {
        this.crcb = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Kd_Can_Frame_End
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [crca]
    bufferOffset = _serializer.uint8(obj.crca, buffer, bufferOffset);
    // Serialize message field [crcb]
    bufferOffset = _serializer.uint8(obj.crcb, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Kd_Can_Frame_End
    let len;
    let data = new Kd_Can_Frame_End(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [crca]
    data.crca = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [crcb]
    data.crcb = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'can_msgs/Kd_Can_Frame_End';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '916ba27749b7ac9e7211be94f6664329';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    uint8 crca
    uint8 crcb
    
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
    const resolved = new Kd_Can_Frame_End(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.crca !== undefined) {
      resolved.crca = msg.crca;
    }
    else {
      resolved.crca = 0
    }

    if (msg.crcb !== undefined) {
      resolved.crcb = msg.crcb;
    }
    else {
      resolved.crcb = 0
    }

    return resolved;
    }
};

module.exports = Kd_Can_Frame_End;
