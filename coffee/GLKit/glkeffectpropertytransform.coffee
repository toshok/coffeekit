# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.GLKEffectPropertyTransform = class GLKEffectPropertyTransform extends GLKEffectProperty
  # Configuring Modelview Properties
  @instanceProperty "modelviewMatrix"
  @instanceProperty "normalMatrix"

  # Configuring the Projection Matrix
  @instanceProperty "projectionMatrix"

  # Configuring the Transform Matrix
  @instanceProperty "transformMatrix"

  @register()
