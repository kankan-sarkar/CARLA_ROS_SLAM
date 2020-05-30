; Auto-generated. Do not edit!


(cl:in-package carla_msgs-msg)


;//! \htmlinclude CarlaControl.msg.html

(cl:defclass <CarlaControl> (roslisp-msg-protocol:ros-message)
  ((command
    :reader command
    :initarg :command
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CarlaControl (<CarlaControl>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CarlaControl>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CarlaControl)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name carla_msgs-msg:<CarlaControl> is deprecated: use carla_msgs-msg:CarlaControl instead.")))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <CarlaControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader carla_msgs-msg:command-val is deprecated.  Use carla_msgs-msg:command instead.")
  (command m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<CarlaControl>)))
    "Constants for message type '<CarlaControl>"
  '((:PLAY . 0)
    (:PAUSE . 1)
    (:STEP_ONCE . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'CarlaControl)))
    "Constants for message type 'CarlaControl"
  '((:PLAY . 0)
    (:PAUSE . 1)
    (:STEP_ONCE . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CarlaControl>) ostream)
  "Serializes a message object of type '<CarlaControl>"
  (cl:let* ((signed (cl:slot-value msg 'command)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CarlaControl>) istream)
  "Deserializes a message object of type '<CarlaControl>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'command) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CarlaControl>)))
  "Returns string type for a message object of type '<CarlaControl>"
  "carla_msgs/CarlaControl")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CarlaControl)))
  "Returns string type for a message object of type 'CarlaControl"
  "carla_msgs/CarlaControl")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CarlaControl>)))
  "Returns md5sum for a message object of type '<CarlaControl>"
  "30f228b2c28301e4ee4bc6cc67050acb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CarlaControl)))
  "Returns md5sum for a message object of type 'CarlaControl"
  "30f228b2c28301e4ee4bc6cc67050acb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CarlaControl>)))
  "Returns full string definition for message of type '<CarlaControl>"
  (cl:format cl:nil "#~%# Copyright (c) 2019 Intel Corporation.~%#~%# This work is licensed under the terms of the MIT license.~%# For a copy, see <https://opensource.org/licenses/MIT>.~%#~%~%int8 PLAY = 0~%int8 PAUSE = 1~%int8 STEP_ONCE = 2~%~%int8 command~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CarlaControl)))
  "Returns full string definition for message of type 'CarlaControl"
  (cl:format cl:nil "#~%# Copyright (c) 2019 Intel Corporation.~%#~%# This work is licensed under the terms of the MIT license.~%# For a copy, see <https://opensource.org/licenses/MIT>.~%#~%~%int8 PLAY = 0~%int8 PAUSE = 1~%int8 STEP_ONCE = 2~%~%int8 command~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CarlaControl>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CarlaControl>))
  "Converts a ROS message object to a list"
  (cl:list 'CarlaControl
    (cl:cons ':command (command msg))
))
