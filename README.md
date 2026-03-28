# erl_geometry_msgs

[![Tags](https://img.shields.io/github/v/tag/ExistentialRobotics/erl_geometry_msgs?label=version)](https://github.com/ExistentialRobotics/erl_geometry_msgs/tags)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![ROS1](https://img.shields.io/badge/ROS1-noetic-blue)](http://wiki.ros.org/)
[![ROS2](https://img.shields.io/badge/ROS2-humble-blue)](https://docs.ros.org/)
[![ROS2](https://img.shields.io/badge/ROS2-jazzy-blue)](https://docs.ros.org/)

**A ROS package for geometry messages to transmit data structures in 🚪[erl_geometry](https://github.com/ExistentialRobotics/erl_geometry).**

## Messages

### OccupancyTreeMsg
Serialized occupancy quadtree (2D) or octree (3D).

| Field       | Type              | Description                           |
|-------------|-------------------|---------------------------------------|
| header      | std_msgs/Header   | Timestamp and frame                   |
| dim         | uint8             | Spatial dimension (2 or 3)            |
| tree_type   | string            | Tree type identifier                  |
| scale       | float64           | Resolution scale of the tree          |
| is_double   | bool              | Whether values are double precision   |
| binary      | bool              | Whether serialization is binary       |
| data        | int8[]            | Serialized tree data                  |

### GridMapMsg
A 2D grid map supporting multiple value encodings (INT8, UINT8, INT16, UINT16, INT32, UINT32, FLOAT32, FLOAT64).

| Field    | Type                  | Description                              |
|----------|-----------------------|------------------------------------------|
| header   | std_msgs/Header       | Timestamp and frame                      |
| info     | nav_msgs/MapMetaData  | Map metadata (resolution, size, origin)  |
| encoding | uint8                 | Data type encoding (see message for IDs) |
| data     | uint8[]               | Raw map data in row-major order          |

### GridMapUpdateMsg
Incremental update for a subregion of a GridMapMsg.

| Field    | Type            | Description                          |
|----------|-----------------|--------------------------------------|
| header   | std_msgs/Header | Timestamp and frame                  |
| x        | int32           | X origin of the update region        |
| y        | int32           | Y origin of the update region        |
| width    | uint32          | Width of the update region           |
| height   | uint32          | Height of the update region          |
| encoding | uint8           | Data type encoding                   |
| data     | uint8[]         | Raw update data in row-major order   |

### MeshMsg
A triangle mesh with header and optional per-vertex/per-face colors. Wraps `shape_msgs/Mesh`.

| Field         | Type                 | Description                                                       |
|---------------|----------------------|-------------------------------------------------------------------|
| header        | std_msgs/Header      | Timestamp and frame                                               |
| mesh          | shape_msgs/Mesh      | Triangle mesh (vertices + triangle indices)                       |
| vertex_colors | std_msgs/ColorRGBA[] | Optional per-vertex colors (empty or same length as vertices)     |
| face_colors   | std_msgs/ColorRGBA[] | Optional per-face colors (empty or same length as triangles)      |

### Frontier
A single frontier region with vertices and indexed primitives.

| Field    | Type                    | Description                                                     |
|----------|-------------------------|-----------------------------------------------------------------|
| id       | uint32                  | Frontier identifier                                             |
| score    | float64                 | Frontier score/utility                                          |
| vertices | geometry_msgs/Point[]   | Frontier vertices                                               |
| indices  | uint32[]                | Index into vertices; pairs (dim=2) or triples (dim=3)           |

### FrontierArray
A collection of frontiers with shared dimensionality and resolution.

| Field      | Type            | Description                                        |
|------------|-----------------|----------------------------------------------------|
| header     | std_msgs/Header | Timestamp and frame                                |
| dim        | uint8           | Spatial dimension (2 = line segments, 3 = triangles) |
| resolution | float64         | Frontier extraction resolution (meters); 0 = unset |
| frontiers  | Frontier[]      | Array of frontier regions                          |

## Getting Started

### Prerequisites

- CMake 3.16 or higher
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
