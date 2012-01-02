# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.GLKReflectionMapEffect = class GLKReflectionMapEffect extends GLKBaseEffect
  # Preparing the Reflection Effect
  prepareToDraw: @nativeSelector "prepareToDraw"

  # Effect Properties
  @instanceProperty "textureCubeMap"
  @instanceProperty "matrix"

  @register()
