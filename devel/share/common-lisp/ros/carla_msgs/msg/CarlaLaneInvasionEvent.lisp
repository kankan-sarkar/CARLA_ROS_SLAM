; Auto-generated. Do not edit!


(cl:in-package carla_msgs-msg)


;//! \htmlinclude CarlaLaneInvasionEvent.msg.html

(cl:defclass <CarlaLaneInvasionEvent> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (crossed_lane_markings
    :reader crossed_lane_markings
    :initarg :crossed_lane_markings
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass CarlaLaneInvasionEvent (<CarlaLaneInvasionEvent>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CarlaLaneInvasionEvent>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CarlaLaneInvasionEvent)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name carla_msgs-msg:<CarlaLaneInvasionEvent> is deprecated: use carla_msgs-msg:CarlaLaneInvasionEvent instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CarlaLaneInvasionEvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader carla_msgs-msg:header-val is deprecated.  Use carla_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'crossed_lane_markings-val :lambda-list '(m))
(cl:defmethod crossed_lane_markings-val ((m <CarlaLaneInvasionEvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader carla_msgs-msg:crossed_lane_markings-val is deprecated.  Use carla_msgs-msg:crossed_lane_markings instead.")
  (crossed_lane_markings m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<CarlaLaneInvasionEvent>)))
    "Constants for message type '<CarlaLaneInvasionEvent>"
  '((:LANE_MARKING_OTHER . 0)
    (:LANE_MARKING_BROKEN . 1)
    (:LANE_MARKING_SOLID . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'CarlaLaneInvasionEvent)))
    "Constants for message type 'CarlaLaneInvasionEvent"
  '((:LANE_MARKING_OTHER . 0)
    (:LANE_MARKING_BROKEN . 1)
    (:LANE_MARKING_SOLID . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CarlaLaneInvasionEvent>) ostream)
  "Serializes a message object of type '<CarlaLaneInvasionEvent>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'crossed_lane_markings))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'crossed_lane_markings))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CarlaLaneInvasionEvent>) istream)
  "Deserializes a message object of type '<CarlaLaneInvasionEvent>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'crossed_lane_markings) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'crossed_lane_markings)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CarlaLaneInvasionEvent>)))
  "Returns string type for a message object of type '<CarlaLaneInvasionEvent>"
  "carla_msgs/CarlaLaneInvasionEvent")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CarlaLaneInvasionEvent)))
  "Returns string type for a message object of type 'CarlaLaneInvasionEvent"
  "carla_msgs/CarlaLaneInvasionEvent")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CarlaLaneInvasionEvent>)))
  "Returns md5sum for a message object of type '<CarlaLaneInvasionEvent>"
  "3846cea49c4897522899dbda091314e8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CarlaLaneInvasionEvent)))
  "Returns md5sum for a message object of type 'CarlaLaneInvasionEvent"
  "3846cea49c4897522899dbda091314e8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CarlaLaneInvasionEvent>)))
  "Returns full string definition for message of type '<CarlaLaneInvasionEvent>"
  (cl:format cl:nil "#~%# Copyright (c) 2019 Intel Corporation.~%#~%# This work is licensed under the terms of the MIT license.~%# For a copy, see <https://opensource.org/licenses/MIT>.~%#~%# A lane invasion event~%~%Header header~%~%int32[] crossed_lane_markings~%~%int32 LANE_MARKING_OTHER=0~%int32 LANE_MARKING_BROKEN=1~%int32 LANE_MARKING_SOLID=2~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CarlaLaneInvasionEvent)))
  "Returns full string definition for message of type 'CarlaLaneInvasionEvent"
  (cl:format cl:nil "#~%# Copyright (c) 2019 Intel Corporation.~%#~%# This work is licensed under the terms of the MIT license.~%# For a copy, see <https://opensource.org/licenses/MIT>.~%#~%# A lane invasion event~%~%Header header~%~%int32[] crossed_lane_markings~%~%int32 LANE_MARKING_OTHER=0~%int32 LANE_MARKING_BROKEN=1~%int32 LANE_MARKING_SOLID=2~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CarlaLaneInvasionEvent>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'crossed_lane_markings) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CarlaLaneInvasionEvent>))
  "Converts a ROS message object to a list"
  (cl:list 'CarlaLaneInvasionEvent
    (cl:cons ':header (header msg))
    (cl:cons ':crossed_lane_markings (crossed_lane_markings msg))
))
