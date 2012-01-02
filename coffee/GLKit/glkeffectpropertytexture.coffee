# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.GLKEffectPropertyTexture = class GLKEffectPropertyTexture extends GLKEffectProperty
  # Configuring Texture Properties
  @instanceProperty "enabled"
  @instanceProperty "envMode"
  @instanceProperty "glName"
  @instanceProperty "target"

  @register()
