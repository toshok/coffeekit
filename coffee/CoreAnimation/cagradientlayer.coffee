# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.CAGradientLayer = class CAGradientLayer extends CALayer
  @register()

  # Gradient Style Properties
  ck.instanceProperty @, "colors"
  ck.instanceProperty @, "locations"
  ck.instanceProperty @, "endPoint"
  ck.instanceProperty @, "startPoint"
  ck.instanceProperty @, "type"
