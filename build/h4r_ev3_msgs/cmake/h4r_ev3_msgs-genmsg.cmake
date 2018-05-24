# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "h4r_ev3_msgs: 1 messages, 0 services")

set(MSG_I_FLAGS "-Ih4r_ev3_msgs:/home/chirayu/catkin_ws/src/h4r_ev3_msgs/msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(h4r_ev3_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/chirayu/catkin_ws/src/h4r_ev3_msgs/msg/Seek.msg" NAME_WE)
add_custom_target(_h4r_ev3_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "h4r_ev3_msgs" "/home/chirayu/catkin_ws/src/h4r_ev3_msgs/msg/Seek.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(h4r_ev3_msgs
  "/home/chirayu/catkin_ws/src/h4r_ev3_msgs/msg/Seek.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/h4r_ev3_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(h4r_ev3_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/h4r_ev3_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(h4r_ev3_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(h4r_ev3_msgs_generate_messages h4r_ev3_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chirayu/catkin_ws/src/h4r_ev3_msgs/msg/Seek.msg" NAME_WE)
add_dependencies(h4r_ev3_msgs_generate_messages_cpp _h4r_ev3_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(h4r_ev3_msgs_gencpp)
add_dependencies(h4r_ev3_msgs_gencpp h4r_ev3_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS h4r_ev3_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(h4r_ev3_msgs
  "/home/chirayu/catkin_ws/src/h4r_ev3_msgs/msg/Seek.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/h4r_ev3_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(h4r_ev3_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/h4r_ev3_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(h4r_ev3_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(h4r_ev3_msgs_generate_messages h4r_ev3_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chirayu/catkin_ws/src/h4r_ev3_msgs/msg/Seek.msg" NAME_WE)
add_dependencies(h4r_ev3_msgs_generate_messages_eus _h4r_ev3_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(h4r_ev3_msgs_geneus)
add_dependencies(h4r_ev3_msgs_geneus h4r_ev3_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS h4r_ev3_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(h4r_ev3_msgs
  "/home/chirayu/catkin_ws/src/h4r_ev3_msgs/msg/Seek.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/h4r_ev3_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(h4r_ev3_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/h4r_ev3_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(h4r_ev3_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(h4r_ev3_msgs_generate_messages h4r_ev3_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chirayu/catkin_ws/src/h4r_ev3_msgs/msg/Seek.msg" NAME_WE)
add_dependencies(h4r_ev3_msgs_generate_messages_lisp _h4r_ev3_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(h4r_ev3_msgs_genlisp)
add_dependencies(h4r_ev3_msgs_genlisp h4r_ev3_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS h4r_ev3_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(h4r_ev3_msgs
  "/home/chirayu/catkin_ws/src/h4r_ev3_msgs/msg/Seek.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/h4r_ev3_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(h4r_ev3_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/h4r_ev3_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(h4r_ev3_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(h4r_ev3_msgs_generate_messages h4r_ev3_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chirayu/catkin_ws/src/h4r_ev3_msgs/msg/Seek.msg" NAME_WE)
add_dependencies(h4r_ev3_msgs_generate_messages_nodejs _h4r_ev3_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(h4r_ev3_msgs_gennodejs)
add_dependencies(h4r_ev3_msgs_gennodejs h4r_ev3_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS h4r_ev3_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(h4r_ev3_msgs
  "/home/chirayu/catkin_ws/src/h4r_ev3_msgs/msg/Seek.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/h4r_ev3_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(h4r_ev3_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/h4r_ev3_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(h4r_ev3_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(h4r_ev3_msgs_generate_messages h4r_ev3_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chirayu/catkin_ws/src/h4r_ev3_msgs/msg/Seek.msg" NAME_WE)
add_dependencies(h4r_ev3_msgs_generate_messages_py _h4r_ev3_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(h4r_ev3_msgs_genpy)
add_dependencies(h4r_ev3_msgs_genpy h4r_ev3_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS h4r_ev3_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/h4r_ev3_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/h4r_ev3_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/h4r_ev3_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/h4r_ev3_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/h4r_ev3_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/h4r_ev3_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/h4r_ev3_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/h4r_ev3_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/h4r_ev3_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/h4r_ev3_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/h4r_ev3_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
