varying vec2 v_vTexcoord;

void main()
{
    vec4 color = texture2D(gm_BaseTexture, v_vTexcoord);
    float grey = dot(color.rgb, vec3(0.3, 0.59, 0.11));
    gl_FragColor = vec4(vec3(grey), color.a);
}
