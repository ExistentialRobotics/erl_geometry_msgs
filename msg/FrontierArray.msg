# A collection of frontiers with shared dimensionality and resolution.

std_msgs/Header header
uint8 dim                        # 2 = line segments, 3 = triangle faces
float64 resolution               # Frontier extraction resolution (meters); 0 = unset
Frontier[] frontiers
