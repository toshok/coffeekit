# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.GLKBaseEffect = class GLKBaseEffect extends foundation.NSObject
  @register()
  @mixinProtocol GLKNamedEffect

  # Naming the Effect
  ck.instanceProperty @, "label"

  # Configuring the Modelview Transform
  ck.instanceProperty @, "transform"

  # Configuring Lights
  ck.instanceProperty @, "lightingType"
  ck.instanceProperty @, "lightModelTwoSided"
  ck.instanceProperty @, "material"
  ck.instanceProperty @, "lightModelAmbientColor"
  ck.instanceProperty @, "light0"
  ck.instanceProperty @, "light1"
  ck.instanceProperty @, "light2"

  # Configuring Textures
  ck.instanceProperty @, "texturingEnabled"
  ck.instanceProperty @, "texture2d0"
  ck.instanceProperty @, "texture2d1"
  ck.instanceProperty @, "textureOrder"

  # Configuring Fog
  ck.instanceProperty @, "fog"

  # Configuring Color Information
  ck.instanceProperty @, "colorMaterialEnabled"
  ck.instanceProperty @, "useConstantColor"
  ck.instanceProperty @, "constantColor"

  # Preparing the Effect for Drawing
  prepareToDraw: objc.invokeSelector "prepareToDraw"
