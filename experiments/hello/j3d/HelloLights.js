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
var theta = 0;
var redLightMax = 0.33;

exports.run = function (canvas) {

  // Create engine

  engine = new J3D.Engine(canvas);

  // Setup camera

  camera = new J3D.Transform();
  camera.camera = new J3D.Camera();
  camera.position.z = -4;
  camera.rotation.y = Math.PI;
  engine.camera = camera;

  // Setup lights

  light1 = new J3D.Transform();
  light1.light = new J3D.Light(J3D.DIRECT);
  light1.light.color = new J3D.Color(0.33, 0.33, 0, 1);
  light1.light.direction = new v3(0, -1, 0).norm();

  light2 = new J3D.Transform();
  light2.light = new J3D.Light(J3D.POINT);
  light2.light.color = new J3D.Color(redLightMax, 0, 0, 1);
  light2.position = new v3(10, 0, 0);

  light3 = new J3D.Transform();
  light3.light = new J3D.Light(J3D.POINT);
  light3.light.color = new J3D.Color(0, 0, 0.66, 1);

  // Get scene and setup ambient light color

  scene = engine.scene;
  scene.ambient = J3D.Color.black;

  // Add lights and camera

  scene.add(camera);
  scene.add(light1);
  scene.add(light2);
  scene.add(light3);

  buildScene();

};

function buildScene(){

  // Setup materials

  moMat = J3D.BuiltinShaders.fetch("Gouraud");
  moMat.su.specularIntensity = 1;
  moMat.su.shininess = 32;
  moMat.su.color = new J3D.Color(0.9, 0.9, 0.9, 1);
  moMat.hasColorTexture = false;

    ctMat = J3D.BuiltinShaders.fetch("Phong");
  ctMat.su.color = J3D.Color.white;
  ctMat.su.specularIntensity = 10;
  ctMat.su.shininess = 32;
  ctMat.colorTexture = new J3D.Texture("demo/models/textures/containerbake512.jpg");
  ctMat.hasColorTexture = true;

  crMat = J3D.BuiltinShaders.fetch("Phong");
  crMat.su.color = new J3D.Color(1,1,1,1);//J3D.Color.white;
  crMat.su.specularIntensity = 0.1;
  crMat.su.shininess = 0.1;
  crMat.colorTexture = new J3D.Texture("demo/models/textures/crate256.jpg");
  crMat.hasColorTexture = true;

  haMat = J3D.BuiltinShaders.fetch("Gouraud");
  haMat.su.specularIntensity = 1;
  haMat.su.shininess = 32;
  haMat.su.color = new J3D.Color(1,1,1,1);
  haMat.colorTexture = new J3D.Texture("demo/models/textures/metalbase.jpg");
  haMat.hasColorTexture = true;

  // Setup transforms and meshes

  ct = new J3D.Transform();
  ct.position.x = -1.5;
  J3D.Loader.loadJSON("demo/models/container.js", function(j) { ct.geometry = new J3D.Mesh(j); } );
  ct.renderer = ctMat;

  mo = new J3D.Transform();
  J3D.Loader.loadJSON("demo/models/monkeyhi.js", function(j) { mo.geometry = new J3D.Mesh(j); } );
  mo.scale = v3.ONE().mul(0.66);
  mo.renderer = moMat;

  cr = new J3D.Transform();
  cr.position.x = 1.5;
  cr.position.z = 0.5;
  J3D.Loader.loadJSON("demo/models/crate.js", function(j) { cr.geometry = new J3D.Mesh(j); } );
  cr.renderer = crMat;

  ha = new J3D.Transform();
  ha.position = new v3(0.2499574, 0.4273163, -0.2176546);
  ha.rotation.y = 0;//Math.PI;
  J3D.Loader.loadJSON("demo/models/handles.js", function(j) { ha.geometry = new J3D.Mesh(j); } );
  ha.renderer = haMat;

  // Add all to the scene
  scene.add(ct);
  scene.add(mo);
  scene.add(cr).add(ha);
}

exports.draw = function () {
  /*requestAnimationFrame(draw);*/

  light1.enabled = true; /*document.getElementById("yellow").checked;*/
  light2.enabled = true; /*document.getElementById("red").checked;*/
  light3.enabled = true; /*document.getElementById("blue").checked;*/

  if (true/*document.getElementById("ambient").checked*/) {
    scene.ambient = new J3D.Color(0.1, 0.1, 0.1, 1);
  } else {
    scene.ambient = J3D.Color.black;
  }

  if (true/*document.getElementById("anim").checked*/) {
    ct.rotation.x += J3D.Time.deltaTime / 7000;
    ct.rotation.y -= J3D.Time.deltaTime / 3000;

    cr.rotation.x -= J3D.Time.deltaTime / 7000;
    cr.rotation.z += J3D.Time.deltaTime / 3000;

    mo.rotation.y -= J3D.Time.deltaTime / 7000;
  }

  light2.light.color.r = redLightMax * (Math.sin(theta) + 1) / 2;
  light3.position.x = Math.cos(theta/6) * 3;
  light3.position.z = Math.sin(theta/6) * 3;

  theta += 0.1;

  engine.render();
};
