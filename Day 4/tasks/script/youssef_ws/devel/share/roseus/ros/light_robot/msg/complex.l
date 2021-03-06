;; Auto-generated. Do not edit!


(when (boundp 'light_robot::complex)
  (if (not (find-package "LIGHT_ROBOT"))
    (make-package "LIGHT_ROBOT"))
  (shadow 'complex (find-package "LIGHT_ROBOT")))
(unless (find-package "LIGHT_ROBOT::COMPLEX")
  (make-package "LIGHT_ROBOT::COMPLEX"))

(in-package "ROS")
;;//! \htmlinclude complex.msg.html


(defclass light_robot::complex
  :super ros::object
  :slots (_real _imaginary ))

(defmethod light_robot::complex
  (:init
   (&key
    ((:real __real) 0.0)
    ((:imaginary __imaginary) 0.0)
    )
   (send-super :init)
   (setq _real (float __real))
   (setq _imaginary (float __imaginary))
   self)
  (:real
   (&optional __real)
   (if __real (setq _real __real)) _real)
  (:imaginary
   (&optional __imaginary)
   (if __imaginary (setq _imaginary __imaginary)) _imaginary)
  (:serialization-length
   ()
   (+
    ;; float64 _real
    8
    ;; float64 _imaginary
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _real
       (sys::poke _real (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _imaginary
       (sys::poke _imaginary (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _real
     (setq _real (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _imaginary
     (setq _imaginary (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get light_robot::complex :md5sum-) "f79948d85872c3174fd7b3b73c94ede5")
(setf (get light_robot::complex :datatype-) "light_robot/complex")
(setf (get light_robot::complex :definition-)
      "float64 real
float64 imaginary

")



(provide :light_robot/complex "f79948d85872c3174fd7b3b73c94ede5")


