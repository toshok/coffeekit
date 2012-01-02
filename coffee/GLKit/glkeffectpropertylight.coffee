# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.GLKEffectPropertyLight = class GLKEffectPropertyLight extends GLKEffectProperty
  # Configuring Common Lighting Properties
  @instanceProperty "enabled"
  @instanceProperty "position"
  @instanceProperty "transform"

  # Configuring Light Colors
  @instanceProperty "ambientColor"
  @instanceProperty "diffuseColor"
  @instanceProperty "specularColor"

  # Configuring Lighting Attenuation
  @instanceProperty "constantAttenuation"
  @instanceProperty "linearAttenuation"
  @instanceProperty "quadraticAttenuation"

  # Configuring Spotlight Properties
  @instanceProperty "spotCutoff"
  @instanceProperty "spotDirection"
  @instanceProperty "spotExponent"

  @register()
