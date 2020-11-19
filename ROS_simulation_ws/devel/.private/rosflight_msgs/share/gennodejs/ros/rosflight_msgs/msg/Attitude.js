// Auto-generated. Do not edit!

// (in-package rosflight_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Attitude {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.attitude = null;
      this.angular_velocity = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('attitude')) {
        this.attitude = initObj.attitude
      }
      else {
        this.attitude = new geometry_msgs.msg.Quaternion();
      }
      if (initObj.hasOwnProperty('angular_velocity')) {
        this.angular_velocity = initObj.angular_velocity
      }
      else {
        this.angular_velocity = new geometry_msgs.msg.Vector3();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Attitude
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [attitude]
    bufferOffset = geometry_msgs.msg.Quaternion.serialize(obj.attitude, buffer, bufferOffset);
    // Serialize message field [angular_velocity]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.angular_velocity, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Attitude
    let len;
    let data = new Attitude(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [attitude]
    data.attitude = geometry_msgs.msg.Quaternion.deserialize(buffer, bufferOffset);
    // Deserialize message field [angular_velocity]
    data.angular_velocity = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 56;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rosflight_msgs/Attitude';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cedefaed10c2df6e4f13817850ee8bc6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Defines an Euler-Angle Based Attitude Message
    
    Header header
    geometry_msgs/Quaternion attitude
    geometry_msgs/Vector3 angular_velocity
    
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
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Attitude(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.attitude !== undefined) {
      resolved.attitude = geometry_msgs.msg.Quaternion.Resolve(msg.attitude)
    }
    else {
      resolved.attitude = new geometry_msgs.msg.Quaternion()
    }

    if (msg.angular_velocity !== undefined) {
      resolved.angular_velocity = geometry_msgs.msg.Vector3.Resolve(msg.angular_velocity)
    }
    else {
      resolved.angular_velocity = new geometry_msgs.msg.Vector3()
    }

    return resolved;
    }
};

module.exports = Attitude;
