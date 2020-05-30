;; Auto-generated. Do not edit!


(when (boundp 'carla_msgs::CarlaCollisionEvent)
  (if (not (find-package "CARLA_MSGS"))
    (make-package "CARLA_MSGS"))
  (shadow 'CarlaCollisionEvent (find-package "CARLA_MSGS")))
(unless (find-package "CARLA_MSGS::CARLACOLLISIONEVENT")
  (make-package "CARLA_MSGS::CARLACOLLISIONEVENT"))

(in-package "ROS")
;;//! \htmlinclude CarlaCollisionEvent.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass carla_msgs::CarlaCollisionEvent
  :super ros::object
  :slots (_header _other_actor_id _normal_impulse ))

(defmethod carla_msgs::CarlaCollisionEvent
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:other_actor_id __other_actor_id) 0)
    ((:normal_impulse __normal_impulse) (instance geometry_msgs::Vector3 :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _other_actor_id (round __other_actor_id))
   (setq _normal_impulse __normal_impulse)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:other_actor_id
   (&optional __other_actor_id)
   (if __other_actor_id (setq _other_actor_id __other_actor_id)) _other_actor_id)
  (:normal_impulse
   (&rest __normal_impulse)
   (if (keywordp (car __normal_impulse))
       (send* _normal_impulse __normal_impulse)
     (progn
       (if __normal_impulse (setq _normal_impulse (car __normal_impulse)))
       _normal_impulse)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _other_actor_id
    4
    ;; geometry_msgs/Vector3 _normal_impulse
    (send _normal_impulse :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _other_actor_id
       (write-long _other_actor_id s)
     ;; geometry_msgs/Vector3 _normal_impulse
       (send _normal_impulse :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _other_actor_id
     (setq _other_actor_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Vector3 _normal_impulse
     (send _normal_impulse :deserialize buf ptr-) (incf ptr- (send _normal_impulse :serialization-length))
   ;;
   self)
  )

(setf (get carla_msgs::CarlaCollisionEvent :md5sum-) "9f08ee4a25bac7157d460b45684dd2b7")
(setf (get carla_msgs::CarlaCollisionEvent :datatype-) "carla_msgs/CarlaCollisionEvent")
(setf (get carla_msgs::CarlaCollisionEvent :definition-)
      "#
# Copyright (c) 2019 Intel Corporation.
#
# This work is licensed under the terms of the MIT license.
# For a copy, see <https://opensource.org/licenses/MIT>.
#
# A collision event

Header header

uint32 other_actor_id
geometry_msgs/Vector3 normal_impulse

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



(provide :carla_msgs/CarlaCollisionEvent "9f08ee4a25bac7157d460b45684dd2b7")


