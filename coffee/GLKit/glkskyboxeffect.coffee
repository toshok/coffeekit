# This file is part of coffeekit.  for licensing information, see the LICENSE file

class GLKSkyboxEffect extends foundation.NSObject
  constructor: (handle) -> super (if handle then handle else objc.allocInstance (@.constructor.name))

  # Naming the Effect
  ck.addProperty @::, "label"

  # Preparing the Effect for Rendering
  prepareToDraw: objc.invokeSelector ("prepareToDraw")

  # Drawing the Skybox
  draw: objc.invokeSelector ("draw")

  # Configuring the Skybox
  ck.addProperty @::, "textureCubeMap"
  ck.addProperty @::, "center"
  ck.addProperty @::, "xSize"
  ck.addProperty @::, "ySize"
  ck.addProperty @::, "zSize"

  # Setting the Skybox Transform
  ck.addProperty @::, "transform"

new ck.RegisterAttribute GLKSkyboxEffect, "GLKSkyboxEffect"
exports.GLKSkyboxEffect = GLKSkyboxEffect
