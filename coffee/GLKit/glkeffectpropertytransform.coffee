# This file is part of coffeekit.  for licensing information, see the LICENSE file

class GLKEffectPropertyTransform extends GLKEffectProperty
  constructor: (handle) -> super (if handle then handle else objc.allocInstance (@.constructor.name))

  # Configuring Modelview Properties
  ck.addProperty @::, "modelviewMatrix"
  ck.addProperty @::, "normalMatrix"

  # Configuring the Projection Matrix
  ck.addProperty @::, "projectionMatrix"

  # Configuring the Transform Matrix
  ck.addProperty @::, "transformMatrix"


new ck.RegisterAttribute GLKEffectPropertyTransform, "GLKEffectPropertyTransform"
exports.GLKEffectPropertyTransform = GLKEffectPropertyTransform
