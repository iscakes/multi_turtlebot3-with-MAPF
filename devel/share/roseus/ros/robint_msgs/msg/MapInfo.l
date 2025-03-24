;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::MapInfo)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'MapInfo (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::MAPINFO")
  (make-package "ROBINT_MSGS::MAPINFO"))

(in-package "ROS")
;;//! \htmlinclude MapInfo.msg.html


(defclass robint_msgs::MapInfo
  :super ros::object
  :slots (_uuid _name _floor_id _building_id _time _origin _width _height ))

(defmethod robint_msgs::MapInfo
  (:init
   (&key
    ((:uuid __uuid) "")
    ((:name __name) "")
    ((:floor_id __floor_id) "")
    ((:building_id __building_id) "")
    ((:time __time) "")
    ((:origin __origin) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:width __width) 0)
    ((:height __height) 0)
    )
   (send-super :init)
   (setq _uuid (string __uuid))
   (setq _name (string __name))
   (setq _floor_id (string __floor_id))
   (setq _building_id (string __building_id))
   (setq _time (string __time))
   (setq _origin __origin)
   (setq _width (round __width))
   (setq _height (round __height))
   self)
  (:uuid
   (&optional __uuid)
   (if __uuid (setq _uuid __uuid)) _uuid)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:floor_id
   (&optional __floor_id)
   (if __floor_id (setq _floor_id __floor_id)) _floor_id)
  (:building_id
   (&optional __building_id)
   (if __building_id (setq _building_id __building_id)) _building_id)
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:origin
   (&optional __origin)
   (if __origin (setq _origin __origin)) _origin)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:serialization-length
   ()
   (+
    ;; string _uuid
    4 (length _uuid)
    ;; string _name
    4 (length _name)
    ;; string _floor_id
    4 (length _floor_id)
    ;; string _building_id
    4 (length _building_id)
    ;; string _time
    4 (length _time)
    ;; float32[] _origin
    (* 4    (length _origin)) 4
    ;; uint32 _width
    4
    ;; uint32 _height
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _uuid
       (write-long (length _uuid) s) (princ _uuid s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _floor_id
       (write-long (length _floor_id) s) (princ _floor_id s)
     ;; string _building_id
       (write-long (length _building_id) s) (princ _building_id s)
     ;; string _time
       (write-long (length _time) s) (princ _time s)
     ;; float32[] _origin
     (write-long (length _origin) s)
     (dotimes (i (length _origin))
       (sys::poke (elt _origin i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; uint32 _width
       (write-long _width s)
     ;; uint32 _height
       (write-long _height s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _uuid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _uuid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _floor_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _floor_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _building_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _building_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _time
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _time (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32[] _origin
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _origin (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _origin i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; uint32 _width
     (setq _width (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _height
     (setq _height (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get robint_msgs::MapInfo :md5sum-) "25eff9fc3c56759ad869d6ff263f07dc")
(setf (get robint_msgs::MapInfo :datatype-) "robint_msgs/MapInfo")
(setf (get robint_msgs::MapInfo :definition-)
      "string uuid
string name
string floor_id
string building_id
string time
float32[] origin
uint32 width
uint32 height
")



(provide :robint_msgs/MapInfo "25eff9fc3c56759ad869d6ff263f07dc")


