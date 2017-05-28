attribute vec3 in_Position;                  // (x,y,z)
attribute vec3 in_Normal;                  // (x,y,z)     unused in this shader.
attribute vec4 in_Colour;                    // (r,g,b,a)
attribute vec2 in_TextureCoord;              // (u,v)

varying vec2 v_vTexcoord;
varying vec3 v_vPosition;
varying vec3 v_vNormal;
varying vec4 v_vColour;

void main()
{
    vec4 object_space_pos = vec4( in_Position.x, in_Position.y, in_Position.z, 1.0);
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
    
    v_vColour = in_Colour;
    v_vPosition = in_Position;
    v_vNormal = in_Normal;
    v_vTexcoord = in_TextureCoord;
}

//######################_==_YOYO_SHADER_MARKER_==_######################@~uniform float inv;
uniform float ind;
uniform vec3 folor;
uniform vec2 range;
uniform vec2 pos;
varying vec2 v_vTexcoord;
varying vec3 v_vPosition;
varying vec3 v_vNormal;
varying vec4 v_vColour;

void main()
{
    //float dis = ((distance(pos,v_vPosition.xy)-range.x))/range.y;
    //vec4 fog = vec4(folor*dis,1.0);
    vec4 col = vec4(v_vColour.rgb*((v_vPosition.z+55.0)/80.0),v_vColour.a);
    vec3 dir = vec3( 0.5, 0.5, inv);
    vec3 lit = vec3( 0.7, 0.8, 1.0);
    float lighting = 1.0;
    if (v_vNormal.z <0.05) 
    {
     if (ind>0.1) {lighting = 0.75;}//
    }
    //float lighting = (dot( normalize(v_vNormal), normalize(dir)) * 0.5 + 0.5)+0.4;//Calculate
    gl_FragColor = col * texture2D( gm_BaseTexture, v_vTexcoord) * vec4( lighting * lit, 1.0);
}
