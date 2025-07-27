# erl_geometry_msgs

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![ROS1](https://img.shields.io/badge/ROS1-noetic-blue)](http://wiki.ros.org/)
[![ROS2](https://img.shields.io/badge/ROS2-humble-blue)](https://docs.ros.org/)

**A ROS package for geometry messages to transmit data structures in 🚪[erl_geometry](https://github.com/ExistentialRobotics/erl_geometry).**

## Getting Started

### Prerequisites

- CMake 3.24 or higher
- A C++17 compatible compiler

### Create Workspace

```bash
mkdir -p <your_workspace>/src && \
vcs import --input https://raw.githubusercontent.com/ExistentialRobotics/erl_geometry_msgs/refs/heads/main/erl_geometry_msgs.repos <your_workspace>/src
```

### Building the Package

```bash
cd <your_workspace>
# for ROS1
catkin build erl_geometry_msgs
source devel/setup.bash
# for ROS2
colcon build --packages-up-to erl_geometry_msgs
source install/setup.bash
```
