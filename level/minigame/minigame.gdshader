shader_type spatial;

uniform vec4 color : source_color = vec4(0.5, 0.5, 0.5, 1.0);

void fragment() {
	// Called for every pixel the material is visible on.
	ALBEDO = color.rgb;
}
