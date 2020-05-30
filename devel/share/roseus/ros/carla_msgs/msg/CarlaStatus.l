;; Auto-generated. Do not edit!


(when (boundp 'carla_msgs::CarlaStatus)
  (if (not (find-package "CARLA_MSGS"))
    (make-package "CARLA_MSGS"))
  (shadow 'CarlaStatus (find-package "CARLA_MSGS")))
(unless (find-package "CARLA_MSGS::CARLASTATUS")
  (make-package "CARLA_MSGS::CARLASTATUS"))

(in-package "ROS")
;;//! \htmlinclude CarlaStatus.msg.html


(defclass carla_msgs::CarlaStatus
  :super ros::object
  :slots (_frame _fixed_delta_seconds _synchronous_mode _synchronous_mode_running ))

(defmethod carla_msgs::CarlaStatus
  (:init
   (&key
    ((:frame __frame) 0)
    ((:fixed_delta_seconds __fixed_delta_seconds) 0.0)
    ((:synchronous_mode __synchronous_mode) nil)
    ((:synchronous_mode_running __synchronous_mode_running) nil)
    )
   (send-super :init)
   (setq _frame (round __frame))
   (setq _fixed_delta_seconds (float __fixed_delta_seconds))
   (setq _synchronous_mode __synchronous_mode)
   (setq _synchronous_mode_running __synchronous_mode_running)
   self)
  (:frame
   (&optional __frame)
   (if __frame (setq _frame __frame)) _frame)
  (:fixed_delta_seconds
   (&optional __fixed_delta_seconds)
   (if __fixed_delta_seconds (setq _fixed_delta_seconds __fixed_delta_seconds)) _fixed_delta_seconds)
  (:synchronous_mode
   (&optional __synchronous_mode)
   (if __synchronous_mode (setq _synchronous_mode __synchronous_mode)) _synchronous_mode)
  (:synchronous_mode_running
   (&optional __synchronous_mode_running)
   (if __synchronous_mode_running (setq _synchronous_mode_running __synchronous_mode_running)) _synchronous_mode_running)
  (:serialization-length
   ()
   (+
    ;; uint64 _frame
    8
    ;; float32 _fixed_delta_seconds
    4
    ;; bool _synchronous_mode
    1
    ;; bool _synchronous_mode_running
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint64 _frame
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _frame (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _frame) (= (length (_frame . bv)) 2)) ;; bignum
              (write-long (ash (elt (_frame . bv) 0) 0) s)
              (write-long (ash (elt (_frame . bv) 1) -1) s))
             ((and (class _frame) (= (length (_frame . bv)) 1)) ;; big1
              (write-long (elt (_frame . bv) 0) s)
              (write-long (if (>= _frame 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _frame s)(write-long (if (>= _frame 0) 0 #xffffffff) s)))
     ;; float32 _fixed_delta_seconds
       (sys::poke _fixed_delta_seconds (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _synchronous_mode
       (if _synchronous_mode (write-byte -1 s) (write-byte 0 s))
     ;; bool _synchronous_mode_running
       (if _synchronous_mode_running (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint64 _frame
     
#+(or :alpha :irix6 :x86_64)
      (setf _frame (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _frame (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; float32 _fixed_delta_seconds
     (setq _fixed_delta_seconds (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _synchronous_mode
     (setq _synchronous_mode (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _synchronous_mode_running
     (setq _synchronous_mode_running (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get carla_msgs::CarlaStatus :md5sum-) "0a6e668a0d517dead8f5c68762fc1dab")
(setf (get carla_msgs::CarlaStatus :datatype-) "carla_msgs/CarlaStatus")
(setf (get carla_msgs::CarlaStatus :definition-)
      "#
# Copyright (c) 2019 Intel Corporation.
#
# This work is licensed under the terms of the MIT license.
# For a copy, see <https://opensource.org/licenses/MIT>.
#

uint64 frame                  # frame number

float32 fixed_delta_seconds   # duration of one frame
bool synchronous_mode         # carla is in synchronous mode
bool synchronous_mode_running # true: running, false: paused
")



(provide :carla_msgs/CarlaStatus "0a6e668a0d517dead8f5c68762fc1dab")


