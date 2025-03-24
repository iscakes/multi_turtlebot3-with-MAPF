; Auto-generated. Do not edit!


(cl:in-package robint_msgs-msg)


;//! \htmlinclude NavigationTaskInfo.msg.html

(cl:defclass <NavigationTaskInfo> (roslisp-msg-protocol:ros-message)
  ((current_map_uuid
    :reader current_map_uuid
    :initarg :current_map_uuid
    :type cl:string
    :initform "")
   (elevator_building_uuid
    :reader elevator_building_uuid
    :initarg :elevator_building_uuid
    :type cl:string
    :initform "")
   (current_floor_id
    :reader current_floor_id
    :initarg :current_floor_id
    :type cl:string
    :initform "")
   (target_map_uuid
    :reader target_map_uuid
    :initarg :target_map_uuid
    :type cl:string
    :initform "")
   (target_floor_id
    :reader target_floor_id
    :initarg :target_floor_id
    :type cl:string
    :initform "")
   (target_loc_uuid
    :reader target_loc_uuid
    :initarg :target_loc_uuid
    :type cl:string
    :initform "")
   (target_loc_group_uuid
    :reader target_loc_group_uuid
    :initarg :target_loc_group_uuid
    :type cl:string
    :initform "")
   (enter_elevator_loc_uuid
    :reader enter_elevator_loc_uuid
    :initarg :enter_elevator_loc_uuid
    :type cl:string
    :initform "")
   (current_elevator_interior_loc_uuid
    :reader current_elevator_interior_loc_uuid
    :initarg :current_elevator_interior_loc_uuid
    :type cl:string
    :initform "")
   (target_elevator_interior_loc_uuid
    :reader target_elevator_interior_loc_uuid
    :initarg :target_elevator_interior_loc_uuid
    :type cl:string
    :initform "")
   (elevator_wait_loc_uuid
    :reader elevator_wait_loc_uuid
    :initarg :elevator_wait_loc_uuid
    :type cl:string
    :initform "")
   (current_exit_elevator_loc_uuid
    :reader current_exit_elevator_loc_uuid
    :initarg :current_exit_elevator_loc_uuid
    :type cl:string
    :initform "")
   (target_exit_elevator_loc_uuid
    :reader target_exit_elevator_loc_uuid
    :initarg :target_exit_elevator_loc_uuid
    :type cl:string
    :initform "")
   (dock_anchor_pose
    :reader dock_anchor_pose
    :initarg :dock_anchor_pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (current_floor_gates
    :reader current_floor_gates
    :initarg :current_floor_gates
    :type (cl:vector robint_msgs-msg:GateInfo)
   :initform (cl:make-array 0 :element-type 'robint_msgs-msg:GateInfo :initial-element (cl:make-instance 'robint_msgs-msg:GateInfo)))
   (target_floor_gates
    :reader target_floor_gates
    :initarg :target_floor_gates
    :type (cl:vector robint_msgs-msg:GateInfo)
   :initform (cl:make-array 0 :element-type 'robint_msgs-msg:GateInfo :initial-element (cl:make-instance 'robint_msgs-msg:GateInfo)))
   (current_floor_isolated_zones
    :reader current_floor_isolated_zones
    :initarg :current_floor_isolated_zones
    :type (cl:vector robint_msgs-msg:IsolatedZone)
   :initform (cl:make-array 0 :element-type 'robint_msgs-msg:IsolatedZone :initial-element (cl:make-instance 'robint_msgs-msg:IsolatedZone)))
   (target_floor_isolated_zones
    :reader target_floor_isolated_zones
    :initarg :target_floor_isolated_zones
    :type (cl:vector robint_msgs-msg:IsolatedZone)
   :initform (cl:make-array 0 :element-type 'robint_msgs-msg:IsolatedZone :initial-element (cl:make-instance 'robint_msgs-msg:IsolatedZone))))
)

(cl:defclass NavigationTaskInfo (<NavigationTaskInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NavigationTaskInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NavigationTaskInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-msg:<NavigationTaskInfo> is deprecated: use robint_msgs-msg:NavigationTaskInfo instead.")))

(cl:ensure-generic-function 'current_map_uuid-val :lambda-list '(m))
(cl:defmethod current_map_uuid-val ((m <NavigationTaskInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:current_map_uuid-val is deprecated.  Use robint_msgs-msg:current_map_uuid instead.")
  (current_map_uuid m))

(cl:ensure-generic-function 'elevator_building_uuid-val :lambda-list '(m))
(cl:defmethod elevator_building_uuid-val ((m <NavigationTaskInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:elevator_building_uuid-val is deprecated.  Use robint_msgs-msg:elevator_building_uuid instead.")
  (elevator_building_uuid m))

(cl:ensure-generic-function 'current_floor_id-val :lambda-list '(m))
(cl:defmethod current_floor_id-val ((m <NavigationTaskInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:current_floor_id-val is deprecated.  Use robint_msgs-msg:current_floor_id instead.")
  (current_floor_id m))

(cl:ensure-generic-function 'target_map_uuid-val :lambda-list '(m))
(cl:defmethod target_map_uuid-val ((m <NavigationTaskInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:target_map_uuid-val is deprecated.  Use robint_msgs-msg:target_map_uuid instead.")
  (target_map_uuid m))

(cl:ensure-generic-function 'target_floor_id-val :lambda-list '(m))
(cl:defmethod target_floor_id-val ((m <NavigationTaskInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:target_floor_id-val is deprecated.  Use robint_msgs-msg:target_floor_id instead.")
  (target_floor_id m))

(cl:ensure-generic-function 'target_loc_uuid-val :lambda-list '(m))
(cl:defmethod target_loc_uuid-val ((m <NavigationTaskInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:target_loc_uuid-val is deprecated.  Use robint_msgs-msg:target_loc_uuid instead.")
  (target_loc_uuid m))

(cl:ensure-generic-function 'target_loc_group_uuid-val :lambda-list '(m))
(cl:defmethod target_loc_group_uuid-val ((m <NavigationTaskInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:target_loc_group_uuid-val is deprecated.  Use robint_msgs-msg:target_loc_group_uuid instead.")
  (target_loc_group_uuid m))

(cl:ensure-generic-function 'enter_elevator_loc_uuid-val :lambda-list '(m))
(cl:defmethod enter_elevator_loc_uuid-val ((m <NavigationTaskInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:enter_elevator_loc_uuid-val is deprecated.  Use robint_msgs-msg:enter_elevator_loc_uuid instead.")
  (enter_elevator_loc_uuid m))

(cl:ensure-generic-function 'current_elevator_interior_loc_uuid-val :lambda-list '(m))
(cl:defmethod current_elevator_interior_loc_uuid-val ((m <NavigationTaskInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:current_elevator_interior_loc_uuid-val is deprecated.  Use robint_msgs-msg:current_elevator_interior_loc_uuid instead.")
  (current_elevator_interior_loc_uuid m))

(cl:ensure-generic-function 'target_elevator_interior_loc_uuid-val :lambda-list '(m))
(cl:defmethod target_elevator_interior_loc_uuid-val ((m <NavigationTaskInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:target_elevator_interior_loc_uuid-val is deprecated.  Use robint_msgs-msg:target_elevator_interior_loc_uuid instead.")
  (target_elevator_interior_loc_uuid m))

(cl:ensure-generic-function 'elevator_wait_loc_uuid-val :lambda-list '(m))
(cl:defmethod elevator_wait_loc_uuid-val ((m <NavigationTaskInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:elevator_wait_loc_uuid-val is deprecated.  Use robint_msgs-msg:elevator_wait_loc_uuid instead.")
  (elevator_wait_loc_uuid m))

(cl:ensure-generic-function 'current_exit_elevator_loc_uuid-val :lambda-list '(m))
(cl:defmethod current_exit_elevator_loc_uuid-val ((m <NavigationTaskInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:current_exit_elevator_loc_uuid-val is deprecated.  Use robint_msgs-msg:current_exit_elevator_loc_uuid instead.")
  (current_exit_elevator_loc_uuid m))

(cl:ensure-generic-function 'target_exit_elevator_loc_uuid-val :lambda-list '(m))
(cl:defmethod target_exit_elevator_loc_uuid-val ((m <NavigationTaskInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:target_exit_elevator_loc_uuid-val is deprecated.  Use robint_msgs-msg:target_exit_elevator_loc_uuid instead.")
  (target_exit_elevator_loc_uuid m))

(cl:ensure-generic-function 'dock_anchor_pose-val :lambda-list '(m))
(cl:defmethod dock_anchor_pose-val ((m <NavigationTaskInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:dock_anchor_pose-val is deprecated.  Use robint_msgs-msg:dock_anchor_pose instead.")
  (dock_anchor_pose m))

(cl:ensure-generic-function 'current_floor_gates-val :lambda-list '(m))
(cl:defmethod current_floor_gates-val ((m <NavigationTaskInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:current_floor_gates-val is deprecated.  Use robint_msgs-msg:current_floor_gates instead.")
  (current_floor_gates m))

(cl:ensure-generic-function 'target_floor_gates-val :lambda-list '(m))
(cl:defmethod target_floor_gates-val ((m <NavigationTaskInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:target_floor_gates-val is deprecated.  Use robint_msgs-msg:target_floor_gates instead.")
  (target_floor_gates m))

(cl:ensure-generic-function 'current_floor_isolated_zones-val :lambda-list '(m))
(cl:defmethod current_floor_isolated_zones-val ((m <NavigationTaskInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:current_floor_isolated_zones-val is deprecated.  Use robint_msgs-msg:current_floor_isolated_zones instead.")
  (current_floor_isolated_zones m))

(cl:ensure-generic-function 'target_floor_isolated_zones-val :lambda-list '(m))
(cl:defmethod target_floor_isolated_zones-val ((m <NavigationTaskInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:target_floor_isolated_zones-val is deprecated.  Use robint_msgs-msg:target_floor_isolated_zones instead.")
  (target_floor_isolated_zones m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NavigationTaskInfo>) ostream)
  "Serializes a message object of type '<NavigationTaskInfo>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'current_map_uuid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'current_map_uuid))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'elevator_building_uuid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'elevator_building_uuid))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'current_floor_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'current_floor_id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'target_map_uuid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'target_map_uuid))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'target_floor_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'target_floor_id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'target_loc_uuid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'target_loc_uuid))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'target_loc_group_uuid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'target_loc_group_uuid))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'enter_elevator_loc_uuid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'enter_elevator_loc_uuid))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'current_elevator_interior_loc_uuid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'current_elevator_interior_loc_uuid))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'target_elevator_interior_loc_uuid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'target_elevator_interior_loc_uuid))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'elevator_wait_loc_uuid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'elevator_wait_loc_uuid))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'current_exit_elevator_loc_uuid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'current_exit_elevator_loc_uuid))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'target_exit_elevator_loc_uuid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'target_exit_elevator_loc_uuid))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'dock_anchor_pose) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'current_floor_gates))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'current_floor_gates))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'target_floor_gates))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'target_floor_gates))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'current_floor_isolated_zones))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'current_floor_isolated_zones))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'target_floor_isolated_zones))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'target_floor_isolated_zones))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NavigationTaskInfo>) istream)
  "Deserializes a message object of type '<NavigationTaskInfo>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'current_map_uuid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'current_map_uuid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'elevator_building_uuid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'elevator_building_uuid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'current_floor_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'current_floor_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'target_map_uuid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'target_map_uuid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'target_floor_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'target_floor_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'target_loc_uuid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'target_loc_uuid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'target_loc_group_uuid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'target_loc_group_uuid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'enter_elevator_loc_uuid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'enter_elevator_loc_uuid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'current_elevator_interior_loc_uuid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'current_elevator_interior_loc_uuid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'target_elevator_interior_loc_uuid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'target_elevator_interior_loc_uuid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'elevator_wait_loc_uuid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'elevator_wait_loc_uuid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'current_exit_elevator_loc_uuid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'current_exit_elevator_loc_uuid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'target_exit_elevator_loc_uuid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'target_exit_elevator_loc_uuid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'dock_anchor_pose) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'current_floor_gates) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'current_floor_gates)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'robint_msgs-msg:GateInfo))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'target_floor_gates) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'target_floor_gates)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'robint_msgs-msg:GateInfo))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'current_floor_isolated_zones) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'current_floor_isolated_zones)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'robint_msgs-msg:IsolatedZone))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'target_floor_isolated_zones) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'target_floor_isolated_zones)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'robint_msgs-msg:IsolatedZone))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NavigationTaskInfo>)))
  "Returns string type for a message object of type '<NavigationTaskInfo>"
  "robint_msgs/NavigationTaskInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NavigationTaskInfo)))
  "Returns string type for a message object of type 'NavigationTaskInfo"
  "robint_msgs/NavigationTaskInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NavigationTaskInfo>)))
  "Returns md5sum for a message object of type '<NavigationTaskInfo>"
  "f44628125c7d26f45ef57fabf8e88cc4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NavigationTaskInfo)))
  "Returns md5sum for a message object of type 'NavigationTaskInfo"
  "f44628125c7d26f45ef57fabf8e88cc4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NavigationTaskInfo>)))
  "Returns full string definition for message of type '<NavigationTaskInfo>"
  (cl:format cl:nil "string current_map_uuid~%string elevator_building_uuid~%string current_floor_id~%string target_map_uuid~%string target_floor_id~%string target_loc_uuid~%string target_loc_group_uuid~%string enter_elevator_loc_uuid~%string current_elevator_interior_loc_uuid~%string target_elevator_interior_loc_uuid~%string elevator_wait_loc_uuid~%string current_exit_elevator_loc_uuid~%string target_exit_elevator_loc_uuid~%geometry_msgs/PoseStamped dock_anchor_pose~%GateInfo[] current_floor_gates~%GateInfo[] target_floor_gates~%IsolatedZone[] current_floor_isolated_zones~%IsolatedZone[] target_floor_isolated_zones~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: robint_msgs/GateInfo~%string gate_uuid~%string gate_name~%Location enter_loc~%Location exit_loc~%================================================================================~%MSG: robint_msgs/Location~%time timestamp~%string map_name~%string map_uuid~%string location_uuid~%string type_name~%string group_uuid~%string location_name~%geometry_msgs/Pose2D image_pose~%geometry_msgs/PoseStamped pose~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: robint_msgs/IsolatedZone~%Zone zone~%IsolatedWait[] wait_points~%string next_task~%================================================================================~%MSG: robint_msgs/Zone~%string uuid~%string name~%string map_uuid~%string group_uuid~%string type~%geometry_msgs/Point[] points~%================================================================================~%MSG: robint_msgs/IsolatedWait~%geometry_msgs/Pose pose~%string uuid~%bool direct~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NavigationTaskInfo)))
  "Returns full string definition for message of type 'NavigationTaskInfo"
  (cl:format cl:nil "string current_map_uuid~%string elevator_building_uuid~%string current_floor_id~%string target_map_uuid~%string target_floor_id~%string target_loc_uuid~%string target_loc_group_uuid~%string enter_elevator_loc_uuid~%string current_elevator_interior_loc_uuid~%string target_elevator_interior_loc_uuid~%string elevator_wait_loc_uuid~%string current_exit_elevator_loc_uuid~%string target_exit_elevator_loc_uuid~%geometry_msgs/PoseStamped dock_anchor_pose~%GateInfo[] current_floor_gates~%GateInfo[] target_floor_gates~%IsolatedZone[] current_floor_isolated_zones~%IsolatedZone[] target_floor_isolated_zones~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: robint_msgs/GateInfo~%string gate_uuid~%string gate_name~%Location enter_loc~%Location exit_loc~%================================================================================~%MSG: robint_msgs/Location~%time timestamp~%string map_name~%string map_uuid~%string location_uuid~%string type_name~%string group_uuid~%string location_name~%geometry_msgs/Pose2D image_pose~%geometry_msgs/PoseStamped pose~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: robint_msgs/IsolatedZone~%Zone zone~%IsolatedWait[] wait_points~%string next_task~%================================================================================~%MSG: robint_msgs/Zone~%string uuid~%string name~%string map_uuid~%string group_uuid~%string type~%geometry_msgs/Point[] points~%================================================================================~%MSG: robint_msgs/IsolatedWait~%geometry_msgs/Pose pose~%string uuid~%bool direct~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NavigationTaskInfo>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'current_map_uuid))
     4 (cl:length (cl:slot-value msg 'elevator_building_uuid))
     4 (cl:length (cl:slot-value msg 'current_floor_id))
     4 (cl:length (cl:slot-value msg 'target_map_uuid))
     4 (cl:length (cl:slot-value msg 'target_floor_id))
     4 (cl:length (cl:slot-value msg 'target_loc_uuid))
     4 (cl:length (cl:slot-value msg 'target_loc_group_uuid))
     4 (cl:length (cl:slot-value msg 'enter_elevator_loc_uuid))
     4 (cl:length (cl:slot-value msg 'current_elevator_interior_loc_uuid))
     4 (cl:length (cl:slot-value msg 'target_elevator_interior_loc_uuid))
     4 (cl:length (cl:slot-value msg 'elevator_wait_loc_uuid))
     4 (cl:length (cl:slot-value msg 'current_exit_elevator_loc_uuid))
     4 (cl:length (cl:slot-value msg 'target_exit_elevator_loc_uuid))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'dock_anchor_pose))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'current_floor_gates) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'target_floor_gates) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'current_floor_isolated_zones) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'target_floor_isolated_zones) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NavigationTaskInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'NavigationTaskInfo
    (cl:cons ':current_map_uuid (current_map_uuid msg))
    (cl:cons ':elevator_building_uuid (elevator_building_uuid msg))
    (cl:cons ':current_floor_id (current_floor_id msg))
    (cl:cons ':target_map_uuid (target_map_uuid msg))
    (cl:cons ':target_floor_id (target_floor_id msg))
    (cl:cons ':target_loc_uuid (target_loc_uuid msg))
    (cl:cons ':target_loc_group_uuid (target_loc_group_uuid msg))
    (cl:cons ':enter_elevator_loc_uuid (enter_elevator_loc_uuid msg))
    (cl:cons ':current_elevator_interior_loc_uuid (current_elevator_interior_loc_uuid msg))
    (cl:cons ':target_elevator_interior_loc_uuid (target_elevator_interior_loc_uuid msg))
    (cl:cons ':elevator_wait_loc_uuid (elevator_wait_loc_uuid msg))
    (cl:cons ':current_exit_elevator_loc_uuid (current_exit_elevator_loc_uuid msg))
    (cl:cons ':target_exit_elevator_loc_uuid (target_exit_elevator_loc_uuid msg))
    (cl:cons ':dock_anchor_pose (dock_anchor_pose msg))
    (cl:cons ':current_floor_gates (current_floor_gates msg))
    (cl:cons ':target_floor_gates (target_floor_gates msg))
    (cl:cons ':current_floor_isolated_zones (current_floor_isolated_zones msg))
    (cl:cons ':target_floor_isolated_zones (target_floor_isolated_zones msg))
))
