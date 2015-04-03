# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "move_gripper: 0 messages, 1 services")

set(MSG_I_FLAGS "")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(move_gripper_generate_messages ALL)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(move_gripper
  "/home/svr2112/challenge_problem_1/src/move_gripper/srv/CloseGripper.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/move_gripper
)

### Generating Module File
_generate_module_cpp(move_gripper
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/move_gripper
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(move_gripper_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(move_gripper_generate_messages move_gripper_generate_messages_cpp)

# target for backward compatibility
add_custom_target(move_gripper_gencpp)
add_dependencies(move_gripper_gencpp move_gripper_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS move_gripper_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(move_gripper
  "/home/svr2112/challenge_problem_1/src/move_gripper/srv/CloseGripper.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/move_gripper
)

### Generating Module File
_generate_module_lisp(move_gripper
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/move_gripper
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(move_gripper_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(move_gripper_generate_messages move_gripper_generate_messages_lisp)

# target for backward compatibility
add_custom_target(move_gripper_genlisp)
add_dependencies(move_gripper_genlisp move_gripper_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS move_gripper_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(move_gripper
  "/home/svr2112/challenge_problem_1/src/move_gripper/srv/CloseGripper.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/move_gripper
)

### Generating Module File
_generate_module_py(move_gripper
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/move_gripper
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(move_gripper_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(move_gripper_generate_messages move_gripper_generate_messages_py)

# target for backward compatibility
add_custom_target(move_gripper_genpy)
add_dependencies(move_gripper_genpy move_gripper_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS move_gripper_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/move_gripper)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/move_gripper
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/move_gripper)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/move_gripper
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/move_gripper)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/move_gripper\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/move_gripper
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
