# A mesh with header and optional per-vertex/per-face colors.
# Wraps shape_msgs/Mesh with additional metadata.
#
# When dim == 3 (default): a triangle mesh.
#   mesh.vertices  -- 3D vertices
#   mesh.triangles -- triangle faces (all 3 vertex_indices used)
#   vertex_colors  -- per-vertex colors (length 0 or == mesh.vertices length)
#   face_colors    -- per-face colors   (length 0 or == mesh.triangles length)
#
# When dim == 2: a set of 2D polygons represented as line segments.
#   mesh.vertices  -- 2D vertices (z is ignored)
#   mesh.triangles -- line segments (only vertex_indices[0] and [1] are used)
#   vertex_colors  -- per-vertex colors       (length 0 or == mesh.vertices length)
#   face_colors    -- per-line-segment colors  (length 0 or == mesh.triangles length)

std_msgs/Header header

# Spatial dimension: 2 for 2D line segments, 3 for 3D triangle mesh
uint8 dim

# The mesh data (vertices + triangle/line-segment indices)
shape_msgs/Mesh mesh

# Optional per-vertex colors (length must be 0 or equal to mesh.vertices length)
std_msgs/ColorRGBA[] vertex_colors

# Optional per-face colors (length must be 0 or equal to mesh.triangles length)
std_msgs/ColorRGBA[] face_colors
