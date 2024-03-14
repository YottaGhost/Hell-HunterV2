//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform float pixelH;
uniform float pixelW;
uniform vec3 outline_Color;

void main()
{
	vec2 offsetx;
	offsetx.x=pixelW;
	vec2 offsety;
	offsety.y = pixelH;
	
	
	
	float Initial_Alpha = texture2D(gm_BaseTexture, v_vTexcoord).a;
	
	float alpha = Initial_Alpha;
	
	alpha += ceil(texture2D( gm_BaseTexture, v_vTexcoord + offsetx ) .a);
	alpha += ceil(texture2D( gm_BaseTexture, v_vTexcoord - offsetx ) .a);
	alpha += ceil(texture2D( gm_BaseTexture, v_vTexcoord + offsety ) .a);
	alpha += ceil(texture2D( gm_BaseTexture, v_vTexcoord - offsety ) .a);
	
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	gl_FragColor.a = alpha;
	 gl_FragColor.rgb = mix( gl_FragColor.rgb, outline_Color, float(Initial_Alpha==0.0) );
}
