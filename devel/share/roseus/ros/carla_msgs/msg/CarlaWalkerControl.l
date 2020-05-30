;; Auto-generated. Do not edit!


(when (boundp 'carla_msgs::CarlaWalkerControl)
  (if (not (find-package "CARLA_MSGS"))
    (make-package "CARLA_MSGS"))
  (shadow 'CarlaWalkerControl (find-package "CARLA_MSGS")))
(unless (find-package "CARLA_MSGS::CARLAWALKERCONTROL")
  (make-package "CARLA_MSGS::CARLAWALKERCONTROL"))

(in-package "ROS")
;;//! \htmlinclude CarlaWalkerControl.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass carla_msgs::CarlaWalkerControl
  :super ros::object
  :slots (_direction _speed _jump ))

(defmethod carla_msgs::CarlaWalkerControl
  (:init
   (&key
    ((:direction __direction) (instance geometry_msgs::Vector3 :init))
    ((:speed __speed) 0.0)
    ((:jump __jump) nil)
    )
   (send-super :init)
   (setq _direction __direction)
   (setq _speed (float __speed))
   (setq _jump __jump)
   self)
  (:direction
   (&rest __direction)
   (if (keywordp (car __direction))
       (send* _direction __direction)
     (progn
       (if __direction (setq _direction (car __direction)))
       _direction)))
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:jump
   (&optional __jump)
   (if __jump (setq _jump __jump)) _jump)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Vector3 _direction
    (send _direction :serialization-length)
    ;; float32 _speed
    4
    ;; bool _jump
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Vector3 _direction
       (send _direction :serialize s)
     ;; float32 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _jump
       (if _jump (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Vector3 _direction
     (send _direction :deserialize buf ptr-) (incf ptr- (send _direction :serialization-length))
   ;; float32 _speed
     (setq _speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _jump
     (setq _jump (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get carla_msgs::CarlaWalkerControl :md5sum-) "bd3de0306de3de4e7161a29868c1f9a7")
(setf (get carla_msgs::CarlaWalkerControl :datatype-) "carla_msgs/CarlaWalkerControl")
(setf (get carla_msgs::CarlaWalkerControl :definition-)
      "#
# Copyright (c) 2019 Intel Corporation.
#
# This work is licensed under the terms of the MIT license.
# For a copy, see <https://opensource.org/licenses/MIT>.
#
# This represents a walker control message sent to CARLA simulator

geometry_msgs/Vector3 direction
float32 speed
bool jump

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



(provide :carla_msgs/CarlaWalkerControl "bd3de0306de3de4e7161a29868c1f9a7")


