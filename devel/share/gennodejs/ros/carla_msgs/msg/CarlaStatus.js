// Auto-generated. Do not edit!

// (in-package carla_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class CarlaStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.frame = null;
      this.fixed_delta_seconds = null;
      this.synchronous_mode = null;
      this.synchronous_mode_running = null;
    }
    else {
      if (initObj.hasOwnProperty('frame')) {
        this.frame = initObj.frame
      }
      else {
        this.frame = 0;
      }
      if (initObj.hasOwnProperty('fixed_delta_seconds')) {
        this.fixed_delta_seconds = initObj.fixed_delta_seconds
      }
      else {
        this.fixed_delta_seconds = 0.0;
      }
      if (initObj.hasOwnProperty('synchronous_mode')) {
        this.synchronous_mode = initObj.synchronous_mode
      }
      else {
        this.synchronous_mode = false;
      }
      if (initObj.hasOwnProperty('synchronous_mode_running')) {
        this.synchronous_mode_running = initObj.synchronous_mode_running
      }
      else {
        this.synchronous_mode_running = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CarlaStatus
    // Serialize message field [frame]
    bufferOffset = _serializer.uint64(obj.frame, buffer, bufferOffset);
    // Serialize message field [fixed_delta_seconds]
    bufferOffset = _serializer.float32(obj.fixed_delta_seconds, buffer, bufferOffset);
    // Serialize message field [synchronous_mode]
    bufferOffset = _serializer.bool(obj.synchronous_mode, buffer, bufferOffset);
    // Serialize message field [synchronous_mode_running]
    bufferOffset = _serializer.bool(obj.synchronous_mode_running, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CarlaStatus
    let len;
    let data = new CarlaStatus(null);
    // Deserialize message field [frame]
    data.frame = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [fixed_delta_seconds]
    data.fixed_delta_seconds = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [synchronous_mode]
    data.synchronous_mode = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [synchronous_mode_running]
    data.synchronous_mode_running = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 14;
  }

  static datatype() {
    // Returns string type for a message object
    return 'carla_msgs/CarlaStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0a6e668a0d517dead8f5c68762fc1dab';
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
    
    uint64 frame                  # frame number
    
    float32 fixed_delta_seconds   # duration of one frame
    bool synchronous_mode         # carla is in synchronous mode
    bool synchronous_mode_running # true: running, false: paused
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CarlaStatus(null);
    if (msg.frame !== undefined) {
      resolved.frame = msg.frame;
    }
    else {
      resolved.frame = 0
    }

    if (msg.fixed_delta_seconds !== undefined) {
      resolved.fixed_delta_seconds = msg.fixed_delta_seconds;
    }
    else {
      resolved.fixed_delta_seconds = 0.0
    }

    if (msg.synchronous_mode !== undefined) {
      resolved.synchronous_mode = msg.synchronous_mode;
    }
    else {
      resolved.synchronous_mode = false
    }

    if (msg.synchronous_mode_running !== undefined) {
      resolved.synchronous_mode_running = msg.synchronous_mode_running;
    }
    else {
      resolved.synchronous_mode_running = false
    }

    return resolved;
    }
};

module.exports = CarlaStatus;
