; Auto-generated. Do not edit!


(cl:in-package carla_msgs-msg)


;//! \htmlinclude CarlaActorInfo.msg.html

(cl:defclass <CarlaActorInfo> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (parent_id
    :reader parent_id
    :initarg :parent_id
    :type cl:integer
    :initform 0)
   (type
    :reader type
    :initarg :type
    :type cl:string
    :initform "")
   (rolename
    :reader rolename
    :initarg :rolename
    :type cl:string
    :initform ""))
)

(cl:defclass CarlaActorInfo (<CarlaActorInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CarlaActorInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CarlaActorInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name carla_msgs-msg:<CarlaActorInfo> is deprecated: use carla_msgs-msg:CarlaActorInfo instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <CarlaActorInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader carla_msgs-msg:id-val is deprecated.  Use carla_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'parent_id-val :lambda-list '(m))
(cl:defmethod parent_id-val ((m <CarlaActorInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader carla_msgs-msg:parent_id-val is deprecated.  Use carla_msgs-msg:parent_id instead.")
  (parent_id m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <CarlaActorInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader carla_msgs-msg:type-val is deprecated.  Use carla_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'rolename-val :lambda-list '(m))
(cl:defmethod rolename-val ((m <CarlaActorInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader carla_msgs-msg:rolename-val is deprecated.  Use carla_msgs-msg:rolename instead.")
  (rolename m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CarlaActorInfo>) ostream)
  "Serializes a message object of type '<CarlaActorInfo>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'parent_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'parent_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'parent_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'parent_id)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'type))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'rolename))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'rolename))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CarlaActorInfo>) istream)
  "Deserializes a message object of type '<CarlaActorInfo>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'parent_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'parent_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'parent_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'parent_id)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rolename) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'rolename) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CarlaActorInfo>)))
  "Returns string type for a message object of type '<CarlaActorInfo>"
  "carla_msgs/CarlaActorInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CarlaActorInfo)))
  "Returns string type for a message object of type 'CarlaActorInfo"
  "carla_msgs/CarlaActorInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CarlaActorInfo>)))
  "Returns md5sum for a message object of type '<CarlaActorInfo>"
  "101ec1019fd4e4a480a106d5c6d5dcac")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CarlaActorInfo)))
  "Returns md5sum for a message object of type 'CarlaActorInfo"
  "101ec1019fd4e4a480a106d5c6d5dcac")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CarlaActorInfo>)))
  "Returns full string definition for message of type '<CarlaActorInfo>"
  (cl:format cl:nil "#~%# Copyright (c) 2019 Intel Corporation.~%#~%# This work is licensed under the terms of the MIT license.~%# For a copy, see <https://opensource.org/licenses/MIT>.~%#~%~%uint32 id~%uint32 parent_id # 0 if no parent available~%string type~%string rolename~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CarlaActorInfo)))
  "Returns full string definition for message of type 'CarlaActorInfo"
  (cl:format cl:nil "#~%# Copyright (c) 2019 Intel Corporation.~%#~%# This work is licensed under the terms of the MIT license.~%# For a copy, see <https://opensource.org/licenses/MIT>.~%#~%~%uint32 id~%uint32 parent_id # 0 if no parent available~%string type~%string rolename~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CarlaActorInfo>))
  (cl:+ 0
     4
     4
     4 (cl:length (cl:slot-value msg 'type))
     4 (cl:length (cl:slot-value msg 'rolename))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CarlaActorInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'CarlaActorInfo
    (cl:cons ':id (id msg))
    (cl:cons ':parent_id (parent_id msg))
    (cl:cons ':type (type msg))
    (cl:cons ':rolename (rolename msg))
))
