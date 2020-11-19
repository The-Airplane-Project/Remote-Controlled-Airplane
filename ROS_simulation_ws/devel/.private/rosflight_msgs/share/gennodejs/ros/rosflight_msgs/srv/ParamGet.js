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

class ParamGetRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ParamGetRequest
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ParamGetRequest
    let len;
    let data = new ParamGetRequest(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.name.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rosflight_msgs/ParamGetRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c1f3d28f1b044c871e6eff2e9fc3c667';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Request a parameter value
    
    string name # the name of the parameter value to retrieve
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ParamGetRequest(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    return resolved;
    }
};

class ParamGetResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.exists = null;
      this.value = null;
    }
    else {
      if (initObj.hasOwnProperty('exists')) {
        this.exists = initObj.exists
      }
      else {
        this.exists = false;
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
    // Serializes a message object of type ParamGetResponse
    // Serialize message field [exists]
    bufferOffset = _serializer.bool(obj.exists, buffer, bufferOffset);
    // Serialize message field [value]
    bufferOffset = _serializer.float64(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ParamGetResponse
    let len;
    let data = new ParamGetResponse(null);
    // Deserialize message field [exists]
    data.exists = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [value]
    data.value = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rosflight_msgs/ParamGetResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b9936a8d79e0138dca2aceed732c9049';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool exists # whether the request parameter exists
    float64 value # the value of the requested parameter
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ParamGetResponse(null);
    if (msg.exists !== undefined) {
      resolved.exists = msg.exists;
    }
    else {
      resolved.exists = false
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

module.exports = {
  Request: ParamGetRequest,
  Response: ParamGetResponse,
  md5sum() { return '084c270cbd1d72e2f34b8b8b23df1ede'; },
  datatype() { return 'rosflight_msgs/ParamGet'; }
};
