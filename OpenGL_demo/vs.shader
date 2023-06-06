#version 460

layout(location = 0) in vec4 vertex_position;
layout(location = 1) in vec4 vertex_color;
layout(location = 2) in vec4 vertex_normal;
layout(location = 3) in vec2 texture_position;

uniform mat4
model_mat_shader,
view_mat_shader,
projection_mat_shader;

out vec2 texture_coordinates;

void main() {
	texture_coordinates = texture_position;
	gl_Position = projection_mat_shader * view_mat_shader * vertex_position;
}
