;; Auto-generated. Do not edit!


(when (boundp 'carla_msgs::CarlaActorInfo)
  (if (not (find-package "CARLA_MSGS"))
    (make-package "CARLA_MSGS"))
  (shadow 'CarlaActorInfo (find-package "CARLA_MSGS")))
(unless (find-package "CARLA_MSGS::CARLAACTORINFO")
  (make-package "CARLA_MSGS::CARLAACTORINFO"))

(in-package "ROS")
;;//! \htmlinclude CarlaActorInfo.msg.html


(defclass carla_msgs::CarlaActorInfo
  :super ros::object
  :slots (_id _parent_id _type _rolename ))

(defmethod carla_msgs::CarlaActorInfo
  (:init
   (&key
    ((:id __id) 0)
    ((:parent_id __parent_id) 0)
    ((:type __type) "")
    ((:rolename __rolename) "")
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _parent_id (round __parent_id))
   (setq _type (string __type))
   (setq _rolename (string __rolename))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:parent_id
   (&optional __parent_id)
   (if __parent_id (setq _parent_id __parent_id)) _parent_id)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:rolename
   (&optional __rolename)
   (if __rolename (setq _rolename __rolename)) _rolename)
  (:serialization-length
   ()
   (+
    ;; uint32 _id
    4
    ;; uint32 _parent_id
    4
    ;; string _type
    4 (length _type)
    ;; string _rolename
    4 (length _rolename)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _id
       (write-long _id s)
     ;; uint32 _parent_id
       (write-long _parent_id s)
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;; string _rolename
       (write-long (length _rolename) s) (princ _rolename s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _parent_id
     (setq _parent_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _rolename
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _rolename (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get carla_msgs::CarlaActorInfo :md5sum-) "101ec1019fd4e4a480a106d5c6d5dcac")
(setf (get carla_msgs::CarlaActorInfo :datatype-) "carla_msgs/CarlaActorInfo")
(setf (get carla_msgs::CarlaActorInfo :definition-)
      "#
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



(provide :carla_msgs/CarlaActorInfo "101ec1019fd4e4a480a106d5c6d5dcac")


