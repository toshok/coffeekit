# This file is part of coffeekit.  for licensing information, see the LICENSE file

class GLKEffectPropertyLight extends GLKEffectProperty
  constructor: (handle) -> super (if handle then handle else objc.allocInstance (@.constructor.name))

  # Configuring Common Lighting Properties
  ck.addProperty @::, "enabled"
  ck.addProperty @::, "position"
  ck.addProperty @::, "transform"

  # Configuring Light Colors
  ck.addProperty @::, "ambientColor"
  ck.addProperty @::, "diffuseColor"
  ck.addProperty @::, "specularColor"

  # Configuring Lighting Attenuation
  ck.addProperty @::, "constantAttenuation"
  ck.addProperty @::, "linearAttenuation"
  ck.addProperty @::, "quadraticAttenuation"

  # Configuring Spotlight Properties
  ck.addProperty @::, "spotCutoff"
  ck.addProperty @::, "spotDirection"
  ck.addProperty @::, "spotExponent"

new ck.RegisterAttribute GLKEffectPropertyLight, "GLKEffectPropertyLight"
exports.GLKEffectPropertyLight = GLKEffectPropertyLight
