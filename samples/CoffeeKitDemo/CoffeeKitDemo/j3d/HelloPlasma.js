importScripts ("lib/glMatrix.js",
               //"lib/requestAnimationFrame.js",
               "src/J3D.js",
               "src/util/Color.js",
               "src/math/Vector2.js",
               "src/math/Vector3.js",
               "src/math/Matrix44.js",
               "src/engine/Engine.js",
               "src/engine/Camera.js",
               "src/engine/Light.js",
               "src/engine/Geometry.js",
               "src/engine/Mesh.js",
               "src/engine/Scene.js",
               "src/engine/Loader.js",
               "src/engine/ShaderAtlas.js",
               "src/engine/Texture.js",
               "src/engine/Cubemap.js",
               "src/engine/Transform.js",
               "src/engine/Postprocess.js",
               "src/engine/Primitives.js",
               "src/engine/FrameBuffer.js",
               "src/engine/ShaderSource.js",
       	       "src/engine/Shader.js",
               "src/util/Time.js",
               "src/util/ShaderUtil.js",
               "src/util/Logger.js",
               "src/engine/BuiltinShaders.js");

var plasmaShader =
"   uniform sampler2D uTexture;	\n"+
"	varying vec2 vTextureCoord;\n"+
"\n"+
"	void main(void) {\n"+
"		vec2 ca = vec2(0.1, 0.2);\n"+
"		vec2 cb = vec2(0.7, 0.9);\n"+
"		float da = distance(vTextureCoord, ca);\n"+
"		float db = distance(vTextureCoord, cb);\n"+
"		\n"+
"		float t = uTime * 0.5;\n"+
"		\n"+
"		float c1 = sin(da * cos(t) * 16.0 + t * 4.0);\n"+
"		float c2 = cos(vTextureCoord.y * 8.0 + t);\n"+
"		float c3 = cos(db * 14.0) + sin(t);\n"+
"	\n"+
"		float p = (c1 + c2 + c3) / 3.0;\n"+
"	\n"+
"		gl_FragColor = texture2D(uTexture, vec2(p, p));\n"+
"	}";
	
var engine, ctex, textures, post;
	
exports.run = function (canvas) {
		
	engine = new J3D.Engine(canvas);

    textures = [
	  new J3D.Texture("demo/models/textures/colorramp1.png"),
	  new J3D.Texture("demo/models/textures/colorramp2.png"),
	  new J3D.Texture("demo/models/textures/colorramp3.png")
    ];
		
	ctex = 1;

	post = new J3D.Postprocess();
	post.filter = new J3D.Shader("PlasmaFilter", J3D.ShaderSource.BasicFilterVertex, plasmaShader, {
                                    fragmentIncludes: ["CommonFilterInclude"],
                                    vertexIncludes: ["CommonInclude"]
                                 });
	post.render = function() {
		J3D.Time.tick();
		this.renderEffect(textures[ctex].tex);
	}
};
	
exports.draw = function () {
	post.render();
};

exports.tap = function () {
    ctex = (ctex + 1) % 3;
    // XXX the first color ramp png is broken for some reason.. so let's just toggle between the other two for now.
    if (ctex == 0)
        ctex = 1;
};
