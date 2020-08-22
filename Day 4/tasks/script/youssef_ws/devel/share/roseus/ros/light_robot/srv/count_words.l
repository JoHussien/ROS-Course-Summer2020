;; Auto-generated. Do not edit!


(when (boundp 'light_robot::count_words)
  (if (not (find-package "LIGHT_ROBOT"))
    (make-package "LIGHT_ROBOT"))
  (shadow 'count_words (find-package "LIGHT_ROBOT")))
(unless (find-package "LIGHT_ROBOT::COUNT_WORDS")
  (make-package "LIGHT_ROBOT::COUNT_WORDS"))
(unless (find-package "LIGHT_ROBOT::COUNT_WORDSREQUEST")
  (make-package "LIGHT_ROBOT::COUNT_WORDSREQUEST"))
(unless (find-package "LIGHT_ROBOT::COUNT_WORDSRESPONSE")
  (make-package "LIGHT_ROBOT::COUNT_WORDSRESPONSE"))

(in-package "ROS")





(defclass light_robot::count_wordsRequest
  :super ros::object
  :slots (_sentence ))

(defmethod light_robot::count_wordsRequest
  (:init
   (&key
    ((:sentence __sentence) "")
    )
   (send-super :init)
   (setq _sentence (string __sentence))
   self)
  (:sentence
   (&optional __sentence)
   (if __sentence (setq _sentence __sentence)) _sentence)
  (:serialization-length
   ()
   (+
    ;; string _sentence
    4 (length _sentence)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _sentence
       (write-long (length _sentence) s) (princ _sentence s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _sentence
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _sentence (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass light_robot::count_wordsResponse
  :super ros::object
  :slots (_length ))

(defmethod light_robot::count_wordsResponse
  (:init
   (&key
    ((:length __length) 0)
    )
   (send-super :init)
   (setq _length (round __length))
   self)
  (:length
   (&optional __length)
   (if __length (setq _length __length)) _length)
  (:serialization-length
   ()
   (+
    ;; int64 _length
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _length
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _length (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _length) (= (length (_length . bv)) 2)) ;; bignum
              (write-long (ash (elt (_length . bv) 0) 0) s)
              (write-long (ash (elt (_length . bv) 1) -1) s))
             ((and (class _length) (= (length (_length . bv)) 1)) ;; big1
              (write-long (elt (_length . bv) 0) s)
              (write-long (if (>= _length 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _length s)(write-long (if (>= _length 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _length
#+(or :alpha :irix6 :x86_64)
      (setf _length (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _length (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass light_robot::count_words
  :super ros::object
  :slots ())

(setf (get light_robot::count_words :md5sum-) "a72516dd6f0c89c765a5e6ee697ada54")
(setf (get light_robot::count_words :datatype-) "light_robot/count_words")
(setf (get light_robot::count_words :request) light_robot::count_wordsRequest)
(setf (get light_robot::count_words :response) light_robot::count_wordsResponse)

(defmethod light_robot::count_wordsRequest
  (:response () (instance light_robot::count_wordsResponse :init)))

(setf (get light_robot::count_wordsRequest :md5sum-) "a72516dd6f0c89c765a5e6ee697ada54")
(setf (get light_robot::count_wordsRequest :datatype-) "light_robot/count_wordsRequest")
(setf (get light_robot::count_wordsRequest :definition-)
      "string sentence
---
int64 length

")

(setf (get light_robot::count_wordsResponse :md5sum-) "a72516dd6f0c89c765a5e6ee697ada54")
(setf (get light_robot::count_wordsResponse :datatype-) "light_robot/count_wordsResponse")
(setf (get light_robot::count_wordsResponse :definition-)
      "string sentence
---
int64 length

")



(provide :light_robot/count_words "a72516dd6f0c89c765a5e6ee697ada54")


