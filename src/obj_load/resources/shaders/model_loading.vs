#version 410 core
layout ( location = 0 ) in vec3 vertex;
layout ( location = 1 ) in vec2 texture;
layout ( location = 2 ) in vec3 normal;

uniform mat4 view, projection, model;
out vec2 texCoord;

void main()
{
	texCoord = texture;
	gl_Position = projection * view * model * vec4(vertex, 1.0);
}