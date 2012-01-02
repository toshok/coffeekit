# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.GLKBaseEffect = class GLKBaseEffect extends foundation.NSObject
  @mixinProtocol GLKNamedEffect

  # Naming the Effect
  @instanceProperty "label"

  # Configuring the Modelview Transform
  @instanceProperty "transform"

  # Configuring Lights
  @instanceProperty "lightingType"
  @instanceProperty "lightModelTwoSided"
  @instanceProperty "material"
  @instanceProperty "lightModelAmbientColor"
  @instanceProperty "light0"
  @instanceProperty "light1"
  @instanceProperty "light2"

  # Configuring Textures
  @instanceProperty "texturingEnabled"
  @instanceProperty "texture2d0"
  @instanceProperty "texture2d1"
  @instanceProperty "textureOrder"

  # Configuring Fog
  @instanceProperty "fog"

  # Configuring Color Information
  @instanceProperty "colorMaterialEnabled"
  @instanceProperty "useConstantColor"
  @instanceProperty "constantColor"

  # Preparing the Effect for Drawing
  prepareToDraw: @nativeSelector "prepareToDraw"

  @register()
