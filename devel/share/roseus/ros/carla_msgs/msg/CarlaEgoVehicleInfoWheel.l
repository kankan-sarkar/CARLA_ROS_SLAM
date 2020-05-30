;; Auto-generated. Do not edit!


(when (boundp 'carla_msgs::CarlaEgoVehicleInfoWheel)
  (if (not (find-package "CARLA_MSGS"))
    (make-package "CARLA_MSGS"))
  (shadow 'CarlaEgoVehicleInfoWheel (find-package "CARLA_MSGS")))
(unless (find-package "CARLA_MSGS::CARLAEGOVEHICLEINFOWHEEL")
  (make-package "CARLA_MSGS::CARLAEGOVEHICLEINFOWHEEL"))

(in-package "ROS")
;;//! \htmlinclude CarlaEgoVehicleInfoWheel.msg.html


(defclass carla_msgs::CarlaEgoVehicleInfoWheel
  :super ros::object
  :slots (_tire_friction _damping_rate _max_steer_angle ))

(defmethod carla_msgs::CarlaEgoVehicleInfoWheel
  (:init
   (&key
    ((:tire_friction __tire_friction) 0.0)
    ((:damping_rate __damping_rate) 0.0)
    ((:max_steer_angle __max_steer_angle) 0.0)
    )
   (send-super :init)
   (setq _tire_friction (float __tire_friction))
   (setq _damping_rate (float __damping_rate))
   (setq _max_steer_angle (float __max_steer_angle))
   self)
  (:tire_friction
   (&optional __tire_friction)
   (if __tire_friction (setq _tire_friction __tire_friction)) _tire_friction)
  (:damping_rate
   (&optional __damping_rate)
   (if __damping_rate (setq _damping_rate __damping_rate)) _damping_rate)
  (:max_steer_angle
   (&optional __max_steer_angle)
   (if __max_steer_angle (setq _max_steer_angle __max_steer_angle)) _max_steer_angle)
  (:serialization-length
   ()
   (+
    ;; float32 _tire_friction
    4
    ;; float32 _damping_rate
    4
    ;; float32 _max_steer_angle
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _tire_friction
       (sys::poke _tire_friction (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _damping_rate
       (sys::poke _damping_rate (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _max_steer_angle
       (sys::poke _max_steer_angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _tire_friction
     (setq _tire_friction (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _damping_rate
     (setq _damping_rate (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _max_steer_angle
     (setq _max_steer_angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get carla_msgs::CarlaEgoVehicleInfoWheel :md5sum-) "e50509267c9b1014c079d8826fd0dc72")
(setf (get carla_msgs::CarlaEgoVehicleInfoWheel :datatype-) "carla_msgs/CarlaEgoVehicleInfoWheel")
(setf (get carla_msgs::CarlaEgoVehicleInfoWheel :definition-)
      "#
# Copyright (c) 2019 Intel Corporation.
#
# This work is licensed under the terms of the MIT license.
# For a copy, see <https://opensource.org/licenses/MIT>.
#
float32 tire_friction
float32 damping_rate
float32 max_steer_angle

")



(provide :carla_msgs/CarlaEgoVehicleInfoWheel "e50509267c9b1014c079d8826fd0dc72")


