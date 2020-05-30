; Auto-generated. Do not edit!


(cl:in-package carla_msgs-msg)


;//! \htmlinclude CarlaEgoVehicleInfo.msg.html

(cl:defclass <CarlaEgoVehicleInfo> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
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
    :initform "")
   (wheels
    :reader wheels
    :initarg :wheels
    :type (cl:vector carla_msgs-msg:CarlaEgoVehicleInfoWheel)
   :initform (cl:make-array 0 :element-type 'carla_msgs-msg:CarlaEgoVehicleInfoWheel :initial-element (cl:make-instance 'carla_msgs-msg:CarlaEgoVehicleInfoWheel)))
   (max_rpm
    :reader max_rpm
    :initarg :max_rpm
    :type cl:float
    :initform 0.0)
   (moi
    :reader moi
    :initarg :moi
    :type cl:float
    :initform 0.0)
   (damping_rate_full_throttle
    :reader damping_rate_full_throttle
    :initarg :damping_rate_full_throttle
    :type cl:float
    :initform 0.0)
   (damping_rate_zero_throttle_clutch_engaged
    :reader damping_rate_zero_throttle_clutch_engaged
    :initarg :damping_rate_zero_throttle_clutch_engaged
    :type cl:float
    :initform 0.0)
   (damping_rate_zero_throttle_clutch_disengaged
    :reader damping_rate_zero_throttle_clutch_disengaged
    :initarg :damping_rate_zero_throttle_clutch_disengaged
    :type cl:float
    :initform 0.0)
   (use_gear_autobox
    :reader use_gear_autobox
    :initarg :use_gear_autobox
    :type cl:boolean
    :initform cl:nil)
   (gear_switch_time
    :reader gear_switch_time
    :initarg :gear_switch_time
    :type cl:float
    :initform 0.0)
   (clutch_strength
    :reader clutch_strength
    :initarg :clutch_strength
    :type cl:float
    :initform 0.0)
   (mass
    :reader mass
    :initarg :mass
    :type cl:float
    :initform 0.0)
   (drag_coefficient
    :reader drag_coefficient
    :initarg :drag_coefficient
    :type cl:float
    :initform 0.0)
   (center_of_mass
    :reader center_of_mass
    :initarg :center_of_mass
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3)))
)

(cl:defclass CarlaEgoVehicleInfo (<CarlaEgoVehicleInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CarlaEgoVehicleInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CarlaEgoVehicleInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name carla_msgs-msg:<CarlaEgoVehicleInfo> is deprecated: use carla_msgs-msg:CarlaEgoVehicleInfo instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <CarlaEgoVehicleInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader carla_msgs-msg:id-val is deprecated.  Use carla_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <CarlaEgoVehicleInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader carla_msgs-msg:type-val is deprecated.  Use carla_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'rolename-val :lambda-list '(m))
(cl:defmethod rolename-val ((m <CarlaEgoVehicleInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader carla_msgs-msg:rolename-val is deprecated.  Use carla_msgs-msg:rolename instead.")
  (rolename m))

(cl:ensure-generic-function 'wheels-val :lambda-list '(m))
(cl:defmethod wheels-val ((m <CarlaEgoVehicleInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader carla_msgs-msg:wheels-val is deprecated.  Use carla_msgs-msg:wheels instead.")
  (wheels m))

(cl:ensure-generic-function 'max_rpm-val :lambda-list '(m))
(cl:defmethod max_rpm-val ((m <CarlaEgoVehicleInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader carla_msgs-msg:max_rpm-val is deprecated.  Use carla_msgs-msg:max_rpm instead.")
  (max_rpm m))

(cl:ensure-generic-function 'moi-val :lambda-list '(m))
(cl:defmethod moi-val ((m <CarlaEgoVehicleInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader carla_msgs-msg:moi-val is deprecated.  Use carla_msgs-msg:moi instead.")
  (moi m))

(cl:ensure-generic-function 'damping_rate_full_throttle-val :lambda-list '(m))
(cl:defmethod damping_rate_full_throttle-val ((m <CarlaEgoVehicleInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader carla_msgs-msg:damping_rate_full_throttle-val is deprecated.  Use carla_msgs-msg:damping_rate_full_throttle instead.")
  (damping_rate_full_throttle m))

(cl:ensure-generic-function 'damping_rate_zero_throttle_clutch_engaged-val :lambda-list '(m))
(cl:defmethod damping_rate_zero_throttle_clutch_engaged-val ((m <CarlaEgoVehicleInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader carla_msgs-msg:damping_rate_zero_throttle_clutch_engaged-val is deprecated.  Use carla_msgs-msg:damping_rate_zero_throttle_clutch_engaged instead.")
  (damping_rate_zero_throttle_clutch_engaged m))

(cl:ensure-generic-function 'damping_rate_zero_throttle_clutch_disengaged-val :lambda-list '(m))
(cl:defmethod damping_rate_zero_throttle_clutch_disengaged-val ((m <CarlaEgoVehicleInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader carla_msgs-msg:damping_rate_zero_throttle_clutch_disengaged-val is deprecated.  Use carla_msgs-msg:damping_rate_zero_throttle_clutch_disengaged instead.")
  (damping_rate_zero_throttle_clutch_disengaged m))

(cl:ensure-generic-function 'use_gear_autobox-val :lambda-list '(m))
(cl:defmethod use_gear_autobox-val ((m <CarlaEgoVehicleInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader carla_msgs-msg:use_gear_autobox-val is deprecated.  Use carla_msgs-msg:use_gear_autobox instead.")
  (use_gear_autobox m))

(cl:ensure-generic-function 'gear_switch_time-val :lambda-list '(m))
(cl:defmethod gear_switch_time-val ((m <CarlaEgoVehicleInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader carla_msgs-msg:gear_switch_time-val is deprecated.  Use carla_msgs-msg:gear_switch_time instead.")
  (gear_switch_time m))

(cl:ensure-generic-function 'clutch_strength-val :lambda-list '(m))
(cl:defmethod clutch_strength-val ((m <CarlaEgoVehicleInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader carla_msgs-msg:clutch_strength-val is deprecated.  Use carla_msgs-msg:clutch_strength instead.")
  (clutch_strength m))

(cl:ensure-generic-function 'mass-val :lambda-list '(m))
(cl:defmethod mass-val ((m <CarlaEgoVehicleInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader carla_msgs-msg:mass-val is deprecated.  Use carla_msgs-msg:mass instead.")
  (mass m))

(cl:ensure-generic-function 'drag_coefficient-val :lambda-list '(m))
(cl:defmethod drag_coefficient-val ((m <CarlaEgoVehicleInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader carla_msgs-msg:drag_coefficient-val is deprecated.  Use carla_msgs-msg:drag_coefficient instead.")
  (drag_coefficient m))

(cl:ensure-generic-function 'center_of_mass-val :lambda-list '(m))
(cl:defmethod center_of_mass-val ((m <CarlaEgoVehicleInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader carla_msgs-msg:center_of_mass-val is deprecated.  Use carla_msgs-msg:center_of_mass instead.")
  (center_of_mass m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CarlaEgoVehicleInfo>) ostream)
  "Serializes a message object of type '<CarlaEgoVehicleInfo>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) ostream)
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
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'wheels))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'wheels))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'max_rpm))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'moi))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'damping_rate_full_throttle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'damping_rate_zero_throttle_clutch_engaged))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'damping_rate_zero_throttle_clutch_disengaged))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'use_gear_autobox) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'gear_switch_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'clutch_strength))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'mass))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'drag_coefficient))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'center_of_mass) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CarlaEgoVehicleInfo>) istream)
  "Deserializes a message object of type '<CarlaEgoVehicleInfo>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) (cl:read-byte istream))
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
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'wheels) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'wheels)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'carla_msgs-msg:CarlaEgoVehicleInfoWheel))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_rpm) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'moi) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'damping_rate_full_throttle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'damping_rate_zero_throttle_clutch_engaged) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'damping_rate_zero_throttle_clutch_disengaged) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'use_gear_autobox) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'gear_switch_time) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'clutch_strength) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'mass) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'drag_coefficient) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'center_of_mass) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CarlaEgoVehicleInfo>)))
  "Returns string type for a message object of type '<CarlaEgoVehicleInfo>"
  "carla_msgs/CarlaEgoVehicleInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CarlaEgoVehicleInfo)))
  "Returns string type for a message object of type 'CarlaEgoVehicleInfo"
  "carla_msgs/CarlaEgoVehicleInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CarlaEgoVehicleInfo>)))
  "Returns md5sum for a message object of type '<CarlaEgoVehicleInfo>"
  "380b84c67059884787e0b582a7236281")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CarlaEgoVehicleInfo)))
  "Returns md5sum for a message object of type 'CarlaEgoVehicleInfo"
  "380b84c67059884787e0b582a7236281")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CarlaEgoVehicleInfo>)))
  "Returns full string definition for message of type '<CarlaEgoVehicleInfo>"
  (cl:format cl:nil "#~%# Copyright (c) 2019 Intel Corporation.~%#~%# This work is licensed under the terms of the MIT license.~%# For a copy, see <https://opensource.org/licenses/MIT>.~%#~%~%uint32 id~%string type~%string rolename~%CarlaEgoVehicleInfoWheel[] wheels~%float32 max_rpm~%float32 moi~%float32 damping_rate_full_throttle~%float32 damping_rate_zero_throttle_clutch_engaged~%float32 damping_rate_zero_throttle_clutch_disengaged~%bool use_gear_autobox~%float32 gear_switch_time~%float32 clutch_strength~%float32 mass~%float32 drag_coefficient~%geometry_msgs/Vector3 center_of_mass~%~%================================================================================~%MSG: carla_msgs/CarlaEgoVehicleInfoWheel~%#~%# Copyright (c) 2019 Intel Corporation.~%#~%# This work is licensed under the terms of the MIT license.~%# For a copy, see <https://opensource.org/licenses/MIT>.~%#~%float32 tire_friction~%float32 damping_rate~%float32 max_steer_angle~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CarlaEgoVehicleInfo)))
  "Returns full string definition for message of type 'CarlaEgoVehicleInfo"
  (cl:format cl:nil "#~%# Copyright (c) 2019 Intel Corporation.~%#~%# This work is licensed under the terms of the MIT license.~%# For a copy, see <https://opensource.org/licenses/MIT>.~%#~%~%uint32 id~%string type~%string rolename~%CarlaEgoVehicleInfoWheel[] wheels~%float32 max_rpm~%float32 moi~%float32 damping_rate_full_throttle~%float32 damping_rate_zero_throttle_clutch_engaged~%float32 damping_rate_zero_throttle_clutch_disengaged~%bool use_gear_autobox~%float32 gear_switch_time~%float32 clutch_strength~%float32 mass~%float32 drag_coefficient~%geometry_msgs/Vector3 center_of_mass~%~%================================================================================~%MSG: carla_msgs/CarlaEgoVehicleInfoWheel~%#~%# Copyright (c) 2019 Intel Corporation.~%#~%# This work is licensed under the terms of the MIT license.~%# For a copy, see <https://opensource.org/licenses/MIT>.~%#~%float32 tire_friction~%float32 damping_rate~%float32 max_steer_angle~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CarlaEgoVehicleInfo>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'type))
     4 (cl:length (cl:slot-value msg 'rolename))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'wheels) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4
     4
     4
     4
     4
     1
     4
     4
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'center_of_mass))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CarlaEgoVehicleInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'CarlaEgoVehicleInfo
    (cl:cons ':id (id msg))
    (cl:cons ':type (type msg))
    (cl:cons ':rolename (rolename msg))
    (cl:cons ':wheels (wheels msg))
    (cl:cons ':max_rpm (max_rpm msg))
    (cl:cons ':moi (moi msg))
    (cl:cons ':damping_rate_full_throttle (damping_rate_full_throttle msg))
    (cl:cons ':damping_rate_zero_throttle_clutch_engaged (damping_rate_zero_throttle_clutch_engaged msg))
    (cl:cons ':damping_rate_zero_throttle_clutch_disengaged (damping_rate_zero_throttle_clutch_disengaged msg))
    (cl:cons ':use_gear_autobox (use_gear_autobox msg))
    (cl:cons ':gear_switch_time (gear_switch_time msg))
    (cl:cons ':clutch_strength (clutch_strength msg))
    (cl:cons ':mass (mass msg))
    (cl:cons ':drag_coefficient (drag_coefficient msg))
    (cl:cons ':center_of_mass (center_of_mass msg))
))
