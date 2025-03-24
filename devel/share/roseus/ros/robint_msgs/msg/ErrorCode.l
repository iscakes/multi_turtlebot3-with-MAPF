;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::ErrorCode)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'ErrorCode (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::ERRORCODE")
  (make-package "ROBINT_MSGS::ERRORCODE"))

(in-package "ROS")
;;//! \htmlinclude ErrorCode.msg.html


(intern "*NONE*" (find-package "ROBINT_MSGS::ERRORCODE"))
(shadow '*NONE* (find-package "ROBINT_MSGS::ERRORCODE"))
(defconstant robint_msgs::ErrorCode::*NONE* 0)
(intern "*ANOTHER_TASK_IS_RUNNING*" (find-package "ROBINT_MSGS::ERRORCODE"))
(shadow '*ANOTHER_TASK_IS_RUNNING* (find-package "ROBINT_MSGS::ERRORCODE"))
(defconstant robint_msgs::ErrorCode::*ANOTHER_TASK_IS_RUNNING* 1)
(intern "*CURRENT_TASK_IS_RUNNING*" (find-package "ROBINT_MSGS::ERRORCODE"))
(shadow '*CURRENT_TASK_IS_RUNNING* (find-package "ROBINT_MSGS::ERRORCODE"))
(defconstant robint_msgs::ErrorCode::*CURRENT_TASK_IS_RUNNING* 2)
(intern "*NO_TASK_IS_RUNNING*" (find-package "ROBINT_MSGS::ERRORCODE"))
(shadow '*NO_TASK_IS_RUNNING* (find-package "ROBINT_MSGS::ERRORCODE"))
(defconstant robint_msgs::ErrorCode::*NO_TASK_IS_RUNNING* 3)
(intern "*GLOBAL_PLAN_FAILURE*" (find-package "ROBINT_MSGS::ERRORCODE"))
(shadow '*GLOBAL_PLAN_FAILURE* (find-package "ROBINT_MSGS::ERRORCODE"))
(defconstant robint_msgs::ErrorCode::*GLOBAL_PLAN_FAILURE* 11)
(intern "*SET_MAP_FAILURE*" (find-package "ROBINT_MSGS::ERRORCODE"))
(shadow '*SET_MAP_FAILURE* (find-package "ROBINT_MSGS::ERRORCODE"))
(defconstant robint_msgs::ErrorCode::*SET_MAP_FAILURE* 41)
(intern "*RESET_ODOM_FAILURE*" (find-package "ROBINT_MSGS::ERRORCODE"))
(shadow '*RESET_ODOM_FAILURE* (find-package "ROBINT_MSGS::ERRORCODE"))
(defconstant robint_msgs::ErrorCode::*RESET_ODOM_FAILURE* 42)
(intern "*RESET_IMU_FAILURE*" (find-package "ROBINT_MSGS::ERRORCODE"))
(shadow '*RESET_IMU_FAILURE* (find-package "ROBINT_MSGS::ERRORCODE"))
(defconstant robint_msgs::ErrorCode::*RESET_IMU_FAILURE* 43)
(intern "*RESET_EKF_FAILURE*" (find-package "ROBINT_MSGS::ERRORCODE"))
(shadow '*RESET_EKF_FAILURE* (find-package "ROBINT_MSGS::ERRORCODE"))
(defconstant robint_msgs::ErrorCode::*RESET_EKF_FAILURE* 44)
(intern "*LOCALIZATION_ERROR*" (find-package "ROBINT_MSGS::ERRORCODE"))
(shadow '*LOCALIZATION_ERROR* (find-package "ROBINT_MSGS::ERRORCODE"))
(defconstant robint_msgs::ErrorCode::*LOCALIZATION_ERROR* 50)
(intern "*LOCATION_UUID_NOT_CHARGE_BASE*" (find-package "ROBINT_MSGS::ERRORCODE"))
(shadow '*LOCATION_UUID_NOT_CHARGE_BASE* (find-package "ROBINT_MSGS::ERRORCODE"))
(defconstant robint_msgs::ErrorCode::*LOCATION_UUID_NOT_CHARGE_BASE* 61)
(intern "*CHARGE_BASE_EMPTY*" (find-package "ROBINT_MSGS::ERRORCODE"))
(shadow '*CHARGE_BASE_EMPTY* (find-package "ROBINT_MSGS::ERRORCODE"))
(defconstant robint_msgs::ErrorCode::*CHARGE_BASE_EMPTY* 62)
(intern "*DEFAULT_CHARGE_BASE_NOT_SET*" (find-package "ROBINT_MSGS::ERRORCODE"))
(shadow '*DEFAULT_CHARGE_BASE_NOT_SET* (find-package "ROBINT_MSGS::ERRORCODE"))
(defconstant robint_msgs::ErrorCode::*DEFAULT_CHARGE_BASE_NOT_SET* 63)
(intern "*CHARGE_DETECTION_FAILURE*" (find-package "ROBINT_MSGS::ERRORCODE"))
(shadow '*CHARGE_DETECTION_FAILURE* (find-package "ROBINT_MSGS::ERRORCODE"))
(defconstant robint_msgs::ErrorCode::*CHARGE_DETECTION_FAILURE* 70)
(intern "*MAP_IMAGE_FILE_NON_EXISTENT*" (find-package "ROBINT_MSGS::ERRORCODE"))
(shadow '*MAP_IMAGE_FILE_NON_EXISTENT* (find-package "ROBINT_MSGS::ERRORCODE"))
(defconstant robint_msgs::ErrorCode::*MAP_IMAGE_FILE_NON_EXISTENT* 100)
(intern "*MAP_UUID_NON_EXISTENT*" (find-package "ROBINT_MSGS::ERRORCODE"))
(shadow '*MAP_UUID_NON_EXISTENT* (find-package "ROBINT_MSGS::ERRORCODE"))
(defconstant robint_msgs::ErrorCode::*MAP_UUID_NON_EXISTENT* 101)
(intern "*MAP_UUID_NOT_CURRENT*" (find-package "ROBINT_MSGS::ERRORCODE"))
(shadow '*MAP_UUID_NOT_CURRENT* (find-package "ROBINT_MSGS::ERRORCODE"))
(defconstant robint_msgs::ErrorCode::*MAP_UUID_NOT_CURRENT* 102)
(intern "*GET_MAP_OCCUPANCY_GRID_FAILURE*" (find-package "ROBINT_MSGS::ERRORCODE"))
(shadow '*GET_MAP_OCCUPANCY_GRID_FAILURE* (find-package "ROBINT_MSGS::ERRORCODE"))
(defconstant robint_msgs::ErrorCode::*GET_MAP_OCCUPANCY_GRID_FAILURE* 103)
(intern "*LOAD_MAP_FAILURE*" (find-package "ROBINT_MSGS::ERRORCODE"))
(shadow '*LOAD_MAP_FAILURE* (find-package "ROBINT_MSGS::ERRORCODE"))
(defconstant robint_msgs::ErrorCode::*LOAD_MAP_FAILURE* 104)
(intern "*CURRENT_MAP_UUID_EMPTY*" (find-package "ROBINT_MSGS::ERRORCODE"))
(shadow '*CURRENT_MAP_UUID_EMPTY* (find-package "ROBINT_MSGS::ERRORCODE"))
(defconstant robint_msgs::ErrorCode::*CURRENT_MAP_UUID_EMPTY* 105)
(intern "*UUID_NON_EXISTENT*" (find-package "ROBINT_MSGS::ERRORCODE"))
(shadow '*UUID_NON_EXISTENT* (find-package "ROBINT_MSGS::ERRORCODE"))
(defconstant robint_msgs::ErrorCode::*UUID_NON_EXISTENT* 106)
(intern "*RECORDED_TRAJECTORY_CHECK_FAILURE*" (find-package "ROBINT_MSGS::ERRORCODE"))
(shadow '*RECORDED_TRAJECTORY_CHECK_FAILURE* (find-package "ROBINT_MSGS::ERRORCODE"))
(defconstant robint_msgs::ErrorCode::*RECORDED_TRAJECTORY_CHECK_FAILURE* 107)
(intern "*TRAJECTORY_TOO_SHORT*" (find-package "ROBINT_MSGS::ERRORCODE"))
(shadow '*TRAJECTORY_TOO_SHORT* (find-package "ROBINT_MSGS::ERRORCODE"))
(defconstant robint_msgs::ErrorCode::*TRAJECTORY_TOO_SHORT* 108)
(intern "*AREA_TOO_SMALL*" (find-package "ROBINT_MSGS::ERRORCODE"))
(shadow '*AREA_TOO_SMALL* (find-package "ROBINT_MSGS::ERRORCODE"))
(defconstant robint_msgs::ErrorCode::*AREA_TOO_SMALL* 109)
(intern "*POLYGON_NON_SIMPLE*" (find-package "ROBINT_MSGS::ERRORCODE"))
(shadow '*POLYGON_NON_SIMPLE* (find-package "ROBINT_MSGS::ERRORCODE"))
(defconstant robint_msgs::ErrorCode::*POLYGON_NON_SIMPLE* 110)
(intern "*POLYGON_NON_CLOSED*" (find-package "ROBINT_MSGS::ERRORCODE"))
(shadow '*POLYGON_NON_CLOSED* (find-package "ROBINT_MSGS::ERRORCODE"))
(defconstant robint_msgs::ErrorCode::*POLYGON_NON_CLOSED* 111)
(intern "*REQUESTED_INDEX_OUT_OF_RANGE*" (find-package "ROBINT_MSGS::ERRORCODE"))
(shadow '*REQUESTED_INDEX_OUT_OF_RANGE* (find-package "ROBINT_MSGS::ERRORCODE"))
(defconstant robint_msgs::ErrorCode::*REQUESTED_INDEX_OUT_OF_RANGE* 112)
(intern "*LOCATION_UUID_NON_EXISTENT*" (find-package "ROBINT_MSGS::ERRORCODE"))
(shadow '*LOCATION_UUID_NON_EXISTENT* (find-package "ROBINT_MSGS::ERRORCODE"))
(defconstant robint_msgs::ErrorCode::*LOCATION_UUID_NON_EXISTENT* 121)
(intern "*VIRTUALWALL_UUID_NON_EXISTENT*" (find-package "ROBINT_MSGS::ERRORCODE"))
(shadow '*VIRTUALWALL_UUID_NON_EXISTENT* (find-package "ROBINT_MSGS::ERRORCODE"))
(defconstant robint_msgs::ErrorCode::*VIRTUALWALL_UUID_NON_EXISTENT* 141)
(intern "*ZONE_UUID_NON_EXISTENT*" (find-package "ROBINT_MSGS::ERRORCODE"))
(shadow '*ZONE_UUID_NON_EXISTENT* (find-package "ROBINT_MSGS::ERRORCODE"))
(defconstant robint_msgs::ErrorCode::*ZONE_UUID_NON_EXISTENT* 151)
(intern "*CLEANING_PATH_NON_EXISTENT*" (find-package "ROBINT_MSGS::ERRORCODE"))
(shadow '*CLEANING_PATH_NON_EXISTENT* (find-package "ROBINT_MSGS::ERRORCODE"))
(defconstant robint_msgs::ErrorCode::*CLEANING_PATH_NON_EXISTENT* 152)
(intern "*ARGUMENT_ERROR*" (find-package "ROBINT_MSGS::ERRORCODE"))
(shadow '*ARGUMENT_ERROR* (find-package "ROBINT_MSGS::ERRORCODE"))
(defconstant robint_msgs::ErrorCode::*ARGUMENT_ERROR* 253)
(intern "*DATA_ERROR*" (find-package "ROBINT_MSGS::ERRORCODE"))
(shadow '*DATA_ERROR* (find-package "ROBINT_MSGS::ERRORCODE"))
(defconstant robint_msgs::ErrorCode::*DATA_ERROR* 254)
(intern "*ROS_ERROR*" (find-package "ROBINT_MSGS::ERRORCODE"))
(shadow '*ROS_ERROR* (find-package "ROBINT_MSGS::ERRORCODE"))
(defconstant robint_msgs::ErrorCode::*ROS_ERROR* 255)

(defun robint_msgs::ErrorCode-to-symbol (const)
  (cond
        ((= const 0) 'robint_msgs::ErrorCode::*NONE*)
        ((= const 1) 'robint_msgs::ErrorCode::*ANOTHER_TASK_IS_RUNNING*)
        ((= const 2) 'robint_msgs::ErrorCode::*CURRENT_TASK_IS_RUNNING*)
        ((= const 3) 'robint_msgs::ErrorCode::*NO_TASK_IS_RUNNING*)
        ((= const 11) 'robint_msgs::ErrorCode::*GLOBAL_PLAN_FAILURE*)
        ((= const 41) 'robint_msgs::ErrorCode::*SET_MAP_FAILURE*)
        ((= const 42) 'robint_msgs::ErrorCode::*RESET_ODOM_FAILURE*)
        ((= const 43) 'robint_msgs::ErrorCode::*RESET_IMU_FAILURE*)
        ((= const 44) 'robint_msgs::ErrorCode::*RESET_EKF_FAILURE*)
        ((= const 50) 'robint_msgs::ErrorCode::*LOCALIZATION_ERROR*)
        ((= const 61) 'robint_msgs::ErrorCode::*LOCATION_UUID_NOT_CHARGE_BASE*)
        ((= const 62) 'robint_msgs::ErrorCode::*CHARGE_BASE_EMPTY*)
        ((= const 63) 'robint_msgs::ErrorCode::*DEFAULT_CHARGE_BASE_NOT_SET*)
        ((= const 70) 'robint_msgs::ErrorCode::*CHARGE_DETECTION_FAILURE*)
        ((= const 100) 'robint_msgs::ErrorCode::*MAP_IMAGE_FILE_NON_EXISTENT*)
        ((= const 101) 'robint_msgs::ErrorCode::*MAP_UUID_NON_EXISTENT*)
        ((= const 102) 'robint_msgs::ErrorCode::*MAP_UUID_NOT_CURRENT*)
        ((= const 103) 'robint_msgs::ErrorCode::*GET_MAP_OCCUPANCY_GRID_FAILURE*)
        ((= const 104) 'robint_msgs::ErrorCode::*LOAD_MAP_FAILURE*)
        ((= const 105) 'robint_msgs::ErrorCode::*CURRENT_MAP_UUID_EMPTY*)
        ((= const 106) 'robint_msgs::ErrorCode::*UUID_NON_EXISTENT*)
        ((= const 107) 'robint_msgs::ErrorCode::*RECORDED_TRAJECTORY_CHECK_FAILURE*)
        ((= const 108) 'robint_msgs::ErrorCode::*TRAJECTORY_TOO_SHORT*)
        ((= const 109) 'robint_msgs::ErrorCode::*AREA_TOO_SMALL*)
        ((= const 110) 'robint_msgs::ErrorCode::*POLYGON_NON_SIMPLE*)
        ((= const 111) 'robint_msgs::ErrorCode::*POLYGON_NON_CLOSED*)
        ((= const 112) 'robint_msgs::ErrorCode::*REQUESTED_INDEX_OUT_OF_RANGE*)
        ((= const 121) 'robint_msgs::ErrorCode::*LOCATION_UUID_NON_EXISTENT*)
        ((= const 141) 'robint_msgs::ErrorCode::*VIRTUALWALL_UUID_NON_EXISTENT*)
        ((= const 151) 'robint_msgs::ErrorCode::*ZONE_UUID_NON_EXISTENT*)
        ((= const 152) 'robint_msgs::ErrorCode::*CLEANING_PATH_NON_EXISTENT*)
        ((= const 253) 'robint_msgs::ErrorCode::*ARGUMENT_ERROR*)
        ((= const 254) 'robint_msgs::ErrorCode::*DATA_ERROR*)
        ((= const 255) 'robint_msgs::ErrorCode::*ROS_ERROR*)
        (t nil)))

(defclass robint_msgs::ErrorCode
  :super ros::object
  :slots ())

(defmethod robint_msgs::ErrorCode
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(setf (get robint_msgs::ErrorCode :md5sum-) "45cd9bc105f86c67f47b4756c85f449a")
(setf (get robint_msgs::ErrorCode :datatype-) "robint_msgs/ErrorCode")
(setf (get robint_msgs::ErrorCode :definition-)
      "# Task Command Error Code
uint8 NONE = 0
uint8 ANOTHER_TASK_IS_RUNNING = 1
uint8 CURRENT_TASK_IS_RUNNING = 2
uint8 NO_TASK_IS_RUNNING = 3

uint8 GLOBAL_PLAN_FAILURE = 11

uint8 SET_MAP_FAILURE = 41
uint8 RESET_ODOM_FAILURE = 42
uint8 RESET_IMU_FAILURE = 43
uint8 RESET_EKF_FAILURE = 44

uint8 LOCALIZATION_ERROR = 50

# AutoCharge Error Code
uint8 LOCATION_UUID_NOT_CHARGE_BASE = 61
uint8 CHARGE_BASE_EMPTY = 62
uint8 DEFAULT_CHARGE_BASE_NOT_SET = 63

# AutoExplore Error Code
uint8 CHARGE_DETECTION_FAILURE = 70

# Map Widget Operation Error Code
uint8 MAP_IMAGE_FILE_NON_EXISTENT = 100
uint8 MAP_UUID_NON_EXISTENT = 101
uint8 MAP_UUID_NOT_CURRENT = 102
uint8 GET_MAP_OCCUPANCY_GRID_FAILURE = 103
uint8 LOAD_MAP_FAILURE = 104
uint8 CURRENT_MAP_UUID_EMPTY = 105
uint8 UUID_NON_EXISTENT = 106

uint8 RECORDED_TRAJECTORY_CHECK_FAILURE = 107
uint8 TRAJECTORY_TOO_SHORT = 108
uint8 AREA_TOO_SMALL = 109
uint8 POLYGON_NON_SIMPLE = 110
uint8 POLYGON_NON_CLOSED = 111
uint8 REQUESTED_INDEX_OUT_OF_RANGE = 112

uint8 LOCATION_UUID_NON_EXISTENT = 121

uint8 VIRTUALWALL_UUID_NON_EXISTENT = 141

uint8 ZONE_UUID_NON_EXISTENT = 151
uint8 CLEANING_PATH_NON_EXISTENT = 152


uint8 ARGUMENT_ERROR = 253
uint8 DATA_ERROR = 254
uint8 ROS_ERROR = 255






")



(provide :robint_msgs/ErrorCode "45cd9bc105f86c67f47b4756c85f449a")


