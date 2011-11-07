class GLKBaseEffect extends foundation.NSObject
  constructor: (handle) -> super (if handle then handle else objc.allocInstance (@.constructor.name))

  # Naming the Effect
  ck.addProperty @::, "label"

  # Configuring the Modelview Transform
  ck.addProperty @::, "transform"

  # Configuring Lights
  ck.addProperty @::, "lightingType"
  ck.addProperty @::, "lightModelTwoSided"
  ck.addProperty @::, "material"
  ck.addProperty @::, "lightModelAmbientColor"
  ck.addProperty @::, "light0"
  ck.addProperty @::, "light1"
  ck.addProperty @::, "light2"

  # Configuring Textures
  ck.addProperty @::, "texturingEnabled"
  ck.addProperty @::, "texture2d0"
  ck.addProperty @::, "texture2d1"
  ck.addProperty @::, "textureOrder"

  # Configuring Fog
  ck.addProperty @::, "fog"

  # Configuring Color Information
  ck.addProperty @::, "colorMaterialEnabled"
  ck.addProperty @::, "useConstantColor"
  ck.addProperty @::, "constantColor"

  # Preparing the Effect for Drawing
  prepareToDraw: objc.invokeSelector ("prepareToDraw")

new ck.MixinProtocolAttribute GLKBaseEffect, GLKNamedEffect
new ck.RegisterAttribute GLKBaseEffect, "GLKBaseEffect"
exports.GLKBaseEffect = GLKBaseEffect
