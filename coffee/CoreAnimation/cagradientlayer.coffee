class CAGradientLayer extends CALayer

  constructor: (handle) -> super (if handle then handle else objc.createInstance (@.constructor.name))

  # Gradient Style Properties
  ck.objcProperty @::, "colors"
  ck.objcProperty @::, "locations"
  ck.objcProperty @::, "endPoint"
  ck.objcProperty @::, "startPoint"
  ck.objcProperty @::, "type"

new ck.RegisterAttribute CAGradientLayer, "CAGradientLayer"
exports.CAGradientLayer = CAGradientLayer