

vec4 finalColor;


varying vec2 varTexcoord;
uniform sampler2D diffuseTexture;


void main (void)
{
	
    
    finalColor = texture2D(diffuseTexture, varTexcoord.st, 0.0);
    
    
    gl_FragColor = finalColor;

}