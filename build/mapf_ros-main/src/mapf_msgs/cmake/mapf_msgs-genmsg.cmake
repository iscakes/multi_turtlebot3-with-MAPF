# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "mapf_msgs: 3 messages, 0 services")

set(MSG_I_FLAGS "-Imapf_msgs:/home/wlm/cbs-new/src/mapf_ros-main/src/mapf_msgs/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Inav_msgs:/opt/ros/noetic/share/nav_msgs/cmake/../msg;-Imapf_msgs:/home/wlm/cbs-new/src/mapf_ros-main/src/mapf_msgs/msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(mapf_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/wlm/cbs-new/src/mapf_ros-main/src/mapf_msgs/msg/Goal.msg" NAME_WE)
add_custom_target(_mapf_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mapf_msgs" "/home/wlm/cbs-new/src/mapf_ros-main/src/mapf_msgs/msg/Goal.msg" "geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/PoseStamped:nav_msgs/Path:geometry_msgs/Point"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/mapf_ros-main/src/mapf_msgs/msg/SinglePlan.msg" NAME_WE)
add_custom_target(_mapf_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mapf_msgs" "/home/wlm/cbs-new/src/mapf_ros-main/src/mapf_msgs/msg/SinglePlan.msg" "geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/PoseStamped:nav_msgs/Path:geometry_msgs/Point"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/mapf_ros-main/src/mapf_msgs/msg/GlobalPlan.msg" NAME_WE)
add_custom_target(_mapf_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mapf_msgs" "/home/wlm/cbs-new/src/mapf_ros-main/src/mapf_msgs/msg/GlobalPlan.msg" "geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/PoseStamped:mapf_msgs/SinglePlan:nav_msgs/Path:geometry_msgs/Point"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(mapf_msgs
  "/home/wlm/cbs-new/src/mapf_ros-main/src/mapf_msgs/msg/Goal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mapf_msgs
)
_generate_msg_cpp(mapf_msgs
  "/home/wlm/cbs-new/src/mapf_ros-main/src/mapf_msgs/msg/SinglePlan.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mapf_msgs
)
_generate_msg_cpp(mapf_msgs
  "/home/wlm/cbs-new/src/mapf_ros-main/src/mapf_msgs/msg/GlobalPlan.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/wlm/cbs-new/src/mapf_ros-main/src/mapf_msgs/msg/SinglePlan.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mapf_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(mapf_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mapf_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(mapf_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(mapf_msgs_generate_messages mapf_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wlm/cbs-new/src/mapf_ros-main/src/mapf_msgs/msg/Goal.msg" NAME_WE)
add_dependencies(mapf_msgs_generate_messages_cpp _mapf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/mapf_ros-main/src/mapf_msgs/msg/SinglePlan.msg" NAME_WE)
add_dependencies(mapf_msgs_generate_messages_cpp _mapf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/mapf_ros-main/src/mapf_msgs/msg/GlobalPlan.msg" NAME_WE)
add_dependencies(mapf_msgs_generate_messages_cpp _mapf_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mapf_msgs_gencpp)
add_dependencies(mapf_msgs_gencpp mapf_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mapf_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(mapf_msgs
  "/home/wlm/cbs-new/src/mapf_ros-main/src/mapf_msgs/msg/Goal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mapf_msgs
)
_generate_msg_eus(mapf_msgs
  "/home/wlm/cbs-new/src/mapf_ros-main/src/mapf_msgs/msg/SinglePlan.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mapf_msgs
)
_generate_msg_eus(mapf_msgs
  "/home/wlm/cbs-new/src/mapf_ros-main/src/mapf_msgs/msg/GlobalPlan.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/wlm/cbs-new/src/mapf_ros-main/src/mapf_msgs/msg/SinglePlan.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mapf_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(mapf_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mapf_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(mapf_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(mapf_msgs_generate_messages mapf_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wlm/cbs-new/src/mapf_ros-main/src/mapf_msgs/msg/Goal.msg" NAME_WE)
add_dependencies(mapf_msgs_generate_messages_eus _mapf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/mapf_ros-main/src/mapf_msgs/msg/SinglePlan.msg" NAME_WE)
add_dependencies(mapf_msgs_generate_messages_eus _mapf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/mapf_ros-main/src/mapf_msgs/msg/GlobalPlan.msg" NAME_WE)
add_dependencies(mapf_msgs_generate_messages_eus _mapf_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mapf_msgs_geneus)
add_dependencies(mapf_msgs_geneus mapf_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mapf_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(mapf_msgs
  "/home/wlm/cbs-new/src/mapf_ros-main/src/mapf_msgs/msg/Goal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mapf_msgs
)
_generate_msg_lisp(mapf_msgs
  "/home/wlm/cbs-new/src/mapf_ros-main/src/mapf_msgs/msg/SinglePlan.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mapf_msgs
)
_generate_msg_lisp(mapf_msgs
  "/home/wlm/cbs-new/src/mapf_ros-main/src/mapf_msgs/msg/GlobalPlan.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/wlm/cbs-new/src/mapf_ros-main/src/mapf_msgs/msg/SinglePlan.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mapf_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(mapf_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mapf_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(mapf_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(mapf_msgs_generate_messages mapf_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wlm/cbs-new/src/mapf_ros-main/src/mapf_msgs/msg/Goal.msg" NAME_WE)
add_dependencies(mapf_msgs_generate_messages_lisp _mapf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/mapf_ros-main/src/mapf_msgs/msg/SinglePlan.msg" NAME_WE)
add_dependencies(mapf_msgs_generate_messages_lisp _mapf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/mapf_ros-main/src/mapf_msgs/msg/GlobalPlan.msg" NAME_WE)
add_dependencies(mapf_msgs_generate_messages_lisp _mapf_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mapf_msgs_genlisp)
add_dependencies(mapf_msgs_genlisp mapf_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mapf_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(mapf_msgs
  "/home/wlm/cbs-new/src/mapf_ros-main/src/mapf_msgs/msg/Goal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mapf_msgs
)
_generate_msg_nodejs(mapf_msgs
  "/home/wlm/cbs-new/src/mapf_ros-main/src/mapf_msgs/msg/SinglePlan.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mapf_msgs
)
_generate_msg_nodejs(mapf_msgs
  "/home/wlm/cbs-new/src/mapf_ros-main/src/mapf_msgs/msg/GlobalPlan.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/wlm/cbs-new/src/mapf_ros-main/src/mapf_msgs/msg/SinglePlan.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mapf_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(mapf_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mapf_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(mapf_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(mapf_msgs_generate_messages mapf_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wlm/cbs-new/src/mapf_ros-main/src/mapf_msgs/msg/Goal.msg" NAME_WE)
add_dependencies(mapf_msgs_generate_messages_nodejs _mapf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/mapf_ros-main/src/mapf_msgs/msg/SinglePlan.msg" NAME_WE)
add_dependencies(mapf_msgs_generate_messages_nodejs _mapf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/mapf_ros-main/src/mapf_msgs/msg/GlobalPlan.msg" NAME_WE)
add_dependencies(mapf_msgs_generate_messages_nodejs _mapf_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mapf_msgs_gennodejs)
add_dependencies(mapf_msgs_gennodejs mapf_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mapf_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(mapf_msgs
  "/home/wlm/cbs-new/src/mapf_ros-main/src/mapf_msgs/msg/Goal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mapf_msgs
)
_generate_msg_py(mapf_msgs
  "/home/wlm/cbs-new/src/mapf_ros-main/src/mapf_msgs/msg/SinglePlan.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mapf_msgs
)
_generate_msg_py(mapf_msgs
  "/home/wlm/cbs-new/src/mapf_ros-main/src/mapf_msgs/msg/GlobalPlan.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/wlm/cbs-new/src/mapf_ros-main/src/mapf_msgs/msg/SinglePlan.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mapf_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(mapf_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mapf_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(mapf_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(mapf_msgs_generate_messages mapf_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wlm/cbs-new/src/mapf_ros-main/src/mapf_msgs/msg/Goal.msg" NAME_WE)
add_dependencies(mapf_msgs_generate_messages_py _mapf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/mapf_ros-main/src/mapf_msgs/msg/SinglePlan.msg" NAME_WE)
add_dependencies(mapf_msgs_generate_messages_py _mapf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/mapf_ros-main/src/mapf_msgs/msg/GlobalPlan.msg" NAME_WE)
add_dependencies(mapf_msgs_generate_messages_py _mapf_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mapf_msgs_genpy)
add_dependencies(mapf_msgs_genpy mapf_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mapf_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mapf_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mapf_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(mapf_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET nav_msgs_generate_messages_cpp)
  add_dependencies(mapf_msgs_generate_messages_cpp nav_msgs_generate_messages_cpp)
endif()
if(TARGET mapf_msgs_generate_messages_cpp)
  add_dependencies(mapf_msgs_generate_messages_cpp mapf_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mapf_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mapf_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(mapf_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET nav_msgs_generate_messages_eus)
  add_dependencies(mapf_msgs_generate_messages_eus nav_msgs_generate_messages_eus)
endif()
if(TARGET mapf_msgs_generate_messages_eus)
  add_dependencies(mapf_msgs_generate_messages_eus mapf_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mapf_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mapf_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(mapf_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET nav_msgs_generate_messages_lisp)
  add_dependencies(mapf_msgs_generate_messages_lisp nav_msgs_generate_messages_lisp)
endif()
if(TARGET mapf_msgs_generate_messages_lisp)
  add_dependencies(mapf_msgs_generate_messages_lisp mapf_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mapf_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mapf_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(mapf_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET nav_msgs_generate_messages_nodejs)
  add_dependencies(mapf_msgs_generate_messages_nodejs nav_msgs_generate_messages_nodejs)
endif()
if(TARGET mapf_msgs_generate_messages_nodejs)
  add_dependencies(mapf_msgs_generate_messages_nodejs mapf_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mapf_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mapf_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mapf_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(mapf_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET nav_msgs_generate_messages_py)
  add_dependencies(mapf_msgs_generate_messages_py nav_msgs_generate_messages_py)
endif()
if(TARGET mapf_msgs_generate_messages_py)
  add_dependencies(mapf_msgs_generate_messages_py mapf_msgs_generate_messages_py)
endif()
