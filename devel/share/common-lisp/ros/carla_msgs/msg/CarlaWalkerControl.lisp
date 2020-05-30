; Auto-generated. Do not edit!


(cl:in-package carla_msgs-msg)


;//! \htmlinclude CarlaWalkerControl.msg.html

(cl:defclass <CarlaWalkerControl> (roslisp-msg-protocol:ros-message)
  ((direction
    :reader direction
    :initarg :direction
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (speed
    :reader speed
    :initarg :speed
    :type cl:float
    :initform 0.0)
   (jump
    :reader jump
    :initarg :jump
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass CarlaWalkerControl (<CarlaWalkerControl>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CarlaWalkerControl>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CarlaWalkerControl)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name carla_msgs-msg:<CarlaWalkerControl> is deprecated: use carla_msgs-msg:CarlaWalkerControl instead.")))

(cl:ensure-generic-function 'direction-val :lambda-list '(m))
(cl:defmethod direction-val ((m <CarlaWalkerControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader carla_msgs-msg:direction-val is deprecated.  Use carla_msgs-msg:direction instead.")
  (direction m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <CarlaWalkerControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader carla_msgs-msg:speed-val is deprecated.  Use carla_msgs-msg:speed instead.")
  (speed m))

(cl:ensure-generic-function 'jump-val :lambda-list '(m))
(cl:defmethod jump-val ((m <CarlaWalkerControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader carla_msgs-msg:jump-val is deprecated.  Use carla_msgs-msg:jump instead.")
  (jump m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CarlaWalkerControl>) ostream)
  "Serializes a message object of type '<CarlaWalkerControl>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'direction) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'jump) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CarlaWalkerControl>) istream)
  "Deserializes a message object of type '<CarlaWalkerControl>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'direction) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'jump) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CarlaWalkerControl>)))
  "Returns string type for a message object of type '<CarlaWalkerControl>"
  "carla_msgs/CarlaWalkerControl")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CarlaWalkerControl)))
  "Returns string type for a message object of type 'CarlaWalkerControl"
  "carla_msgs/CarlaWalkerControl")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CarlaWalkerControl>)))
  "Returns md5sum for a message object of type '<CarlaWalkerControl>"
  "bd3de0306de3de4e7161a29868c1f9a7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CarlaWalkerControl)))
  "Returns md5sum for a message object of type 'CarlaWalkerControl"
  "bd3de0306de3de4e7161a29868c1f9a7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CarlaWalkerControl>)))
  "Returns full string definition for message of type '<CarlaWalkerControl>"
  (cl:format cl:nil "#~%# Copyright (c) 2019 Intel Corporation.~%#~%# This work is licensed under the terms of the MIT license.~%# For a copy, see <https://opensource.org/licenses/MIT>.~%#~%# This represents a walker control message sent to CARLA simulator~%~%geometry_msgs/Vector3 direction~%float32 speed~%bool jump~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CarlaWalkerControl)))
  "Returns full string definition for message of type 'CarlaWalkerControl"
  (cl:format cl:nil "#~%# Copyright (c) 2019 Intel Corporation.~%#~%# This work is licensed under the terms of the MIT license.~%# For a copy, see <https://opensource.org/licenses/MIT>.~%#~%# This represents a walker control message sent to CARLA simulator~%~%geometry_msgs/Vector3 direction~%float32 speed~%bool jump~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CarlaWalkerControl>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'direction))
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CarlaWalkerControl>))
  "Converts a ROS message object to a list"
  (cl:list 'CarlaWalkerControl
    (cl:cons ':direction (direction msg))
    (cl:cons ':speed (speed msg))
    (cl:cons ':jump (jump msg))
))
