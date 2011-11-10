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
"   uniform sampler2D uTexture;	"+
"	varying vec2 vTextureCoord;"+
""+
"	void main(void) {"+
"		vec2 ca = vec2(0.1, 0.2);"+
"		vec2 cb = vec2(0.7, 0.9);"+
"		float da = distance(vTextureCoord, ca);"+
"		float db = distance(vTextureCoord, cb);"+
"		"+
"		float t = uTime * 0.5;"+
"		"+
"		float c1 = sin(da * cos(t) * 16.0 + t * 4.0);"+
"		float c2 = cos(vTextureCoord.y * 8.0 + t);"+
"		float c3 = cos(db * 14.0) + sin(t);"+
"	"+
"		float p = (c1 + c2 + c3) / 3.0;"+
"	"+
"		gl_FragColor = texture2D(uTexture, vec2(p, p));"+
"	}";
	
var engine, ctex, texture, texture2, texture3, post;
	
exports.run = function (canvas) {
		
	engine = new J3D.Engine(canvas);

	texture = new J3D.Texture("demo/models/textures/colorramp1.png");
	texture2 = new J3D.Texture("demo/models/textures/colorramp2.png");
	texture3 = new J3D.Texture("demo/models/textures/colorramp3.png");
		
	ctex = texture;

	post = new J3D.Postprocess();
	post.filter = new J3D.Shader("PlasmaFilter", J3D.ShaderSource.BasicFilterVertex, plasmaShader);
	post.render = function() {
		J3D.Time.tick();
		this.renderEffect(ctex.tex);
	}
};
	
exports.draw = function () {
	//requestAnimationFrame(draw);	
		
	//if(document.getElementById("ra").checked) ctex = texture;
	//if(document.getElementById("rb").checked) ctex = texture2;
	//if(document.getElementById("rc").checked) ctex = texture3;
	
	post.render();
};
