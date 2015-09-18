

#ifdef GL_ES
precision highp float;
#endif

uniform mat4 modelViewMatrix;
uniform mat4 modelViewProjectionMatrix;
uniform mat3 normalMatrix;

attribute vec3 inNormal;
attribute vec4 inPosition;
varying vec3  varNormal;
varying vec3  varEyeDir;


void main (void)
{	

	vec4 eyePos = modelViewMatrix * inPosition;
	
	varNormal = normalize(normalMatrix * inNormal);
	varEyeDir = eyePos.xyz;
   	
    gl_Position	= modelViewProjectionMatrix * inPosition; 
    
}
