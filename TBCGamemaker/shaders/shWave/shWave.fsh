//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float time;
const float speed = 0.007;
const float Xfrequency = 20.0;
const float Xsize = 0.003;

void main()
{
	// Horizontal Wave
	float Horizontal_Wave = sin(time * speed + v_vTexcoord.y * Xfrequency) * (Xsize * v_vTexcoord.y);
	
	vec4 distort = v_vColour * texture2D(gm_BaseTexture, vec2(v_vTexcoord.x, v_vTexcoord.y + Horizontal_Wave));
	
	gl_FragColor = distort;
    //gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
}
