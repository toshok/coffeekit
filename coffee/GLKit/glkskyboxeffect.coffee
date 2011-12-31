# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.GLKSkyboxEffect = class GLKSkyboxEffect extends foundation.NSObject
  @register()

  # Naming the Effect
  ck.instanceProperty @, "label"

  # Preparing the Effect for Rendering
  prepareToDraw: objc.invokeSelector "prepareToDraw"

  # Drawing the Skybox
  draw: objc.invokeSelector "draw"

  # Configuring the Skybox
  ck.instanceProperty @, "textureCubeMap"
  ck.instanceProperty @, "center"
  ck.instanceProperty @, "xSize"
  ck.instanceProperty @, "ySize"
  ck.instanceProperty @, "zSize"

  # Setting the Skybox Transform
  ck.instanceProperty @, "transform"
