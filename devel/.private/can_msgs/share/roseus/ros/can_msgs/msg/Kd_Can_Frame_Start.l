;; Auto-generated. Do not edit!


(when (boundp 'can_msgs::Kd_Can_Frame_Start)
  (if (not (find-package "CAN_MSGS"))
    (make-package "CAN_MSGS"))
  (shadow 'Kd_Can_Frame_Start (find-package "CAN_MSGS")))
(unless (find-package "CAN_MSGS::KD_CAN_FRAME_START")
  (make-package "CAN_MSGS::KD_CAN_FRAME_START"))

(in-package "ROS")
;;//! \htmlinclude Kd_Can_Frame_Start.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass can_msgs::Kd_Can_Frame_Start
  :super ros::object
  :slots (_header _stx _len _seq _sys _comp _cmd ))

(defmethod can_msgs::Kd_Can_Frame_Start
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:stx __stx) 0)
    ((:len __len) 0)
    ((:seq __seq) 0)
    ((:sys __sys) 0)
    ((:comp __comp) 0)
    ((:cmd __cmd) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _stx (round __stx))
   (setq _len (round __len))
   (setq _seq (round __seq))
   (setq _sys (round __sys))
   (setq _comp (round __comp))
   (setq _cmd (round __cmd))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:stx
   (&optional __stx)
   (if __stx (setq _stx __stx)) _stx)
  (:len
   (&optional __len)
   (if __len (setq _len __len)) _len)
  (:seq
   (&optional __seq)
   (if __seq (setq _seq __seq)) _seq)
  (:sys
   (&optional __sys)
   (if __sys (setq _sys __sys)) _sys)
  (:comp
   (&optional __comp)
   (if __comp (setq _comp __comp)) _comp)
  (:cmd
   (&optional __cmd)
   (if __cmd (setq _cmd __cmd)) _cmd)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _stx
    1
    ;; uint8 _len
    1
    ;; uint8 _seq
    1
    ;; uint8 _sys
    1
    ;; uint8 _comp
    1
    ;; uint8 _cmd
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _stx
       (write-byte _stx s)
     ;; uint8 _len
       (write-byte _len s)
     ;; uint8 _seq
       (write-byte _seq s)
     ;; uint8 _sys
       (write-byte _sys s)
     ;; uint8 _comp
       (write-byte _comp s)
     ;; uint8 _cmd
       (write-byte _cmd s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _stx
     (setq _stx (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _len
     (setq _len (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _seq
     (setq _seq (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _sys
     (setq _sys (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _comp
     (setq _comp (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _cmd
     (setq _cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get can_msgs::Kd_Can_Frame_Start :md5sum-) "1ed2d8fa2509a0e1b936f41c90c897b9")
(setf (get can_msgs::Kd_Can_Frame_Start :datatype-) "can_msgs/Kd_Can_Frame_Start")
(setf (get can_msgs::Kd_Can_Frame_Start :definition-)
      "Header header
uint8 stx
uint8 len
uint8 seq
uint8 sys
uint8 comp
uint8 cmd

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
# 0: no frame
# 1: global frame
string frame_id

")



(provide :can_msgs/Kd_Can_Frame_Start "1ed2d8fa2509a0e1b936f41c90c897b9")


