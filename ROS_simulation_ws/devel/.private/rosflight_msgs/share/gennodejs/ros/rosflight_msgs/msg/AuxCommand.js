// Auto-generated. Do not edit!

// (in-package rosflight_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class AuxCommand {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.type_array = null;
      this.values = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('type_array')) {
        this.type_array = initObj.type_array
      }
      else {
        this.type_array = new Array(14).fill(0);
      }
      if (initObj.hasOwnProperty('values')) {
        this.values = initObj.values
      }
      else {
        this.values = new Array(14).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AuxCommand
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Check that the constant length array field [type_array] has the right length
    if (obj.type_array.length !== 14) {
      throw new Error('Unable to serialize array field type_array - length must be 14')
    }
    // Serialize message field [type_array]
    bufferOffset = _arraySerializer.uint8(obj.type_array, buffer, bufferOffset, 14);
    // Check that the constant length array field [values] has the right length
    if (obj.values.length !== 14) {
      throw new Error('Unable to serialize array field values - length must be 14')
    }
    // Serialize message field [values]
    bufferOffset = _arraySerializer.float32(obj.values, buffer, bufferOffset, 14);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AuxCommand
    let len;
    let data = new AuxCommand(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [type_array]
    data.type_array = _arrayDeserializer.uint8(buffer, bufferOffset, 14)
    // Deserialize message field [values]
    data.values = _arrayDeserializer.float32(buffer, bufferOffset, 14)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 70;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rosflight_msgs/AuxCommand';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dc9d592da23d69af5c42eecb1cedcb4d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Auxilliary Override Command Message
    
    # Command Types
    uint8 AUX_COMMAND_DISABLED = 0
    uint8 AUX_COMMAND_SERVO = 1
    uint8 AUX_COMMAND_MOTOR = 2
    
    Header header
    uint8[14] type_array
    float32[14] values
    
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AuxCommand(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.type_array !== undefined) {
      resolved.type_array = msg.type_array;
    }
    else {
      resolved.type_array = new Array(14).fill(0)
    }

    if (msg.values !== undefined) {
      resolved.values = msg.values;
    }
    else {
      resolved.values = new Array(14).fill(0)
    }

    return resolved;
    }
};

// Constants for message
AuxCommand.Constants = {
  AUX_COMMAND_DISABLED: 0,
  AUX_COMMAND_SERVO: 1,
  AUX_COMMAND_MOTOR: 2,
}

module.exports = AuxCommand;
