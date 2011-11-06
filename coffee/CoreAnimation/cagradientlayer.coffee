# This file is part of coffeekit.  for licensing information, see the LICENSE file

class CAGradientLayer extends CALayer

  constructor: (handle) -> super (if handle then handle else objc.createInstance (@.constructor.name))

  # Gradient Style Properties
  ck.addProperty @::, "colors"
  ck.addProperty @::, "locations"
  ck.addProperty @::, "endPoint"
  ck.addProperty @::, "startPoint"
  ck.addProperty @::, "type"

new ck.RegisterAttribute CAGradientLayer, "CAGradientLayer"
exports.CAGradientLayer = CAGradientLayer