# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.GLKSkyboxEffect = class GLKSkyboxEffect extends foundation.NSObject
  # Naming the Effect
  @instanceProperty "label"

  # Preparing the Effect for Rendering
  prepareToDraw: @nativeSelector "prepareToDraw"

  # Drawing the Skybox
  draw: @nativeSelector "draw"

  # Configuring the Skybox
  @instanceProperty "textureCubeMap"
  @instanceProperty "center"
  @instanceProperty "xSize"
  @instanceProperty "ySize"
  @instanceProperty "zSize"

  # Setting the Skybox Transform
  @instanceProperty "transform"

  @register()
