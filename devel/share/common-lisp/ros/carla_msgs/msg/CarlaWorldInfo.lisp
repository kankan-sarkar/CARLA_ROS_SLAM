; Auto-generated. Do not edit!


(cl:in-package carla_msgs-msg)


;//! \htmlinclude CarlaWorldInfo.msg.html

(cl:defclass <CarlaWorldInfo> (roslisp-msg-protocol:ros-message)
  ((map_name
    :reader map_name
    :initarg :map_name
    :type cl:string
    :initform "")
   (opendrive
    :reader opendrive
    :initarg :opendrive
    :type cl:string
    :initform ""))
)

(cl:defclass CarlaWorldInfo (<CarlaWorldInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CarlaWorldInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CarlaWorldInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name carla_msgs-msg:<CarlaWorldInfo> is deprecated: use carla_msgs-msg:CarlaWorldInfo instead.")))

(cl:ensure-generic-function 'map_name-val :lambda-list '(m))
(cl:defmethod map_name-val ((m <CarlaWorldInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader carla_msgs-msg:map_name-val is deprecated.  Use carla_msgs-msg:map_name instead.")
  (map_name m))

(cl:ensure-generic-function 'opendrive-val :lambda-list '(m))
(cl:defmethod opendrive-val ((m <CarlaWorldInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader carla_msgs-msg:opendrive-val is deprecated.  Use carla_msgs-msg:opendrive instead.")
  (opendrive m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CarlaWorldInfo>) ostream)
  "Serializes a message object of type '<CarlaWorldInfo>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'map_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'map_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'opendrive))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'opendrive))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CarlaWorldInfo>) istream)
  "Deserializes a message object of type '<CarlaWorldInfo>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'map_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'map_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'opendrive) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'opendrive) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CarlaWorldInfo>)))
  "Returns string type for a message object of type '<CarlaWorldInfo>"
  "carla_msgs/CarlaWorldInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CarlaWorldInfo)))
  "Returns string type for a message object of type 'CarlaWorldInfo"
  "carla_msgs/CarlaWorldInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CarlaWorldInfo>)))
  "Returns md5sum for a message object of type '<CarlaWorldInfo>"
  "7a3a7a7fc8c213a8bec2ce7928b0a46c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CarlaWorldInfo)))
  "Returns md5sum for a message object of type 'CarlaWorldInfo"
  "7a3a7a7fc8c213a8bec2ce7928b0a46c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CarlaWorldInfo>)))
  "Returns full string definition for message of type '<CarlaWorldInfo>"
  (cl:format cl:nil "#~%# Copyright (c) 2018-2019 Intel Corporation.~%#~%# This work is licensed under the terms of the MIT license.~%# For a copy, see <https://opensource.org/licenses/MIT>.~%#~%~%string map_name~%string opendrive~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CarlaWorldInfo)))
  "Returns full string definition for message of type 'CarlaWorldInfo"
  (cl:format cl:nil "#~%# Copyright (c) 2018-2019 Intel Corporation.~%#~%# This work is licensed under the terms of the MIT license.~%# For a copy, see <https://opensource.org/licenses/MIT>.~%#~%~%string map_name~%string opendrive~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CarlaWorldInfo>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'map_name))
     4 (cl:length (cl:slot-value msg 'opendrive))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CarlaWorldInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'CarlaWorldInfo
    (cl:cons ':map_name (map_name msg))
    (cl:cons ':opendrive (opendrive msg))
))
