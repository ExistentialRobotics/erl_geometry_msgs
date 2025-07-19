cmake_minimum_required(VERSION 3.16)

project(
    erl_geometry_msgs #
    LANGUAGES CXX C #
    VERSION 0.1.0 #
    DESCRIPTION "erl_geometry_msgs is a ROS package for geometry messages to transmit data structures in erl_geometry.")
message(STATUS "Configuring ${PROJECT_NAME} ${PROJECT_VERSION}")

if (NOT COMMAND erl_project_setup)
    find_package(erl_cmake_tools REQUIRED)
endif ()

erl_project_setup()
erl_setup_ros(
    CATKIN_COMPONENTS roscpp std_msgs message_generation #
    CATKIN_DEPENDS roscpp std_msgs message_runtime #
    MSG_FILES OccupancyTreeMsg.msg #
    MSG_DEPENDENCIES std_msgs #
    ROS2_COMPONENTS std_msgs)
erl_install()
erl_mark_project_found()
