# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.CATransformLayer = class CATransformLayer extends CALayer
  # Hit Testing
  hitTest: @nativeSelector "hitTest:"

  @register()
