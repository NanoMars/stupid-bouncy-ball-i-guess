// Shadergator first shader practice
void mainImage(out vec4 fragColor, in vec2 fragCoord) {
    vec2 uv = fragCoord / iResolution.xy;
    
    vec2 point = (uv - vec2(0.5 - cos(iTime + 5.0) / 2.0, 0.5)) * vec2(iResolution.x * 3.0 * sin(iTime * 1.0) / 1.0 / iResolution.y, 0.8 - cos(iTime) / 8.0);
    float circle = 1.0 - smoothstep(0.24999, 0.25, length(point));
    vec3 paint = vec3(0.2, 0.6, 0.9);
    fragColor = vec4(paint / circle, 1.0);
    
}
