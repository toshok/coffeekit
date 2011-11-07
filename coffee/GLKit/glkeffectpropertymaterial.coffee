# This file is part of coffeekit.  for licensing information, see the LICENSE file

class GLKEffectPropertyMaterial extends GLKEffectProperty
  constructor: (handle) -> super (if handle then handle else objc.allocInstance (@.constructor.name))

  # Material Properties
  ck.addProperty @::, "ambientColor"
  ck.addProperty @::, "diffuseColor"
  ck.addProperty @::, "emissiveColor"
  ck.addProperty @::, "shininess"
  ck.addProperty @::, "specularColor"

new ck.RegisterAttribute GLKEffectPropertyMaterial, "GLKEffectPropertyMaterial"
exports.GLKEffectPropertyMaterial = GLKEffectPropertyMaterial
