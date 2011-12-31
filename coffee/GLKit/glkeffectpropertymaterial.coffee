# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.GLKEffectPropertyMaterial = class GLKEffectPropertyMaterial extends GLKEffectProperty
  @register()

  # Material Properties
  ck.instanceProperty @, "ambientColor"
  ck.instanceProperty @, "diffuseColor"
  ck.instanceProperty @, "emissiveColor"
  ck.instanceProperty @, "shininess"
  ck.instanceProperty @, "specularColor"
