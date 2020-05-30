;; Auto-generated. Do not edit!


(when (boundp 'carla_msgs::CarlaEgoVehicleInfo)
  (if (not (find-package "CARLA_MSGS"))
    (make-package "CARLA_MSGS"))
  (shadow 'CarlaEgoVehicleInfo (find-package "CARLA_MSGS")))
(unless (find-package "CARLA_MSGS::CARLAEGOVEHICLEINFO")
  (make-package "CARLA_MSGS::CARLAEGOVEHICLEINFO"))

(in-package "ROS")
;;//! \htmlinclude CarlaEgoVehicleInfo.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass carla_msgs::CarlaEgoVehicleInfo
  :super ros::object
  :slots (_id _type _rolename _wheels _max_rpm _moi _damping_rate_full_throttle _damping_rate_zero_throttle_clutch_engaged _damping_rate_zero_throttle_clutch_disengaged _use_gear_autobox _gear_switch_time _clutch_strength _mass _drag_coefficient _center_of_mass ))

(defmethod carla_msgs::CarlaEgoVehicleInfo
  (:init
   (&key
    ((:id __id) 0)
    ((:type __type) "")
    ((:rolename __rolename) "")
    ((:wheels __wheels) (let (r) (dotimes (i 0) (push (instance carla_msgs::CarlaEgoVehicleInfoWheel :init) r)) r))
    ((:max_rpm __max_rpm) 0.0)
    ((:moi __moi) 0.0)
    ((:damping_rate_full_throttle __damping_rate_full_throttle) 0.0)
    ((:damping_rate_zero_throttle_clutch_engaged __damping_rate_zero_throttle_clutch_engaged) 0.0)
    ((:damping_rate_zero_throttle_clutch_disengaged __damping_rate_zero_throttle_clutch_disengaged) 0.0)
    ((:use_gear_autobox __use_gear_autobox) nil)
    ((:gear_switch_time __gear_switch_time) 0.0)
    ((:clutch_strength __clutch_strength) 0.0)
    ((:mass __mass) 0.0)
    ((:drag_coefficient __drag_coefficient) 0.0)
    ((:center_of_mass __center_of_mass) (instance geometry_msgs::Vector3 :init))
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _type (string __type))
   (setq _rolename (string __rolename))
   (setq _wheels __wheels)
   (setq _max_rpm (float __max_rpm))
   (setq _moi (float __moi))
   (setq _damping_rate_full_throttle (float __damping_rate_full_throttle))
   (setq _damping_rate_zero_throttle_clutch_engaged (float __damping_rate_zero_throttle_clutch_engaged))
   (setq _damping_rate_zero_throttle_clutch_disengaged (float __damping_rate_zero_throttle_clutch_disengaged))
   (setq _use_gear_autobox __use_gear_autobox)
   (setq _gear_switch_time (float __gear_switch_time))
   (setq _clutch_strength (float __clutch_strength))
   (setq _mass (float __mass))
   (setq _drag_coefficient (float __drag_coefficient))
   (setq _center_of_mass __center_of_mass)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:rolename
   (&optional __rolename)
   (if __rolename (setq _rolename __rolename)) _rolename)
  (:wheels
   (&rest __wheels)
   (if (keywordp (car __wheels))
       (send* _wheels __wheels)
     (progn
       (if __wheels (setq _wheels (car __wheels)))
       _wheels)))
  (:max_rpm
   (&optional __max_rpm)
   (if __max_rpm (setq _max_rpm __max_rpm)) _max_rpm)
  (:moi
   (&optional __moi)
   (if __moi (setq _moi __moi)) _moi)
  (:damping_rate_full_throttle
   (&optional __damping_rate_full_throttle)
   (if __damping_rate_full_throttle (setq _damping_rate_full_throttle __damping_rate_full_throttle)) _damping_rate_full_throttle)
  (:damping_rate_zero_throttle_clutch_engaged
   (&optional __damping_rate_zero_throttle_clutch_engaged)
   (if __damping_rate_zero_throttle_clutch_engaged (setq _damping_rate_zero_throttle_clutch_engaged __damping_rate_zero_throttle_clutch_engaged)) _damping_rate_zero_throttle_clutch_engaged)
  (:damping_rate_zero_throttle_clutch_disengaged
   (&optional __damping_rate_zero_throttle_clutch_disengaged)
   (if __damping_rate_zero_throttle_clutch_disengaged (setq _damping_rate_zero_throttle_clutch_disengaged __damping_rate_zero_throttle_clutch_disengaged)) _damping_rate_zero_throttle_clutch_disengaged)
  (:use_gear_autobox
   (&optional __use_gear_autobox)
   (if __use_gear_autobox (setq _use_gear_autobox __use_gear_autobox)) _use_gear_autobox)
  (:gear_switch_time
   (&optional __gear_switch_time)
   (if __gear_switch_time (setq _gear_switch_time __gear_switch_time)) _gear_switch_time)
  (:clutch_strength
   (&optional __clutch_strength)
   (if __clutch_strength (setq _clutch_strength __clutch_strength)) _clutch_strength)
  (:mass
   (&optional __mass)
   (if __mass (setq _mass __mass)) _mass)
  (:drag_coefficient
   (&optional __drag_coefficient)
   (if __drag_coefficient (setq _drag_coefficient __drag_coefficient)) _drag_coefficient)
  (:center_of_mass
   (&rest __center_of_mass)
   (if (keywordp (car __center_of_mass))
       (send* _center_of_mass __center_of_mass)
     (progn
       (if __center_of_mass (setq _center_of_mass (car __center_of_mass)))
       _center_of_mass)))
  (:serialization-length
   ()
   (+
    ;; uint32 _id
    4
    ;; string _type
    4 (length _type)
    ;; string _rolename
    4 (length _rolename)
    ;; carla_msgs/CarlaEgoVehicleInfoWheel[] _wheels
    (apply #'+ (send-all _wheels :serialization-length)) 4
    ;; float32 _max_rpm
    4
    ;; float32 _moi
    4
    ;; float32 _damping_rate_full_throttle
    4
    ;; float32 _damping_rate_zero_throttle_clutch_engaged
    4
    ;; float32 _damping_rate_zero_throttle_clutch_disengaged
    4
    ;; bool _use_gear_autobox
    1
    ;; float32 _gear_switch_time
    4
    ;; float32 _clutch_strength
    4
    ;; float32 _mass
    4
    ;; float32 _drag_coefficient
    4
    ;; geometry_msgs/Vector3 _center_of_mass
    (send _center_of_mass :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _id
       (write-long _id s)
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;; string _rolename
       (write-long (length _rolename) s) (princ _rolename s)
     ;; carla_msgs/CarlaEgoVehicleInfoWheel[] _wheels
     (write-long (length _wheels) s)
     (dolist (elem _wheels)
       (send elem :serialize s)
       )
     ;; float32 _max_rpm
       (sys::poke _max_rpm (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _moi
       (sys::poke _moi (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _damping_rate_full_throttle
       (sys::poke _damping_rate_full_throttle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _damping_rate_zero_throttle_clutch_engaged
       (sys::poke _damping_rate_zero_throttle_clutch_engaged (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _damping_rate_zero_throttle_clutch_disengaged
       (sys::poke _damping_rate_zero_throttle_clutch_disengaged (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _use_gear_autobox
       (if _use_gear_autobox (write-byte -1 s) (write-byte 0 s))
     ;; float32 _gear_switch_time
       (sys::poke _gear_switch_time (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _clutch_strength
       (sys::poke _clutch_strength (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _mass
       (sys::poke _mass (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _drag_coefficient
       (sys::poke _drag_coefficient (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; geometry_msgs/Vector3 _center_of_mass
       (send _center_of_mass :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _rolename
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _rolename (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; carla_msgs/CarlaEgoVehicleInfoWheel[] _wheels
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _wheels (let (r) (dotimes (i n) (push (instance carla_msgs::CarlaEgoVehicleInfoWheel :init) r)) r))
     (dolist (elem- _wheels)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float32 _max_rpm
     (setq _max_rpm (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _moi
     (setq _moi (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _damping_rate_full_throttle
     (setq _damping_rate_full_throttle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _damping_rate_zero_throttle_clutch_engaged
     (setq _damping_rate_zero_throttle_clutch_engaged (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _damping_rate_zero_throttle_clutch_disengaged
     (setq _damping_rate_zero_throttle_clutch_disengaged (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _use_gear_autobox
     (setq _use_gear_autobox (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _gear_switch_time
     (setq _gear_switch_time (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _clutch_strength
     (setq _clutch_strength (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _mass
     (setq _mass (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _drag_coefficient
     (setq _drag_coefficient (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; geometry_msgs/Vector3 _center_of_mass
     (send _center_of_mass :deserialize buf ptr-) (incf ptr- (send _center_of_mass :serialization-length))
   ;;
   self)
  )

(setf (get carla_msgs::CarlaEgoVehicleInfo :md5sum-) "380b84c67059884787e0b582a7236281")
(setf (get carla_msgs::CarlaEgoVehicleInfo :datatype-) "carla_msgs/CarlaEgoVehicleInfo")
(setf (get carla_msgs::CarlaEgoVehicleInfo :definition-)
      "#
# Copyright (c) 2019 Intel Corporation.
#
# This work is licensed under the terms of the MIT license.
# For a copy, see <https://opensource.org/licenses/MIT>.
#

uint32 id
string type
string rolename
CarlaEgoVehicleInfoWheel[] wheels
float32 max_rpm
float32 moi
float32 damping_rate_full_throttle
float32 damping_rate_zero_throttle_clutch_engaged
float32 damping_rate_zero_throttle_clutch_disengaged
bool use_gear_autobox
float32 gear_switch_time
float32 clutch_strength
float32 mass
float32 drag_coefficient
geometry_msgs/Vector3 center_of_mass

================================================================================
MSG: carla_msgs/CarlaEgoVehicleInfoWheel
#
# Copyright (c) 2019 Intel Corporation.
#
# This work is licensed under the terms of the MIT license.
# For a copy, see <https://opensource.org/licenses/MIT>.
#
float32 tire_friction
float32 damping_rate
float32 max_steer_angle

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
")



(provide :carla_msgs/CarlaEgoVehicleInfo "380b84c67059884787e0b582a7236281")


