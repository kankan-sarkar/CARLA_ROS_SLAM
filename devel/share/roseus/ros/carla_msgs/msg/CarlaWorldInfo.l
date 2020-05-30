;; Auto-generated. Do not edit!


(when (boundp 'carla_msgs::CarlaWorldInfo)
  (if (not (find-package "CARLA_MSGS"))
    (make-package "CARLA_MSGS"))
  (shadow 'CarlaWorldInfo (find-package "CARLA_MSGS")))
(unless (find-package "CARLA_MSGS::CARLAWORLDINFO")
  (make-package "CARLA_MSGS::CARLAWORLDINFO"))

(in-package "ROS")
;;//! \htmlinclude CarlaWorldInfo.msg.html


(defclass carla_msgs::CarlaWorldInfo
  :super ros::object
  :slots (_map_name _opendrive ))

(defmethod carla_msgs::CarlaWorldInfo
  (:init
   (&key
    ((:map_name __map_name) "")
    ((:opendrive __opendrive) "")
    )
   (send-super :init)
   (setq _map_name (string __map_name))
   (setq _opendrive (string __opendrive))
   self)
  (:map_name
   (&optional __map_name)
   (if __map_name (setq _map_name __map_name)) _map_name)
  (:opendrive
   (&optional __opendrive)
   (if __opendrive (setq _opendrive __opendrive)) _opendrive)
  (:serialization-length
   ()
   (+
    ;; string _map_name
    4 (length _map_name)
    ;; string _opendrive
    4 (length _opendrive)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _map_name
       (write-long (length _map_name) s) (princ _map_name s)
     ;; string _opendrive
       (write-long (length _opendrive) s) (princ _opendrive s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _map_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _map_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _opendrive
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _opendrive (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get carla_msgs::CarlaWorldInfo :md5sum-) "7a3a7a7fc8c213a8bec2ce7928b0a46c")
(setf (get carla_msgs::CarlaWorldInfo :datatype-) "carla_msgs/CarlaWorldInfo")
(setf (get carla_msgs::CarlaWorldInfo :definition-)
      "#
# Copyright (c) 2018-2019 Intel Corporation.
#
# This work is licensed under the terms of the MIT license.
# For a copy, see <https://opensource.org/licenses/MIT>.
#

string map_name
string opendrive

")



(provide :carla_msgs/CarlaWorldInfo "7a3a7a7fc8c213a8bec2ce7928b0a46c")


