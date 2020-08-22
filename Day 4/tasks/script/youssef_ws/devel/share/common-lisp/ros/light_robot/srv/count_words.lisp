; Auto-generated. Do not edit!


(cl:in-package light_robot-srv)


;//! \htmlinclude count_words-request.msg.html

(cl:defclass <count_words-request> (roslisp-msg-protocol:ros-message)
  ((sentence
    :reader sentence
    :initarg :sentence
    :type cl:string
    :initform ""))
)

(cl:defclass count_words-request (<count_words-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <count_words-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'count_words-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name light_robot-srv:<count_words-request> is deprecated: use light_robot-srv:count_words-request instead.")))

(cl:ensure-generic-function 'sentence-val :lambda-list '(m))
(cl:defmethod sentence-val ((m <count_words-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader light_robot-srv:sentence-val is deprecated.  Use light_robot-srv:sentence instead.")
  (sentence m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <count_words-request>) ostream)
  "Serializes a message object of type '<count_words-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'sentence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'sentence))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <count_words-request>) istream)
  "Deserializes a message object of type '<count_words-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sentence) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'sentence) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<count_words-request>)))
  "Returns string type for a service object of type '<count_words-request>"
  "light_robot/count_wordsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'count_words-request)))
  "Returns string type for a service object of type 'count_words-request"
  "light_robot/count_wordsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<count_words-request>)))
  "Returns md5sum for a message object of type '<count_words-request>"
  "a72516dd6f0c89c765a5e6ee697ada54")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'count_words-request)))
  "Returns md5sum for a message object of type 'count_words-request"
  "a72516dd6f0c89c765a5e6ee697ada54")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<count_words-request>)))
  "Returns full string definition for message of type '<count_words-request>"
  (cl:format cl:nil "string sentence~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'count_words-request)))
  "Returns full string definition for message of type 'count_words-request"
  (cl:format cl:nil "string sentence~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <count_words-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'sentence))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <count_words-request>))
  "Converts a ROS message object to a list"
  (cl:list 'count_words-request
    (cl:cons ':sentence (sentence msg))
))
;//! \htmlinclude count_words-response.msg.html

(cl:defclass <count_words-response> (roslisp-msg-protocol:ros-message)
  ((length
    :reader length
    :initarg :length
    :type cl:integer
    :initform 0))
)

(cl:defclass count_words-response (<count_words-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <count_words-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'count_words-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name light_robot-srv:<count_words-response> is deprecated: use light_robot-srv:count_words-response instead.")))

(cl:ensure-generic-function 'length-val :lambda-list '(m))
(cl:defmethod length-val ((m <count_words-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader light_robot-srv:length-val is deprecated.  Use light_robot-srv:length instead.")
  (length m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <count_words-response>) ostream)
  "Serializes a message object of type '<count_words-response>"
  (cl:let* ((signed (cl:slot-value msg 'length)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <count_words-response>) istream)
  "Deserializes a message object of type '<count_words-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'length) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<count_words-response>)))
  "Returns string type for a service object of type '<count_words-response>"
  "light_robot/count_wordsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'count_words-response)))
  "Returns string type for a service object of type 'count_words-response"
  "light_robot/count_wordsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<count_words-response>)))
  "Returns md5sum for a message object of type '<count_words-response>"
  "a72516dd6f0c89c765a5e6ee697ada54")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'count_words-response)))
  "Returns md5sum for a message object of type 'count_words-response"
  "a72516dd6f0c89c765a5e6ee697ada54")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<count_words-response>)))
  "Returns full string definition for message of type '<count_words-response>"
  (cl:format cl:nil "int64 length~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'count_words-response)))
  "Returns full string definition for message of type 'count_words-response"
  (cl:format cl:nil "int64 length~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <count_words-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <count_words-response>))
  "Converts a ROS message object to a list"
  (cl:list 'count_words-response
    (cl:cons ':length (length msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'count_words)))
  'count_words-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'count_words)))
  'count_words-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'count_words)))
  "Returns string type for a service object of type '<count_words>"
  "light_robot/count_words")