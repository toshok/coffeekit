# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.GLKReflectionMapEffect = class GLKReflectionMapEffect extends GLKBaseEffect
  @register()

  # Preparing the Reflection Effect
  prepareToDraw: objc.invokeSelector "prepareToDraw"

  # Effect Properties
  ck.instanceProperty @, "textureCubeMap"
  ck.instanceProperty @, "matrix"
