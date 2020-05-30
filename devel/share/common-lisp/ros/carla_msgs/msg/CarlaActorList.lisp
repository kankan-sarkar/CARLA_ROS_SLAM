; Auto-generated. Do not edit!


(cl:in-package carla_msgs-msg)


;//! \htmlinclude CarlaActorList.msg.html

(cl:defclass <CarlaActorList> (roslisp-msg-protocol:ros-message)
  ((actors
    :reader actors
    :initarg :actors
    :type (cl:vector carla_msgs-msg:CarlaActorInfo)
   :initform (cl:make-array 0 :element-type 'carla_msgs-msg:CarlaActorInfo :initial-element (cl:make-instance 'carla_msgs-msg:CarlaActorInfo))))
)

(cl:defclass CarlaActorList (<CarlaActorList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CarlaActorList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CarlaActorList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name carla_msgs-msg:<CarlaActorList> is deprecated: use carla_msgs-msg:CarlaActorList instead.")))

(cl:ensure-generic-function 'actors-val :lambda-list '(m))
(cl:defmethod actors-val ((m <CarlaActorList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader carla_msgs-msg:actors-val is deprecated.  Use carla_msgs-msg:actors instead.")
  (actors m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CarlaActorList>) ostream)
  "Serializes a message object of type '<CarlaActorList>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'actors))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'actors))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CarlaActorList>) istream)
  "Deserializes a message object of type '<CarlaActorList>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'actors) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'actors)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'carla_msgs-msg:CarlaActorInfo))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CarlaActorList>)))
  "Returns string type for a message object of type '<CarlaActorList>"
  "carla_msgs/CarlaActorList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CarlaActorList)))
  "Returns string type for a message object of type 'CarlaActorList"
  "carla_msgs/CarlaActorList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CarlaActorList>)))
  "Returns md5sum for a message object of type '<CarlaActorList>"
  "a10ababa303f55dd50f485b995641f71")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CarlaActorList)))
  "Returns md5sum for a message object of type 'CarlaActorList"
  "a10ababa303f55dd50f485b995641f71")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CarlaActorList>)))
  "Returns full string definition for message of type '<CarlaActorList>"
  (cl:format cl:nil "#~%# Copyright (c) 2019 Intel Corporation.~%#~%# This work is licensed under the terms of the MIT license.~%# For a copy, see <https://opensource.org/licenses/MIT>.~%#~%~%CarlaActorInfo[] actors~%~%~%================================================================================~%MSG: carla_msgs/CarlaActorInfo~%#~%# Copyright (c) 2019 Intel Corporation.~%#~%# This work is licensed under the terms of the MIT license.~%# For a copy, see <https://opensource.org/licenses/MIT>.~%#~%~%uint32 id~%uint32 parent_id # 0 if no parent available~%string type~%string rolename~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CarlaActorList)))
  "Returns full string definition for message of type 'CarlaActorList"
  (cl:format cl:nil "#~%# Copyright (c) 2019 Intel Corporation.~%#~%# This work is licensed under the terms of the MIT license.~%# For a copy, see <https://opensource.org/licenses/MIT>.~%#~%~%CarlaActorInfo[] actors~%~%~%================================================================================~%MSG: carla_msgs/CarlaActorInfo~%#~%# Copyright (c) 2019 Intel Corporation.~%#~%# This work is licensed under the terms of the MIT license.~%# For a copy, see <https://opensource.org/licenses/MIT>.~%#~%~%uint32 id~%uint32 parent_id # 0 if no parent available~%string type~%string rolename~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CarlaActorList>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'actors) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CarlaActorList>))
  "Converts a ROS message object to a list"
  (cl:list 'CarlaActorList
    (cl:cons ':actors (actors msg))
))
