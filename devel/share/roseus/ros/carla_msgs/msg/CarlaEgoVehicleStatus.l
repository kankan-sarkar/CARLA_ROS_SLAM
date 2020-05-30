;; Auto-generated. Do not edit!


(when (boundp 'carla_msgs::CarlaEgoVehicleStatus)
  (if (not (find-package "CARLA_MSGS"))
    (make-package "CARLA_MSGS"))
  (shadow 'CarlaEgoVehicleStatus (find-package "CARLA_MSGS")))
(unless (find-package "CARLA_MSGS::CARLAEGOVEHICLESTATUS")
  (make-package "CARLA_MSGS::CARLAEGOVEHICLESTATUS"))

(in-package "ROS")
;;//! \htmlinclude CarlaEgoVehicleStatus.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass carla_msgs::CarlaEgoVehicleStatus
  :super ros::object
  :slots (_header _velocity _acceleration _orientation _control ))

(defmethod carla_msgs::CarlaEgoVehicleStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:velocity __velocity) 0.0)
    ((:acceleration __acceleration) (instance geometry_msgs::Accel :init))
    ((:orientation __orientation) (instance geometry_msgs::Quaternion :init))
    ((:control __control) (instance carla_msgs::CarlaEgoVehicleControl :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _velocity (float __velocity))
   (setq _acceleration __acceleration)
   (setq _orientation __orientation)
   (setq _control __control)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:velocity
   (&optional __velocity)
   (if __velocity (setq _velocity __velocity)) _velocity)
  (:acceleration
   (&rest __acceleration)
   (if (keywordp (car __acceleration))
       (send* _acceleration __acceleration)
     (progn
       (if __acceleration (setq _acceleration (car __acceleration)))
       _acceleration)))
  (:orientation
   (&rest __orientation)
   (if (keywordp (car __orientation))
       (send* _orientation __orientation)
     (progn
       (if __orientation (setq _orientation (car __orientation)))
       _orientation)))
  (:control
   (&rest __control)
   (if (keywordp (car __control))
       (send* _control __control)
     (progn
       (if __control (setq _control (car __control)))
       _control)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _velocity
    4
    ;; geometry_msgs/Accel _acceleration
    (send _acceleration :serialization-length)
    ;; geometry_msgs/Quaternion _orientation
    (send _orientation :serialization-length)
    ;; carla_msgs/CarlaEgoVehicleControl _control
    (send _control :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _velocity
       (sys::poke _velocity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; geometry_msgs/Accel _acceleration
       (send _acceleration :serialize s)
     ;; geometry_msgs/Quaternion _orientation
       (send _orientation :serialize s)
     ;; carla_msgs/CarlaEgoVehicleControl _control
       (send _control :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _velocity
     (setq _velocity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; geometry_msgs/Accel _acceleration
     (send _acceleration :deserialize buf ptr-) (incf ptr- (send _acceleration :serialization-length))
   ;; geometry_msgs/Quaternion _orientation
     (send _orientation :deserialize buf ptr-) (incf ptr- (send _orientation :serialization-length))
   ;; carla_msgs/CarlaEgoVehicleControl _control
     (send _control :deserialize buf ptr-) (incf ptr- (send _control :serialization-length))
   ;;
   self)
  )

(setf (get carla_msgs::CarlaEgoVehicleStatus :md5sum-) "7d24d9cd2c1c81e9a2b845b347cb2162")
(setf (get carla_msgs::CarlaEgoVehicleStatus :datatype-) "carla_msgs/CarlaEgoVehicleStatus")
(setf (get carla_msgs::CarlaEgoVehicleStatus :definition-)
      "#
# Copyright (c) 2019 Intel Corporation.
#
# This work is licensed under the terms of the MIT license.
# For a copy, see <https://opensource.org/licenses/MIT>.
#

Header header

float32 velocity
geometry_msgs/Accel acceleration
geometry_msgs/Quaternion orientation

# the current control values, as reported by Carla
CarlaEgoVehicleControl control

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Accel
# This expresses acceleration in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: carla_msgs/CarlaEgoVehicleControl
#
# Copyright (c) 2018-2019 Intel Corporation.
#
# This work is licensed under the terms of the MIT license.
# For a copy, see <https://opensource.org/licenses/MIT>.
#
# This represents a vehicle control message sent to CARLA simulator

Header header

# The CARLA vehicle control data

# 0. <= throttle <= 1.
float32 throttle

# -1. <= steer <= 1.
float32 steer

# 0. <= brake <= 1.
float32 brake

# hand_brake 0 or 1
bool hand_brake

# reverse 0 or 1
bool reverse

# gear
int32 gear

# manual gear shift
bool manual_gear_shift

")



(provide :carla_msgs/CarlaEgoVehicleStatus "7d24d9cd2c1c81e9a2b845b347cb2162")


