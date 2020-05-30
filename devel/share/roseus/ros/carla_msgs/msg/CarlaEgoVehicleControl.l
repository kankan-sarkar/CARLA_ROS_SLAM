;; Auto-generated. Do not edit!


(when (boundp 'carla_msgs::CarlaEgoVehicleControl)
  (if (not (find-package "CARLA_MSGS"))
    (make-package "CARLA_MSGS"))
  (shadow 'CarlaEgoVehicleControl (find-package "CARLA_MSGS")))
(unless (find-package "CARLA_MSGS::CARLAEGOVEHICLECONTROL")
  (make-package "CARLA_MSGS::CARLAEGOVEHICLECONTROL"))

(in-package "ROS")
;;//! \htmlinclude CarlaEgoVehicleControl.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass carla_msgs::CarlaEgoVehicleControl
  :super ros::object
  :slots (_header _throttle _steer _brake _hand_brake _reverse _gear _manual_gear_shift ))

(defmethod carla_msgs::CarlaEgoVehicleControl
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:throttle __throttle) 0.0)
    ((:steer __steer) 0.0)
    ((:brake __brake) 0.0)
    ((:hand_brake __hand_brake) nil)
    ((:reverse __reverse) nil)
    ((:gear __gear) 0)
    ((:manual_gear_shift __manual_gear_shift) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _throttle (float __throttle))
   (setq _steer (float __steer))
   (setq _brake (float __brake))
   (setq _hand_brake __hand_brake)
   (setq _reverse __reverse)
   (setq _gear (round __gear))
   (setq _manual_gear_shift __manual_gear_shift)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:throttle
   (&optional __throttle)
   (if __throttle (setq _throttle __throttle)) _throttle)
  (:steer
   (&optional __steer)
   (if __steer (setq _steer __steer)) _steer)
  (:brake
   (&optional __brake)
   (if __brake (setq _brake __brake)) _brake)
  (:hand_brake
   (&optional __hand_brake)
   (if __hand_brake (setq _hand_brake __hand_brake)) _hand_brake)
  (:reverse
   (&optional __reverse)
   (if __reverse (setq _reverse __reverse)) _reverse)
  (:gear
   (&optional __gear)
   (if __gear (setq _gear __gear)) _gear)
  (:manual_gear_shift
   (&optional __manual_gear_shift)
   (if __manual_gear_shift (setq _manual_gear_shift __manual_gear_shift)) _manual_gear_shift)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _throttle
    4
    ;; float32 _steer
    4
    ;; float32 _brake
    4
    ;; bool _hand_brake
    1
    ;; bool _reverse
    1
    ;; int32 _gear
    4
    ;; bool _manual_gear_shift
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _throttle
       (sys::poke _throttle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _steer
       (sys::poke _steer (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _brake
       (sys::poke _brake (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _hand_brake
       (if _hand_brake (write-byte -1 s) (write-byte 0 s))
     ;; bool _reverse
       (if _reverse (write-byte -1 s) (write-byte 0 s))
     ;; int32 _gear
       (write-long _gear s)
     ;; bool _manual_gear_shift
       (if _manual_gear_shift (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _throttle
     (setq _throttle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _steer
     (setq _steer (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _brake
     (setq _brake (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _hand_brake
     (setq _hand_brake (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _reverse
     (setq _reverse (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _gear
     (setq _gear (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _manual_gear_shift
     (setq _manual_gear_shift (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get carla_msgs::CarlaEgoVehicleControl :md5sum-) "e5b57fc698c12ff4c20a5fc71fba832f")
(setf (get carla_msgs::CarlaEgoVehicleControl :datatype-) "carla_msgs/CarlaEgoVehicleControl")
(setf (get carla_msgs::CarlaEgoVehicleControl :definition-)
      "#
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

")



(provide :carla_msgs/CarlaEgoVehicleControl "e5b57fc698c12ff4c20a5fc71fba832f")


