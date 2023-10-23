// shader_subtract_color_alpha
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 current_color = v_vColour * texture2D(gm_BaseTexture, v_vTexcoord);
    vec3 color_result = max(current_color.rgb - vec3(0.0, 0.0, 0.0), vec3(0.0));
    gl_FragColor = vec4(color_result, current_color.a);
}
