# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "add_two_ints_server: 0 messages, 1 services")

set(MSG_I_FLAGS "")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(add_two_ints_server_generate_messages ALL)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(add_two_ints_server
  "/home/svr2112/challenge_problem_1/src/add_ints/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/add_two_ints_server
)

### Generating Module File
_generate_module_cpp(add_two_ints_server
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/add_two_ints_server
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(add_two_ints_server_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(add_two_ints_server_generate_messages add_two_ints_server_generate_messages_cpp)

# target for backward compatibility
add_custom_target(add_two_ints_server_gencpp)
add_dependencies(add_two_ints_server_gencpp add_two_ints_server_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS add_two_ints_server_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(add_two_ints_server
  "/home/svr2112/challenge_problem_1/src/add_ints/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/add_two_ints_server
)

### Generating Module File
_generate_module_lisp(add_two_ints_server
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/add_two_ints_server
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(add_two_ints_server_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(add_two_ints_server_generate_messages add_two_ints_server_generate_messages_lisp)

# target for backward compatibility
add_custom_target(add_two_ints_server_genlisp)
add_dependencies(add_two_ints_server_genlisp add_two_ints_server_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS add_two_ints_server_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(add_two_ints_server
  "/home/svr2112/challenge_problem_1/src/add_ints/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/add_two_ints_server
)

### Generating Module File
_generate_module_py(add_two_ints_server
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/add_two_ints_server
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(add_two_ints_server_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(add_two_ints_server_generate_messages add_two_ints_server_generate_messages_py)

# target for backward compatibility
add_custom_target(add_two_ints_server_genpy)
add_dependencies(add_two_ints_server_genpy add_two_ints_server_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS add_two_ints_server_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/add_two_ints_server)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/add_two_ints_server
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/add_two_ints_server)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/add_two_ints_server
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/add_two_ints_server)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/add_two_ints_server\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/add_two_ints_server
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
