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

class GNSSFull {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.time_of_week = null;
      this.year = null;
      this.month = null;
      this.day = null;
      this.hour = null;
      this.min = null;
      this.sec = null;
      this.valid = null;
      this.t_acc = null;
      this.nano = null;
      this.fix_type = null;
      this.num_sat = null;
      this.lon = null;
      this.lat = null;
      this.height = null;
      this.height_msl = null;
      this.h_acc = null;
      this.v_acc = null;
      this.vel_n = null;
      this.vel_e = null;
      this.vel_d = null;
      this.g_speed = null;
      this.head_mot = null;
      this.s_acc = null;
      this.head_acc = null;
      this.p_dop = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('time_of_week')) {
        this.time_of_week = initObj.time_of_week
      }
      else {
        this.time_of_week = 0;
      }
      if (initObj.hasOwnProperty('year')) {
        this.year = initObj.year
      }
      else {
        this.year = 0;
      }
      if (initObj.hasOwnProperty('month')) {
        this.month = initObj.month
      }
      else {
        this.month = 0;
      }
      if (initObj.hasOwnProperty('day')) {
        this.day = initObj.day
      }
      else {
        this.day = 0;
      }
      if (initObj.hasOwnProperty('hour')) {
        this.hour = initObj.hour
      }
      else {
        this.hour = 0;
      }
      if (initObj.hasOwnProperty('min')) {
        this.min = initObj.min
      }
      else {
        this.min = 0;
      }
      if (initObj.hasOwnProperty('sec')) {
        this.sec = initObj.sec
      }
      else {
        this.sec = 0;
      }
      if (initObj.hasOwnProperty('valid')) {
        this.valid = initObj.valid
      }
      else {
        this.valid = 0;
      }
      if (initObj.hasOwnProperty('t_acc')) {
        this.t_acc = initObj.t_acc
      }
      else {
        this.t_acc = 0;
      }
      if (initObj.hasOwnProperty('nano')) {
        this.nano = initObj.nano
      }
      else {
        this.nano = 0;
      }
      if (initObj.hasOwnProperty('fix_type')) {
        this.fix_type = initObj.fix_type
      }
      else {
        this.fix_type = 0;
      }
      if (initObj.hasOwnProperty('num_sat')) {
        this.num_sat = initObj.num_sat
      }
      else {
        this.num_sat = 0;
      }
      if (initObj.hasOwnProperty('lon')) {
        this.lon = initObj.lon
      }
      else {
        this.lon = 0;
      }
      if (initObj.hasOwnProperty('lat')) {
        this.lat = initObj.lat
      }
      else {
        this.lat = 0;
      }
      if (initObj.hasOwnProperty('height')) {
        this.height = initObj.height
      }
      else {
        this.height = 0;
      }
      if (initObj.hasOwnProperty('height_msl')) {
        this.height_msl = initObj.height_msl
      }
      else {
        this.height_msl = 0;
      }
      if (initObj.hasOwnProperty('h_acc')) {
        this.h_acc = initObj.h_acc
      }
      else {
        this.h_acc = 0;
      }
      if (initObj.hasOwnProperty('v_acc')) {
        this.v_acc = initObj.v_acc
      }
      else {
        this.v_acc = 0;
      }
      if (initObj.hasOwnProperty('vel_n')) {
        this.vel_n = initObj.vel_n
      }
      else {
        this.vel_n = 0;
      }
      if (initObj.hasOwnProperty('vel_e')) {
        this.vel_e = initObj.vel_e
      }
      else {
        this.vel_e = 0;
      }
      if (initObj.hasOwnProperty('vel_d')) {
        this.vel_d = initObj.vel_d
      }
      else {
        this.vel_d = 0;
      }
      if (initObj.hasOwnProperty('g_speed')) {
        this.g_speed = initObj.g_speed
      }
      else {
        this.g_speed = 0;
      }
      if (initObj.hasOwnProperty('head_mot')) {
        this.head_mot = initObj.head_mot
      }
      else {
        this.head_mot = 0;
      }
      if (initObj.hasOwnProperty('s_acc')) {
        this.s_acc = initObj.s_acc
      }
      else {
        this.s_acc = 0;
      }
      if (initObj.hasOwnProperty('head_acc')) {
        this.head_acc = initObj.head_acc
      }
      else {
        this.head_acc = 0;
      }
      if (initObj.hasOwnProperty('p_dop')) {
        this.p_dop = initObj.p_dop
      }
      else {
        this.p_dop = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GNSSFull
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [time_of_week]
    bufferOffset = _serializer.uint64(obj.time_of_week, buffer, bufferOffset);
    // Serialize message field [year]
    bufferOffset = _serializer.uint16(obj.year, buffer, bufferOffset);
    // Serialize message field [month]
    bufferOffset = _serializer.uint8(obj.month, buffer, bufferOffset);
    // Serialize message field [day]
    bufferOffset = _serializer.uint8(obj.day, buffer, bufferOffset);
    // Serialize message field [hour]
    bufferOffset = _serializer.uint8(obj.hour, buffer, bufferOffset);
    // Serialize message field [min]
    bufferOffset = _serializer.uint8(obj.min, buffer, bufferOffset);
    // Serialize message field [sec]
    bufferOffset = _serializer.uint8(obj.sec, buffer, bufferOffset);
    // Serialize message field [valid]
    bufferOffset = _serializer.uint8(obj.valid, buffer, bufferOffset);
    // Serialize message field [t_acc]
    bufferOffset = _serializer.uint32(obj.t_acc, buffer, bufferOffset);
    // Serialize message field [nano]
    bufferOffset = _serializer.int32(obj.nano, buffer, bufferOffset);
    // Serialize message field [fix_type]
    bufferOffset = _serializer.uint8(obj.fix_type, buffer, bufferOffset);
    // Serialize message field [num_sat]
    bufferOffset = _serializer.uint8(obj.num_sat, buffer, bufferOffset);
    // Serialize message field [lon]
    bufferOffset = _serializer.int32(obj.lon, buffer, bufferOffset);
    // Serialize message field [lat]
    bufferOffset = _serializer.int32(obj.lat, buffer, bufferOffset);
    // Serialize message field [height]
    bufferOffset = _serializer.int32(obj.height, buffer, bufferOffset);
    // Serialize message field [height_msl]
    bufferOffset = _serializer.int32(obj.height_msl, buffer, bufferOffset);
    // Serialize message field [h_acc]
    bufferOffset = _serializer.uint32(obj.h_acc, buffer, bufferOffset);
    // Serialize message field [v_acc]
    bufferOffset = _serializer.uint32(obj.v_acc, buffer, bufferOffset);
    // Serialize message field [vel_n]
    bufferOffset = _serializer.int32(obj.vel_n, buffer, bufferOffset);
    // Serialize message field [vel_e]
    bufferOffset = _serializer.int32(obj.vel_e, buffer, bufferOffset);
    // Serialize message field [vel_d]
    bufferOffset = _serializer.int32(obj.vel_d, buffer, bufferOffset);
    // Serialize message field [g_speed]
    bufferOffset = _serializer.int32(obj.g_speed, buffer, bufferOffset);
    // Serialize message field [head_mot]
    bufferOffset = _serializer.int32(obj.head_mot, buffer, bufferOffset);
    // Serialize message field [s_acc]
    bufferOffset = _serializer.uint32(obj.s_acc, buffer, bufferOffset);
    // Serialize message field [head_acc]
    bufferOffset = _serializer.uint32(obj.head_acc, buffer, bufferOffset);
    // Serialize message field [p_dop]
    bufferOffset = _serializer.uint16(obj.p_dop, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GNSSFull
    let len;
    let data = new GNSSFull(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [time_of_week]
    data.time_of_week = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [year]
    data.year = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [month]
    data.month = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [day]
    data.day = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [hour]
    data.hour = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [min]
    data.min = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [sec]
    data.sec = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [valid]
    data.valid = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [t_acc]
    data.t_acc = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [nano]
    data.nano = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [fix_type]
    data.fix_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [num_sat]
    data.num_sat = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [lon]
    data.lon = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [lat]
    data.lat = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [height]
    data.height = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [height_msl]
    data.height_msl = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [h_acc]
    data.h_acc = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [v_acc]
    data.v_acc = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [vel_n]
    data.vel_n = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [vel_e]
    data.vel_e = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [vel_d]
    data.vel_d = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [g_speed]
    data.g_speed = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [head_mot]
    data.head_mot = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [s_acc]
    data.s_acc = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [head_acc]
    data.head_acc = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [p_dop]
    data.p_dop = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 80;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rosflight_msgs/GNSSFull';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ce3697684ed81ea92b68164c6a58e827';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    uint64 time_of_week
    uint16 year
    uint8 month
    uint8 day
    uint8 hour
    uint8 min
    uint8 sec
    uint8 valid
    uint32 t_acc #ns 
    int32 nano #ns 
    uint8 fix_type
    uint8 num_sat
    int32 lon #deg *10^-7 
    int32 lat #deg *10^-7 
    int32 height #mm above elipsoid 
    int32 height_msl #mm above mean sea level 
    uint32 h_acc #mm 
    uint32 v_acc #mm 
    int32 vel_n #mm/s 
    int32 vel_e #mm/s 
    int32 vel_d #mm/s 
    int32 g_speed #mm/s 
    int32 head_mot #deg *10^-5 
    uint32 s_acc #mm/s
    uint32 head_acc #deg * 10^-5 
    uint16 p_dop #*.01 
    
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
    const resolved = new GNSSFull(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.time_of_week !== undefined) {
      resolved.time_of_week = msg.time_of_week;
    }
    else {
      resolved.time_of_week = 0
    }

    if (msg.year !== undefined) {
      resolved.year = msg.year;
    }
    else {
      resolved.year = 0
    }

    if (msg.month !== undefined) {
      resolved.month = msg.month;
    }
    else {
      resolved.month = 0
    }

    if (msg.day !== undefined) {
      resolved.day = msg.day;
    }
    else {
      resolved.day = 0
    }

    if (msg.hour !== undefined) {
      resolved.hour = msg.hour;
    }
    else {
      resolved.hour = 0
    }

    if (msg.min !== undefined) {
      resolved.min = msg.min;
    }
    else {
      resolved.min = 0
    }

    if (msg.sec !== undefined) {
      resolved.sec = msg.sec;
    }
    else {
      resolved.sec = 0
    }

    if (msg.valid !== undefined) {
      resolved.valid = msg.valid;
    }
    else {
      resolved.valid = 0
    }

    if (msg.t_acc !== undefined) {
      resolved.t_acc = msg.t_acc;
    }
    else {
      resolved.t_acc = 0
    }

    if (msg.nano !== undefined) {
      resolved.nano = msg.nano;
    }
    else {
      resolved.nano = 0
    }

    if (msg.fix_type !== undefined) {
      resolved.fix_type = msg.fix_type;
    }
    else {
      resolved.fix_type = 0
    }

    if (msg.num_sat !== undefined) {
      resolved.num_sat = msg.num_sat;
    }
    else {
      resolved.num_sat = 0
    }

    if (msg.lon !== undefined) {
      resolved.lon = msg.lon;
    }
    else {
      resolved.lon = 0
    }

    if (msg.lat !== undefined) {
      resolved.lat = msg.lat;
    }
    else {
      resolved.lat = 0
    }

    if (msg.height !== undefined) {
      resolved.height = msg.height;
    }
    else {
      resolved.height = 0
    }

    if (msg.height_msl !== undefined) {
      resolved.height_msl = msg.height_msl;
    }
    else {
      resolved.height_msl = 0
    }

    if (msg.h_acc !== undefined) {
      resolved.h_acc = msg.h_acc;
    }
    else {
      resolved.h_acc = 0
    }

    if (msg.v_acc !== undefined) {
      resolved.v_acc = msg.v_acc;
    }
    else {
      resolved.v_acc = 0
    }

    if (msg.vel_n !== undefined) {
      resolved.vel_n = msg.vel_n;
    }
    else {
      resolved.vel_n = 0
    }

    if (msg.vel_e !== undefined) {
      resolved.vel_e = msg.vel_e;
    }
    else {
      resolved.vel_e = 0
    }

    if (msg.vel_d !== undefined) {
      resolved.vel_d = msg.vel_d;
    }
    else {
      resolved.vel_d = 0
    }

    if (msg.g_speed !== undefined) {
      resolved.g_speed = msg.g_speed;
    }
    else {
      resolved.g_speed = 0
    }

    if (msg.head_mot !== undefined) {
      resolved.head_mot = msg.head_mot;
    }
    else {
      resolved.head_mot = 0
    }

    if (msg.s_acc !== undefined) {
      resolved.s_acc = msg.s_acc;
    }
    else {
      resolved.s_acc = 0
    }

    if (msg.head_acc !== undefined) {
      resolved.head_acc = msg.head_acc;
    }
    else {
      resolved.head_acc = 0
    }

    if (msg.p_dop !== undefined) {
      resolved.p_dop = msg.p_dop;
    }
    else {
      resolved.p_dop = 0
    }

    return resolved;
    }
};

module.exports = GNSSFull;
