# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.CAEAGLLayer = class CAEAGLLayer extends CALayer
  @register()

  # Accessing the Layer Properties
  ck.instanceProperty @, "drawableProperties"
