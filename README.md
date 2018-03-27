# glsl-triplanar-mapping
📐 GLSL Triplanar texture mapping. glslify format. 

Inspired by this [article](https://gamedevelopment.tutsplus.com/articles/use-tri-planar-texture-mapping-for-better-terrain--gamedev-13821).

## NPM Installation

```sh
npm install glsl-triplanar-mapping
```

## Usage

```glsl
#pragma glslify: triplanarMapping = require(glsl-triplanar-mapping)

void main() {
    vec3 color = triplanarMapping(texture, normal, position);
    gl_FragColor = vec4(color, 1.0);
}
```

## License
[MIT license](https://github.com/JonasFolletete/glsl-triplanar-mapping/blob/master/LICENSE)