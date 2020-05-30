// Auto-generated. Do not edit!

// (in-package carla_msgs.msg)


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

class CarlaCollisionEvent {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.other_actor_id = null;
      this.normal_impulse = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('other_actor_id')) {
        this.other_actor_id = initObj.other_actor_id
      }
      else {
        this.other_actor_id = 0;
      }
      if (initObj.hasOwnProperty('normal_impulse')) {
        this.normal_impulse = initObj.normal_impulse
      }
      else {
        this.normal_impulse = new geometry_msgs.msg.Vector3();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CarlaCollisionEvent
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [other_actor_id]
    bufferOffset = _serializer.uint32(obj.other_actor_id, buffer, bufferOffset);
    // Serialize message field [normal_impulse]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.normal_impulse, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CarlaCollisionEvent
    let len;
    let data = new CarlaCollisionEvent(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [other_actor_id]
    data.other_actor_id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [normal_impulse]
    data.normal_impulse = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'carla_msgs/CarlaCollisionEvent';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9f08ee4a25bac7157d460b45684dd2b7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #
    # Copyright (c) 2019 Intel Corporation.
    #
    # This work is licensed under the terms of the MIT license.
    # For a copy, see <https://opensource.org/licenses/MIT>.
    #
    # A collision event
    
    Header header
    
    uint32 other_actor_id
    geometry_msgs/Vector3 normal_impulse
    
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
    const resolved = new CarlaCollisionEvent(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.other_actor_id !== undefined) {
      resolved.other_actor_id = msg.other_actor_id;
    }
    else {
      resolved.other_actor_id = 0
    }

    if (msg.normal_impulse !== undefined) {
      resolved.normal_impulse = geometry_msgs.msg.Vector3.Resolve(msg.normal_impulse)
    }
    else {
      resolved.normal_impulse = new geometry_msgs.msg.Vector3()
    }

    return resolved;
    }
};

module.exports = CarlaCollisionEvent;
