;; Auto-generated. Do not edit!


(when (boundp 'carla_msgs::CarlaActorList)
  (if (not (find-package "CARLA_MSGS"))
    (make-package "CARLA_MSGS"))
  (shadow 'CarlaActorList (find-package "CARLA_MSGS")))
(unless (find-package "CARLA_MSGS::CARLAACTORLIST")
  (make-package "CARLA_MSGS::CARLAACTORLIST"))

(in-package "ROS")
;;//! \htmlinclude CarlaActorList.msg.html


(defclass carla_msgs::CarlaActorList
  :super ros::object
  :slots (_actors ))

(defmethod carla_msgs::CarlaActorList
  (:init
   (&key
    ((:actors __actors) (let (r) (dotimes (i 0) (push (instance carla_msgs::CarlaActorInfo :init) r)) r))
    )
   (send-super :init)
   (setq _actors __actors)
   self)
  (:actors
   (&rest __actors)
   (if (keywordp (car __actors))
       (send* _actors __actors)
     (progn
       (if __actors (setq _actors (car __actors)))
       _actors)))
  (:serialization-length
   ()
   (+
    ;; carla_msgs/CarlaActorInfo[] _actors
    (apply #'+ (send-all _actors :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; carla_msgs/CarlaActorInfo[] _actors
     (write-long (length _actors) s)
     (dolist (elem _actors)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; carla_msgs/CarlaActorInfo[] _actors
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _actors (let (r) (dotimes (i n) (push (instance carla_msgs::CarlaActorInfo :init) r)) r))
     (dolist (elem- _actors)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get carla_msgs::CarlaActorList :md5sum-) "a10ababa303f55dd50f485b995641f71")
(setf (get carla_msgs::CarlaActorList :datatype-) "carla_msgs/CarlaActorList")
(setf (get carla_msgs::CarlaActorList :definition-)
      "#
# Copyright (c) 2019 Intel Corporation.
#
# This work is licensed under the terms of the MIT license.
# For a copy, see <https://opensource.org/licenses/MIT>.
#

CarlaActorInfo[] actors


================================================================================
MSG: carla_msgs/CarlaActorInfo
#
# Copyright (c) 2019 Intel Corporation.
#
# This work is licensed under the terms of the MIT license.
# For a copy, see <https://opensource.org/licenses/MIT>.
#

uint32 id
uint32 parent_id # 0 if no parent available
string type
string rolename


")



(provide :carla_msgs/CarlaActorList "a10ababa303f55dd50f485b995641f71")


