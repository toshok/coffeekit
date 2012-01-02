# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.GLKEffectPropertyMaterial = class GLKEffectPropertyMaterial extends GLKEffectProperty
  # Material Properties
  @instanceProperty "ambientColor"
  @instanceProperty "diffuseColor"
  @instanceProperty "emissiveColor"
  @instanceProperty "shininess"
  @instanceProperty "specularColor"

  @register()
