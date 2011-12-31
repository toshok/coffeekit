# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.GLKEffectPropertyLight = class GLKEffectPropertyLight extends GLKEffectProperty
  @register()

  # Configuring Common Lighting Properties
  ck.instanceProperty @, "enabled"
  ck.instanceProperty @, "position"
  ck.instanceProperty @, "transform"

  # Configuring Light Colors
  ck.instanceProperty @, "ambientColor"
  ck.instanceProperty @, "diffuseColor"
  ck.instanceProperty @, "specularColor"

  # Configuring Lighting Attenuation
  ck.instanceProperty @, "constantAttenuation"
  ck.instanceProperty @, "linearAttenuation"
  ck.instanceProperty @, "quadraticAttenuation"

  # Configuring Spotlight Properties
  ck.instanceProperty @, "spotCutoff"
  ck.instanceProperty @, "spotDirection"
  ck.instanceProperty @, "spotExponent"
