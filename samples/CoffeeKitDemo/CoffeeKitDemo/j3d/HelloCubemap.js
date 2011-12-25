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

var engine, scene;
var root, monkey, camera;
var mx = 1.5, my = 1.5;
var isMouseDown = false;

exports.run = function (canvas) {

  engine = new J3D.Engine(canvas);
  engine.setClearColor(J3D.Color.white);

  camera = new J3D.Transform();
  camera.camera = new J3D.Camera({far: 100});
  camera.position.z = 5;
  engine.camera = camera;

  root = new J3D.Transform();
  root.add(camera);
  engine.scene.add(root);

  cubemap = new J3D.Cubemap({
    left: "demo/models/textures/skybox/left.jpg",
    right: "demo/models/textures/skybox/right.jpg",
    up: "demo/models/textures/skybox/up.jpg",
    down: "demo/models/textures/skybox/down.jpg",
    back: "demo/models/textures/skybox/back.jpg",
    front: "demo/models/textures/skybox/front.jpg"
  });

  engine.scene.addSkybox(cubemap);

  monkey = new J3D.Transform();
  monkey.renderer = J3D.BuiltinShaders.fetch("Reflective");
  monkey.renderer.uCubemap = cubemap;
  J3D.Loader.loadJSON("demo/models/monkeyhi.js", function(j) { monkey.geometry = new J3D.Mesh(j); } );
  engine.scene.add(monkey);

  /*document.onmousemove = onMouseMove;*/
};

function onMouseMove(e) {
  mx = ( e.clientX / window.innerWidth  ) * 2 - 1;
  my = ( e.clientY / window.innerHeight ) * 2 - 1;
}

exports.draw = function () {
  //requestAnimationFrame(draw);

  if (!isNaN(mx) && !isNaN(my)) {
    // Rotate the root to which camera is attached
    root.rotation.x += my * J3D.Time.deltaTime / 1000;
    root.rotation.y += mx * J3D.Time.deltaTime / 2000;
  }

  engine.render();
};
