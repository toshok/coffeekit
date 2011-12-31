# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.GLKEffectPropertyTransform = class GLKEffectPropertyTransform extends GLKEffectProperty
  @register()

  # Configuring Modelview Properties
  ck.instanceProperty @, "modelviewMatrix"
  ck.instanceProperty @, "normalMatrix"

  # Configuring the Projection Matrix
  ck.instanceProperty @, "projectionMatrix"

  # Configuring the Transform Matrix
  ck.instanceProperty @, "transformMatrix"
