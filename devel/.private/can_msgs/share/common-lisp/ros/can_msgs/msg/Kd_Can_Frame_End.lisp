; Auto-generated. Do not edit!


(cl:in-package can_msgs-msg)


;//! \htmlinclude Kd_Can_Frame_End.msg.html

(cl:defclass <Kd_Can_Frame_End> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (crca
    :reader crca
    :initarg :crca
    :type cl:fixnum
    :initform 0)
   (crcb
    :reader crcb
    :initarg :crcb
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Kd_Can_Frame_End (<Kd_Can_Frame_End>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Kd_Can_Frame_End>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Kd_Can_Frame_End)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name can_msgs-msg:<Kd_Can_Frame_End> is deprecated: use can_msgs-msg:Kd_Can_Frame_End instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Kd_Can_Frame_End>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:header-val is deprecated.  Use can_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'crca-val :lambda-list '(m))
(cl:defmethod crca-val ((m <Kd_Can_Frame_End>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:crca-val is deprecated.  Use can_msgs-msg:crca instead.")
  (crca m))

(cl:ensure-generic-function 'crcb-val :lambda-list '(m))
(cl:defmethod crcb-val ((m <Kd_Can_Frame_End>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:crcb-val is deprecated.  Use can_msgs-msg:crcb instead.")
  (crcb m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Kd_Can_Frame_End>) ostream)
  "Serializes a message object of type '<Kd_Can_Frame_End>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'crca)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'crcb)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Kd_Can_Frame_End>) istream)
  "Deserializes a message object of type '<Kd_Can_Frame_End>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'crca)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'crcb)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Kd_Can_Frame_End>)))
  "Returns string type for a message object of type '<Kd_Can_Frame_End>"
  "can_msgs/Kd_Can_Frame_End")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Kd_Can_Frame_End)))
  "Returns string type for a message object of type 'Kd_Can_Frame_End"
  "can_msgs/Kd_Can_Frame_End")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Kd_Can_Frame_End>)))
  "Returns md5sum for a message object of type '<Kd_Can_Frame_End>"
  "916ba27749b7ac9e7211be94f6664329")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Kd_Can_Frame_End)))
  "Returns md5sum for a message object of type 'Kd_Can_Frame_End"
  "916ba27749b7ac9e7211be94f6664329")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Kd_Can_Frame_End>)))
  "Returns full string definition for message of type '<Kd_Can_Frame_End>"
  (cl:format cl:nil "Header header~%uint8 crca~%uint8 crcb~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Kd_Can_Frame_End)))
  "Returns full string definition for message of type 'Kd_Can_Frame_End"
  (cl:format cl:nil "Header header~%uint8 crca~%uint8 crcb~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Kd_Can_Frame_End>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Kd_Can_Frame_End>))
  "Converts a ROS message object to a list"
  (cl:list 'Kd_Can_Frame_End
    (cl:cons ':header (header msg))
    (cl:cons ':crca (crca msg))
    (cl:cons ':crcb (crcb msg))
))
