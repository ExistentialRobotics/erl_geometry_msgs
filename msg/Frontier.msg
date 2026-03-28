# A single frontier region.
#
# For 2D frontiers (dim=2 in FrontierArray): indices are pairs forming line segments.
# For 3D frontiers (dim=3 in FrontierArray): indices are triples forming triangles.

uint32 id                        # Frontier identifier
float64 score                    # Frontier score/utility
geometry_msgs/Point[] vertices   # Frontier vertices
uint32[] indices                 # Index into vertices[]; pairs (dim=2) or triples (dim=3)
