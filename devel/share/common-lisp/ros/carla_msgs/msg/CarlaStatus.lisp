; Auto-generated. Do not edit!


(cl:in-package carla_msgs-msg)


;//! \htmlinclude CarlaStatus.msg.html

(cl:defclass <CarlaStatus> (roslisp-msg-protocol:ros-message)
  ((frame
    :reader frame
    :initarg :frame
    :type cl:integer
    :initform 0)
   (fixed_delta_seconds
    :reader fixed_delta_seconds
    :initarg :fixed_delta_seconds
    :type cl:float
    :initform 0.0)
   (synchronous_mode
    :reader synchronous_mode
    :initarg :synchronous_mode
    :type cl:boolean
    :initform cl:nil)
   (synchronous_mode_running
    :reader synchronous_mode_running
    :initarg :synchronous_mode_running
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass CarlaStatus (<CarlaStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CarlaStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CarlaStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name carla_msgs-msg:<CarlaStatus> is deprecated: use carla_msgs-msg:CarlaStatus instead.")))

(cl:ensure-generic-function 'frame-val :lambda-list '(m))
(cl:defmethod frame-val ((m <CarlaStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader carla_msgs-msg:frame-val is deprecated.  Use carla_msgs-msg:frame instead.")
  (frame m))

(cl:ensure-generic-function 'fixed_delta_seconds-val :lambda-list '(m))
(cl:defmethod fixed_delta_seconds-val ((m <CarlaStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader carla_msgs-msg:fixed_delta_seconds-val is deprecated.  Use carla_msgs-msg:fixed_delta_seconds instead.")
  (fixed_delta_seconds m))

(cl:ensure-generic-function 'synchronous_mode-val :lambda-list '(m))
(cl:defmethod synchronous_mode-val ((m <CarlaStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader carla_msgs-msg:synchronous_mode-val is deprecated.  Use carla_msgs-msg:synchronous_mode instead.")
  (synchronous_mode m))

(cl:ensure-generic-function 'synchronous_mode_running-val :lambda-list '(m))
(cl:defmethod synchronous_mode_running-val ((m <CarlaStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader carla_msgs-msg:synchronous_mode_running-val is deprecated.  Use carla_msgs-msg:synchronous_mode_running instead.")
  (synchronous_mode_running m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CarlaStatus>) ostream)
  "Serializes a message object of type '<CarlaStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'frame)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'frame)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'frame)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'frame)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'frame)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'frame)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'frame)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'frame)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'fixed_delta_seconds))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'synchronous_mode) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'synchronous_mode_running) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CarlaStatus>) istream)
  "Deserializes a message object of type '<CarlaStatus>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'frame)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'frame)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'frame)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'frame)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'frame)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'frame)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'frame)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'frame)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'fixed_delta_seconds) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'synchronous_mode) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'synchronous_mode_running) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CarlaStatus>)))
  "Returns string type for a message object of type '<CarlaStatus>"
  "carla_msgs/CarlaStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CarlaStatus)))
  "Returns string type for a message object of type 'CarlaStatus"
  "carla_msgs/CarlaStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CarlaStatus>)))
  "Returns md5sum for a message object of type '<CarlaStatus>"
  "0a6e668a0d517dead8f5c68762fc1dab")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CarlaStatus)))
  "Returns md5sum for a message object of type 'CarlaStatus"
  "0a6e668a0d517dead8f5c68762fc1dab")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CarlaStatus>)))
  "Returns full string definition for message of type '<CarlaStatus>"
  (cl:format cl:nil "#~%# Copyright (c) 2019 Intel Corporation.~%#~%# This work is licensed under the terms of the MIT license.~%# For a copy, see <https://opensource.org/licenses/MIT>.~%#~%~%uint64 frame                  # frame number~%~%float32 fixed_delta_seconds   # duration of one frame~%bool synchronous_mode         # carla is in synchronous mode~%bool synchronous_mode_running # true: running, false: paused~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CarlaStatus)))
  "Returns full string definition for message of type 'CarlaStatus"
  (cl:format cl:nil "#~%# Copyright (c) 2019 Intel Corporation.~%#~%# This work is licensed under the terms of the MIT license.~%# For a copy, see <https://opensource.org/licenses/MIT>.~%#~%~%uint64 frame                  # frame number~%~%float32 fixed_delta_seconds   # duration of one frame~%bool synchronous_mode         # carla is in synchronous mode~%bool synchronous_mode_running # true: running, false: paused~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CarlaStatus>))
  (cl:+ 0
     8
     4
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CarlaStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'CarlaStatus
    (cl:cons ':frame (frame msg))
    (cl:cons ':fixed_delta_seconds (fixed_delta_seconds msg))
    (cl:cons ':synchronous_mode (synchronous_mode msg))
    (cl:cons ':synchronous_mode_running (synchronous_mode_running msg))
))
