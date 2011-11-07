# This file is part of coffeekit.  for licensing information, see the LICENSE file

class GLKEffectPropertyTexture extends GLKEffectProperty
  constructor: (handle) -> super (if handle then handle else objc.allocInstance (@.constructor.name))

  # Configuring Texture Properties
  ck.addProperty @::, "enabled"
  ck.addProperty @::, "envMode"
  ck.addProperty @::, "glName"
  ck.addProperty @::, "target"


new ck.RegisterAttribute GLKEffectPropertyTexture, "GLKEffectPropertyTexture"
exports.GLKEffectPropertyTexture = GLKEffectPropertyTexture
