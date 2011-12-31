# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.GLKEffectPropertyTexture = class GLKEffectPropertyTexture extends GLKEffectProperty
  @register()

  # Configuring Texture Properties
  ck.instanceProperty @, "enabled"
  ck.instanceProperty @, "envMode"
  ck.instanceProperty @, "glName"
  ck.instanceProperty @, "target"
