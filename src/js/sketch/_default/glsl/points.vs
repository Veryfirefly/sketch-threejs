attribute vec3 position;

uniform mat4 projectionMatrix;
uniform mat4 viewMatrix;
uniform mat4 modelMatrix;

void main() {
  // coordinate transformation
  vec4 mvPosition = viewMatrix * modelMatrix * vec4(position, 1.0);
  float distanceFromCamera = 1000.0 / length(mvPosition.xyz);

  gl_Position = projectionMatrix * mvPosition;
  gl_PointSize = distanceFromCamera;
}
