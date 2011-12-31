# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.GLKEffectPropertyFog = class GLKEffectPropertyFog extends GLKEffectProperty
  @register()

  # Enabling Fog
  ck.instanceProperty @, "enabled"

  # Choosing the Fog Mode
  ck.instanceProperty @, "mode"

  # Fog Properties
  ck.instanceProperty @, "color"
  ck.instanceProperty @, "density"
  ck.instanceProperty @, "start"
  ck.instanceProperty @, "end"
