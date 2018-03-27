vec3 blendNormal(vec3 normal){
	vec3 blending = abs(normal);
	blending = normalize(max(blending, 0.00001));
	blending /= vec3(blending.x + blending.y + blending.z);
	return blending;
}

vec3 triplanarMapping (sampler2D texture, vec3 normal, vec3 position) {
  vec3 normalBlend = blendNormal(normal);
	vec3 xColor = texture2D(texture, position.yz).rgb;
	vec3 yColor = texture2D(texture, position.xz).rgb;
	vec3 zColor = texture2D(texture, position.xy).rgb;

  return (xColor * normalBlend.x + yColor * normalBlend.y + zColor * normalBlend.z);
}

#pragma glslify: export(triplanarMapping)
