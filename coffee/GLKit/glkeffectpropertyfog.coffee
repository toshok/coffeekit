# This file is part of coffeekit.  for licensing information, see the LICENSE file

class GLKEffectPropertyFog extends GLKEffectProperty
  constructor: (handle) -> super (if handle then handle else objc.allocInstance (@.constructor.name))

  # Enabling Fog
  ck.addProperty @::, "enabled"

  # Choosing the Fog Mode
  ck.addProperty @::, "mode"

  # Fog Properties
  ck.addProperty @::, "color"
  ck.addProperty @::, "density"
  ck.addProperty @::, "start"
  ck.addProperty @::, "end"

new ck.RegisterAttribute GLKEffectPropertyFog, "GLKEffectPropertyFog"
exports.GLKEffectPropertyFog = GLKEffectPropertyFog
