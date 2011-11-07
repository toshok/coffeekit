# This file is part of coffeekit.  for licensing information, see the LICENSE file

class GLKReflectionMapEffect extends GLKBaseEffect
  constructor: (handle) -> super (if handle then handle else objc.allocInstance (@.constructor.name))

  # Preparing the Reflection Effect
  prepareToDraw: objc.invokeSelector ("prepareToDraw")

  # Effect Properties
  ck.addProperty @::, "textureCubeMap"
  ck.addProperty @::, "matrix"


new ck.RegisterAttribute GLKReflectionMapEffect, "GLKReflectionMapEffect"
exports.GLKReflectionMapEffect = GLKReflectionMapEffect
