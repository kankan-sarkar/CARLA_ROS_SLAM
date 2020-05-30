; Auto-generated. Do not edit!


(cl:in-package carla_msgs-msg)


;//! \htmlinclude CarlaCollisionEvent.msg.html

(cl:defclass <CarlaCollisionEvent> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (other_actor_id
    :reader other_actor_id
    :initarg :other_actor_id
    :type cl:integer
    :initform 0)
   (normal_impulse
    :reader normal_impulse
    :initarg :normal_impulse
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3)))
)

(cl:defclass CarlaCollisionEvent (<CarlaCollisionEvent>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CarlaCollisionEvent>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CarlaCollisionEvent)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name carla_msgs-msg:<CarlaCollisionEvent> is deprecated: use carla_msgs-msg:CarlaCollisionEvent instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CarlaCollisionEvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader carla_msgs-msg:header-val is deprecated.  Use carla_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'other_actor_id-val :lambda-list '(m))
(cl:defmethod other_actor_id-val ((m <CarlaCollisionEvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader carla_msgs-msg:other_actor_id-val is deprecated.  Use carla_msgs-msg:other_actor_id instead.")
  (other_actor_id m))

(cl:ensure-generic-function 'normal_impulse-val :lambda-list '(m))
(cl:defmethod normal_impulse-val ((m <CarlaCollisionEvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader carla_msgs-msg:normal_impulse-val is deprecated.  Use carla_msgs-msg:normal_impulse instead.")
  (normal_impulse m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CarlaCollisionEvent>) ostream)
  "Serializes a message object of type '<CarlaCollisionEvent>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'other_actor_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'other_actor_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'other_actor_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'other_actor_id)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'normal_impulse) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CarlaCollisionEvent>) istream)
  "Deserializes a message object of type '<CarlaCollisionEvent>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'other_actor_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'other_actor_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'other_actor_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'other_actor_id)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'normal_impulse) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CarlaCollisionEvent>)))
  "Returns string type for a message object of type '<CarlaCollisionEvent>"
  "carla_msgs/CarlaCollisionEvent")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CarlaCollisionEvent)))
  "Returns string type for a message object of type 'CarlaCollisionEvent"
  "carla_msgs/CarlaCollisionEvent")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CarlaCollisionEvent>)))
  "Returns md5sum for a message object of type '<CarlaCollisionEvent>"
  "9f08ee4a25bac7157d460b45684dd2b7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CarlaCollisionEvent)))
  "Returns md5sum for a message object of type 'CarlaCollisionEvent"
  "9f08ee4a25bac7157d460b45684dd2b7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CarlaCollisionEvent>)))
  "Returns full string definition for message of type '<CarlaCollisionEvent>"
  (cl:format cl:nil "#~%# Copyright (c) 2019 Intel Corporation.~%#~%# This work is licensed under the terms of the MIT license.~%# For a copy, see <https://opensource.org/licenses/MIT>.~%#~%# A collision event~%~%Header header~%~%uint32 other_actor_id~%geometry_msgs/Vector3 normal_impulse~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CarlaCollisionEvent)))
  "Returns full string definition for message of type 'CarlaCollisionEvent"
  (cl:format cl:nil "#~%# Copyright (c) 2019 Intel Corporation.~%#~%# This work is licensed under the terms of the MIT license.~%# For a copy, see <https://opensource.org/licenses/MIT>.~%#~%# A collision event~%~%Header header~%~%uint32 other_actor_id~%geometry_msgs/Vector3 normal_impulse~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CarlaCollisionEvent>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'normal_impulse))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CarlaCollisionEvent>))
  "Converts a ROS message object to a list"
  (cl:list 'CarlaCollisionEvent
    (cl:cons ':header (header msg))
    (cl:cons ':other_actor_id (other_actor_id msg))
    (cl:cons ':normal_impulse (normal_impulse msg))
))
