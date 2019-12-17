; Auto-generated. Do not edit!


(cl:in-package can_msgs-msg)


;//! \htmlinclude Kd_Can_Frame_Start.msg.html

(cl:defclass <Kd_Can_Frame_Start> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (stx
    :reader stx
    :initarg :stx
    :type cl:fixnum
    :initform 0)
   (len
    :reader len
    :initarg :len
    :type cl:fixnum
    :initform 0)
   (seq
    :reader seq
    :initarg :seq
    :type cl:fixnum
    :initform 0)
   (sys
    :reader sys
    :initarg :sys
    :type cl:fixnum
    :initform 0)
   (comp
    :reader comp
    :initarg :comp
    :type cl:fixnum
    :initform 0)
   (cmd
    :reader cmd
    :initarg :cmd
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Kd_Can_Frame_Start (<Kd_Can_Frame_Start>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Kd_Can_Frame_Start>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Kd_Can_Frame_Start)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name can_msgs-msg:<Kd_Can_Frame_Start> is deprecated: use can_msgs-msg:Kd_Can_Frame_Start instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Kd_Can_Frame_Start>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:header-val is deprecated.  Use can_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'stx-val :lambda-list '(m))
(cl:defmethod stx-val ((m <Kd_Can_Frame_Start>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:stx-val is deprecated.  Use can_msgs-msg:stx instead.")
  (stx m))

(cl:ensure-generic-function 'len-val :lambda-list '(m))
(cl:defmethod len-val ((m <Kd_Can_Frame_Start>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:len-val is deprecated.  Use can_msgs-msg:len instead.")
  (len m))

(cl:ensure-generic-function 'seq-val :lambda-list '(m))
(cl:defmethod seq-val ((m <Kd_Can_Frame_Start>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:seq-val is deprecated.  Use can_msgs-msg:seq instead.")
  (seq m))

(cl:ensure-generic-function 'sys-val :lambda-list '(m))
(cl:defmethod sys-val ((m <Kd_Can_Frame_Start>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:sys-val is deprecated.  Use can_msgs-msg:sys instead.")
  (sys m))

(cl:ensure-generic-function 'comp-val :lambda-list '(m))
(cl:defmethod comp-val ((m <Kd_Can_Frame_Start>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:comp-val is deprecated.  Use can_msgs-msg:comp instead.")
  (comp m))

(cl:ensure-generic-function 'cmd-val :lambda-list '(m))
(cl:defmethod cmd-val ((m <Kd_Can_Frame_Start>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:cmd-val is deprecated.  Use can_msgs-msg:cmd instead.")
  (cmd m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Kd_Can_Frame_Start>) ostream)
  "Serializes a message object of type '<Kd_Can_Frame_Start>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'stx)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'len)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'seq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sys)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'comp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Kd_Can_Frame_Start>) istream)
  "Deserializes a message object of type '<Kd_Can_Frame_Start>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'stx)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'len)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'seq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sys)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'comp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Kd_Can_Frame_Start>)))
  "Returns string type for a message object of type '<Kd_Can_Frame_Start>"
  "can_msgs/Kd_Can_Frame_Start")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Kd_Can_Frame_Start)))
  "Returns string type for a message object of type 'Kd_Can_Frame_Start"
  "can_msgs/Kd_Can_Frame_Start")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Kd_Can_Frame_Start>)))
  "Returns md5sum for a message object of type '<Kd_Can_Frame_Start>"
  "1ed2d8fa2509a0e1b936f41c90c897b9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Kd_Can_Frame_Start)))
  "Returns md5sum for a message object of type 'Kd_Can_Frame_Start"
  "1ed2d8fa2509a0e1b936f41c90c897b9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Kd_Can_Frame_Start>)))
  "Returns full string definition for message of type '<Kd_Can_Frame_Start>"
  (cl:format cl:nil "Header header~%uint8 stx~%uint8 len~%uint8 seq~%uint8 sys~%uint8 comp~%uint8 cmd~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Kd_Can_Frame_Start)))
  "Returns full string definition for message of type 'Kd_Can_Frame_Start"
  (cl:format cl:nil "Header header~%uint8 stx~%uint8 len~%uint8 seq~%uint8 sys~%uint8 comp~%uint8 cmd~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Kd_Can_Frame_Start>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Kd_Can_Frame_Start>))
  "Converts a ROS message object to a list"
  (cl:list 'Kd_Can_Frame_Start
    (cl:cons ':header (header msg))
    (cl:cons ':stx (stx msg))
    (cl:cons ':len (len msg))
    (cl:cons ':seq (seq msg))
    (cl:cons ':sys (sys msg))
    (cl:cons ':comp (comp msg))
    (cl:cons ':cmd (cmd msg))
))
