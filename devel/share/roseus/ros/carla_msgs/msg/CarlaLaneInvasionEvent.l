;; Auto-generated. Do not edit!


(when (boundp 'carla_msgs::CarlaLaneInvasionEvent)
  (if (not (find-package "CARLA_MSGS"))
    (make-package "CARLA_MSGS"))
  (shadow 'CarlaLaneInvasionEvent (find-package "CARLA_MSGS")))
(unless (find-package "CARLA_MSGS::CARLALANEINVASIONEVENT")
  (make-package "CARLA_MSGS::CARLALANEINVASIONEVENT"))

(in-package "ROS")
;;//! \htmlinclude CarlaLaneInvasionEvent.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*LANE_MARKING_OTHER*" (find-package "CARLA_MSGS::CARLALANEINVASIONEVENT"))
(shadow '*LANE_MARKING_OTHER* (find-package "CARLA_MSGS::CARLALANEINVASIONEVENT"))
(defconstant carla_msgs::CarlaLaneInvasionEvent::*LANE_MARKING_OTHER* 0)
(intern "*LANE_MARKING_BROKEN*" (find-package "CARLA_MSGS::CARLALANEINVASIONEVENT"))
(shadow '*LANE_MARKING_BROKEN* (find-package "CARLA_MSGS::CARLALANEINVASIONEVENT"))
(defconstant carla_msgs::CarlaLaneInvasionEvent::*LANE_MARKING_BROKEN* 1)
(intern "*LANE_MARKING_SOLID*" (find-package "CARLA_MSGS::CARLALANEINVASIONEVENT"))
(shadow '*LANE_MARKING_SOLID* (find-package "CARLA_MSGS::CARLALANEINVASIONEVENT"))
(defconstant carla_msgs::CarlaLaneInvasionEvent::*LANE_MARKING_SOLID* 2)
(defclass carla_msgs::CarlaLaneInvasionEvent
  :super ros::object
  :slots (_header _crossed_lane_markings ))

(defmethod carla_msgs::CarlaLaneInvasionEvent
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:crossed_lane_markings __crossed_lane_markings) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _header __header)
   (setq _crossed_lane_markings __crossed_lane_markings)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:crossed_lane_markings
   (&optional __crossed_lane_markings)
   (if __crossed_lane_markings (setq _crossed_lane_markings __crossed_lane_markings)) _crossed_lane_markings)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32[] _crossed_lane_markings
    (* 4    (length _crossed_lane_markings)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32[] _crossed_lane_markings
     (write-long (length _crossed_lane_markings) s)
     (dotimes (i (length _crossed_lane_markings))
       (write-long (elt _crossed_lane_markings i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32[] _crossed_lane_markings
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _crossed_lane_markings (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _crossed_lane_markings i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get carla_msgs::CarlaLaneInvasionEvent :md5sum-) "3846cea49c4897522899dbda091314e8")
(setf (get carla_msgs::CarlaLaneInvasionEvent :datatype-) "carla_msgs/CarlaLaneInvasionEvent")
(setf (get carla_msgs::CarlaLaneInvasionEvent :definition-)
      "#
# Copyright (c) 2019 Intel Corporation.
#
# This work is licensed under the terms of the MIT license.
# For a copy, see <https://opensource.org/licenses/MIT>.
#
# A lane invasion event

Header header

int32[] crossed_lane_markings

int32 LANE_MARKING_OTHER=0
int32 LANE_MARKING_BROKEN=1
int32 LANE_MARKING_SOLID=2


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



(provide :carla_msgs/CarlaLaneInvasionEvent "3846cea49c4897522899dbda091314e8")


