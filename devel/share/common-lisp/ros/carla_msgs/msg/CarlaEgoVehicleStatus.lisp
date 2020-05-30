; Auto-generated. Do not edit!


(cl:in-package carla_msgs-msg)


;//! \htmlinclude CarlaEgoVehicleStatus.msg.html

(cl:defclass <CarlaEgoVehicleStatus> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (velocity
    :reader velocity
    :initarg :velocity
    :type cl:float
    :initform 0.0)
   (acceleration
    :reader acceleration
    :initarg :acceleration
    :type geometry_msgs-msg:Accel
    :initform (cl:make-instance 'geometry_msgs-msg:Accel))
   (orientation
    :reader orientation
    :initarg :orientation
    :type geometry_msgs-msg:Quaternion
    :initform (cl:make-instance 'geometry_msgs-msg:Quaternion))
   (control
    :reader control
    :initarg :control
    :type carla_msgs-msg:CarlaEgoVehicleControl
    :initform (cl:make-instance 'carla_msgs-msg:CarlaEgoVehicleControl)))
)

(cl:defclass CarlaEgoVehicleStatus (<CarlaEgoVehicleStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CarlaEgoVehicleStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CarlaEgoVehicleStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name carla_msgs-msg:<CarlaEgoVehicleStatus> is deprecated: use carla_msgs-msg:CarlaEgoVehicleStatus instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CarlaEgoVehicleStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader carla_msgs-msg:header-val is deprecated.  Use carla_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <CarlaEgoVehicleStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader carla_msgs-msg:velocity-val is deprecated.  Use carla_msgs-msg:velocity instead.")
  (velocity m))

(cl:ensure-generic-function 'acceleration-val :lambda-list '(m))
(cl:defmethod acceleration-val ((m <CarlaEgoVehicleStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader carla_msgs-msg:acceleration-val is deprecated.  Use carla_msgs-msg:acceleration instead.")
  (acceleration m))

(cl:ensure-generic-function 'orientation-val :lambda-list '(m))
(cl:defmethod orientation-val ((m <CarlaEgoVehicleStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader carla_msgs-msg:orientation-val is deprecated.  Use carla_msgs-msg:orientation instead.")
  (orientation m))

(cl:ensure-generic-function 'control-val :lambda-list '(m))
(cl:defmethod control-val ((m <CarlaEgoVehicleStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader carla_msgs-msg:control-val is deprecated.  Use carla_msgs-msg:control instead.")
  (control m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CarlaEgoVehicleStatus>) ostream)
  "Serializes a message object of type '<CarlaEgoVehicleStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'acceleration) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'orientation) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'control) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CarlaEgoVehicleStatus>) istream)
  "Deserializes a message object of type '<CarlaEgoVehicleStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'velocity) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'acceleration) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'orientation) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'control) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CarlaEgoVehicleStatus>)))
  "Returns string type for a message object of type '<CarlaEgoVehicleStatus>"
  "carla_msgs/CarlaEgoVehicleStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CarlaEgoVehicleStatus)))
  "Returns string type for a message object of type 'CarlaEgoVehicleStatus"
  "carla_msgs/CarlaEgoVehicleStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CarlaEgoVehicleStatus>)))
  "Returns md5sum for a message object of type '<CarlaEgoVehicleStatus>"
  "7d24d9cd2c1c81e9a2b845b347cb2162")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CarlaEgoVehicleStatus)))
  "Returns md5sum for a message object of type 'CarlaEgoVehicleStatus"
  "7d24d9cd2c1c81e9a2b845b347cb2162")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CarlaEgoVehicleStatus>)))
  "Returns full string definition for message of type '<CarlaEgoVehicleStatus>"
  (cl:format cl:nil "#~%# Copyright (c) 2019 Intel Corporation.~%#~%# This work is licensed under the terms of the MIT license.~%# For a copy, see <https://opensource.org/licenses/MIT>.~%#~%~%Header header~%~%float32 velocity~%geometry_msgs/Accel acceleration~%geometry_msgs/Quaternion orientation~%~%# the current control values, as reported by Carla~%CarlaEgoVehicleControl control~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Accel~%# This expresses acceleration in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: carla_msgs/CarlaEgoVehicleControl~%#~%# Copyright (c) 2018-2019 Intel Corporation.~%#~%# This work is licensed under the terms of the MIT license.~%# For a copy, see <https://opensource.org/licenses/MIT>.~%#~%# This represents a vehicle control message sent to CARLA simulator~%~%Header header~%~%# The CARLA vehicle control data~%~%# 0. <= throttle <= 1.~%float32 throttle~%~%# -1. <= steer <= 1.~%float32 steer~%~%# 0. <= brake <= 1.~%float32 brake~%~%# hand_brake 0 or 1~%bool hand_brake~%~%# reverse 0 or 1~%bool reverse~%~%# gear~%int32 gear~%~%# manual gear shift~%bool manual_gear_shift~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CarlaEgoVehicleStatus)))
  "Returns full string definition for message of type 'CarlaEgoVehicleStatus"
  (cl:format cl:nil "#~%# Copyright (c) 2019 Intel Corporation.~%#~%# This work is licensed under the terms of the MIT license.~%# For a copy, see <https://opensource.org/licenses/MIT>.~%#~%~%Header header~%~%float32 velocity~%geometry_msgs/Accel acceleration~%geometry_msgs/Quaternion orientation~%~%# the current control values, as reported by Carla~%CarlaEgoVehicleControl control~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Accel~%# This expresses acceleration in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: carla_msgs/CarlaEgoVehicleControl~%#~%# Copyright (c) 2018-2019 Intel Corporation.~%#~%# This work is licensed under the terms of the MIT license.~%# For a copy, see <https://opensource.org/licenses/MIT>.~%#~%# This represents a vehicle control message sent to CARLA simulator~%~%Header header~%~%# The CARLA vehicle control data~%~%# 0. <= throttle <= 1.~%float32 throttle~%~%# -1. <= steer <= 1.~%float32 steer~%~%# 0. <= brake <= 1.~%float32 brake~%~%# hand_brake 0 or 1~%bool hand_brake~%~%# reverse 0 or 1~%bool reverse~%~%# gear~%int32 gear~%~%# manual gear shift~%bool manual_gear_shift~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CarlaEgoVehicleStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'acceleration))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'orientation))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'control))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CarlaEgoVehicleStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'CarlaEgoVehicleStatus
    (cl:cons ':header (header msg))
    (cl:cons ':velocity (velocity msg))
    (cl:cons ':acceleration (acceleration msg))
    (cl:cons ':orientation (orientation msg))
    (cl:cons ':control (control msg))
))
