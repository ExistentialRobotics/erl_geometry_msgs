# This represents a 2-D grid map
std_msgs/Header header

# MetaData for the map
nav_msgs/MapMetaData info

# The map data, in row-major order, starting with (0,0).
# Cell (1, 0) will be listed second, representing the next cell in the x direction.
# Cell (0, 1) will be at the index equal to info.width, followed by (1, 1).
# The values inside are application dependent, but frequently,
# 0 represents unoccupied, 1 represents definitely occupied, and
# -1 represents unknown.

# this message is almost the same as nav_msgs/OccupancyGrid
# but uses encoding field to specify the data type of the map
# and data field to store the actual map data
# this allows to use different data types for the map
# e.g. float32 for probability values, int8 for occupancy values, etc.
# the encoding field should be one of the enumerated values in
# erl_geometry_msgs/ros2/grid_map_msg_encoding.hpp

# INT8=1
# UINT8=2
# INT16=3
# UINT16=4
# INT32=5
# UINT32=6
# FLOAT32=7
# FLOAT64=8

uint8 encoding
uint8[] data
