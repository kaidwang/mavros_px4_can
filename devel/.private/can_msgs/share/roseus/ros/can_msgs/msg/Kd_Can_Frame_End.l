;; Auto-generated. Do not edit!


(when (boundp 'can_msgs::Kd_Can_Frame_End)
  (if (not (find-package "CAN_MSGS"))
    (make-package "CAN_MSGS"))
  (shadow 'Kd_Can_Frame_End (find-package "CAN_MSGS")))
(unless (find-package "CAN_MSGS::KD_CAN_FRAME_END")
  (make-package "CAN_MSGS::KD_CAN_FRAME_END"))

(in-package "ROS")
;;//! \htmlinclude Kd_Can_Frame_End.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass can_msgs::Kd_Can_Frame_End
  :super ros::object
  :slots (_header _crca _crcb ))

(defmethod can_msgs::Kd_Can_Frame_End
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:crca __crca) 0)
    ((:crcb __crcb) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _crca (round __crca))
   (setq _crcb (round __crcb))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:crca
   (&optional __crca)
   (if __crca (setq _crca __crca)) _crca)
  (:crcb
   (&optional __crcb)
   (if __crcb (setq _crcb __crcb)) _crcb)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _crca
    1
    ;; uint8 _crcb
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _crca
       (write-byte _crca s)
     ;; uint8 _crcb
       (write-byte _crcb s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _crca
     (setq _crca (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _crcb
     (setq _crcb (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get can_msgs::Kd_Can_Frame_End :md5sum-) "916ba27749b7ac9e7211be94f6664329")
(setf (get can_msgs::Kd_Can_Frame_End :datatype-) "can_msgs/Kd_Can_Frame_End")
(setf (get can_msgs::Kd_Can_Frame_End :definition-)
      "Header header
uint8 crca
uint8 crcb

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



(provide :can_msgs/Kd_Can_Frame_End "916ba27749b7ac9e7211be94f6664329")


