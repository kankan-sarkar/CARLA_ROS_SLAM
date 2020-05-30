// Auto-generated. Do not edit!

// (in-package carla_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class CarlaLaneInvasionEvent {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.crossed_lane_markings = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('crossed_lane_markings')) {
        this.crossed_lane_markings = initObj.crossed_lane_markings
      }
      else {
        this.crossed_lane_markings = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CarlaLaneInvasionEvent
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [crossed_lane_markings]
    bufferOffset = _arraySerializer.int32(obj.crossed_lane_markings, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CarlaLaneInvasionEvent
    let len;
    let data = new CarlaLaneInvasionEvent(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [crossed_lane_markings]
    data.crossed_lane_markings = _arrayDeserializer.int32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 4 * object.crossed_lane_markings.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'carla_msgs/CarlaLaneInvasionEvent';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3846cea49c4897522899dbda091314e8';
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
    # A lane invasion event
    
    Header header
    
    int32[] crossed_lane_markings
    
    int32 LANE_MARKING_OTHER=0
    int32 LANE_MARKING_BROKEN=1
    int32 LANE_MARKING_SOLID=2
    
    
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
    const resolved = new CarlaLaneInvasionEvent(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.crossed_lane_markings !== undefined) {
      resolved.crossed_lane_markings = msg.crossed_lane_markings;
    }
    else {
      resolved.crossed_lane_markings = []
    }

    return resolved;
    }
};

// Constants for message
CarlaLaneInvasionEvent.Constants = {
  LANE_MARKING_OTHER: 0,
  LANE_MARKING_BROKEN: 1,
  LANE_MARKING_SOLID: 2,
}

module.exports = CarlaLaneInvasionEvent;
