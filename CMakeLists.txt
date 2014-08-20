cmake_minimum_required(VERSION 2.8.3)
project(robohow_common_msgs)

find_package(catkin REQUIRED COMPONENTS message_generation std_msgs geometry_msgs)

add_message_files(
  DIRECTORY msg
  FILES
    ConstraintCommand.msg
    Feature.msg  
    GraspStability.msg
    ConstraintConfig.msg
    GaussianDistribution.msg
    MotionModel.msg
    Constraint.msg
    GaussianMixtureModel.msg
    MotionPhase.msg
)

add_service_files(
  DIRECTORY srv
  FILES
  GraspStabilityControl.srv
)

generate_messages(DEPENDENCIES std_msgs geometry_msgs)

catkin_package(
  CATKIN_DEPENDS message_runtime std_msgs geometry_msgs
)

install(DIRECTORY include/${PROJECT_NAME}/
  DESTINATION ${CATKIN_PACKAGE_INCLUDE_DESTINATION}
  FILES_MATCHING PATTERN "*.h")
