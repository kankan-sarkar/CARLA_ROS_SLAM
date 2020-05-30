;; Auto-generated. Do not edit!


(when (boundp 'carla_msgs::CarlaControl)
  (if (not (find-package "CARLA_MSGS"))
    (make-package "CARLA_MSGS"))
  (shadow 'CarlaControl (find-package "CARLA_MSGS")))
(unless (find-package "CARLA_MSGS::CARLACONTROL")
  (make-package "CARLA_MSGS::CARLACONTROL"))

(in-package "ROS")
;;//! \htmlinclude CarlaControl.msg.html


(intern "*PLAY*" (find-package "CARLA_MSGS::CARLACONTROL"))
(shadow '*PLAY* (find-package "CARLA_MSGS::CARLACONTROL"))
(defconstant carla_msgs::CarlaControl::*PLAY* 0)
(intern "*PAUSE*" (find-package "CARLA_MSGS::CARLACONTROL"))
(shadow '*PAUSE* (find-package "CARLA_MSGS::CARLACONTROL"))
(defconstant carla_msgs::CarlaControl::*PAUSE* 1)
(intern "*STEP_ONCE*" (find-package "CARLA_MSGS::CARLACONTROL"))
(shadow '*STEP_ONCE* (find-package "CARLA_MSGS::CARLACONTROL"))
(defconstant carla_msgs::CarlaControl::*STEP_ONCE* 2)
(defclass carla_msgs::CarlaControl
  :super ros::object
  :slots (_command ))

(defmethod carla_msgs::CarlaControl
  (:init
   (&key
    ((:command __command) 0)
    )
   (send-super :init)
   (setq _command (round __command))
   self)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:serialization-length
   ()
   (+
    ;; int8 _command
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _command
       (write-byte _command s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _command
     (setq _command (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _command 127) (setq _command (- _command 256)))
   ;;
   self)
  )

(setf (get carla_msgs::CarlaControl :md5sum-) "30f228b2c28301e4ee4bc6cc67050acb")
(setf (get carla_msgs::CarlaControl :datatype-) "carla_msgs/CarlaControl")
(setf (get carla_msgs::CarlaControl :definition-)
      "#
# Copyright (c) 2019 Intel Corporation.
#
# This work is licensed under the terms of the MIT license.
# For a copy, see <https://opensource.org/licenses/MIT>.
#

int8 PLAY = 0
int8 PAUSE = 1
int8 STEP_ONCE = 2

int8 command


")



(provide :carla_msgs/CarlaControl "30f228b2c28301e4ee4bc6cc67050acb")


