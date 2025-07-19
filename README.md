erl_geometry_msgs
=================

A ROS package for geometry messages to transmit data structures in erl_geometry.

# Install

```shell
cd <your_ros_ws>/src
git clone https://github.com/ExistentialRobotics/erl_cmake_tools.git
git clone https://github.com/ExistentialRobotics/erl_geometry.git
git clone https://github.com/ExistentialRobotics/erl_geometry_msgs.git
cd <your_ros_ws>
# for ROS1
catkin build erl_geometry_msgs
# for ROS2
colcon build \
    --event-handlers console_cohesion+ --cmake-args -DCMAKE_VERBOSE_MAKEFILE=ON \
    --cmake-clean-cache --packages-up-to erl_geometry_msgs
```
