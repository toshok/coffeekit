# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.GLKEffectPropertyFog = class GLKEffectPropertyFog extends GLKEffectProperty
  # Enabling Fog
  @instanceProperty "enabled"

  # Choosing the Fog Mode
  @instanceProperty "mode"

  # Fog Properties
  @instanceProperty "color"
  @instanceProperty "density"
  @instanceProperty "start"
  @instanceProperty "end"

  @register()
