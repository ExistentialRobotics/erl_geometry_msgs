# A triangle mesh with header and optional per-vertex/per-face colors.
# Wraps shape_msgs/Mesh with additional metadata.

std_msgs/Header header

# The triangle mesh (vertices + triangle indices)
shape_msgs/Mesh mesh

# Optional per-vertex colors (length must be 0 or equal to mesh.vertices length)
std_msgs/ColorRGBA[] vertex_colors

# Optional per-face colors (length must be 0 or equal to mesh.triangles length)
std_msgs/ColorRGBA[] face_colors
