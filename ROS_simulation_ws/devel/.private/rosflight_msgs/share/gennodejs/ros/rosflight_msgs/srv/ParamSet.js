// Auto-generated. Do not edit!

// (in-package rosflight_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class ParamSetRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.value = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('value')) {
        this.value = initObj.value
      }
      else {
        this.value = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ParamSetRequest
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [value]
    bufferOffset = _serializer.float64(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ParamSetRequest
    let len;
    let data = new ParamSetRequest(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [value]
    data.value = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.name.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rosflight_msgs/ParamSetRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd8512f27253c0f65f928a67c329cd658';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Set a parameter value
    
    string name # the name of the parameter to set
    float64 value # the value to set the parameter to
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ParamSetRequest(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.value !== undefined) {
      resolved.value = msg.value;
    }
    else {
      resolved.value = 0.0
    }

    return resolved;
    }
};

class ParamSetResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.exists = null;
    }
    else {
      if (initObj.hasOwnProperty('exists')) {
        this.exists = initObj.exists
      }
      else {
        this.exists = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ParamSetResponse
    // Serialize message field [exists]
    bufferOffset = _serializer.bool(obj.exists, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ParamSetResponse
    let len;
    let data = new ParamSetResponse(null);
    // Deserialize message field [exists]
    data.exists = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rosflight_msgs/ParamSetResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e8c90de4adc1219c86af9c2874c0c1b5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool exists # whether the requested parameter exists
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ParamSetResponse(null);
    if (msg.exists !== undefined) {
      resolved.exists = msg.exists;
    }
    else {
      resolved.exists = false
    }

    return resolved;
    }
};

module.exports = {
  Request: ParamSetRequest,
  Response: ParamSetResponse,
  md5sum() { return '39d2a767f6a7b381c122060d7b56567b'; },
  datatype() { return 'rosflight_msgs/ParamSet'; }
};
