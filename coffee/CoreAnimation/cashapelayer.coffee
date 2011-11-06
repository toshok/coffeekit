# This file is part of coffeekit.  for licensing information, see the LICENSE file

class CAShapeLayer extends CALayer

  constructor: (handle) -> super (if handle then handle else objc.createInstance (@.constructor.name))

  # Specifying the Shape Path
  ck.addProperty @::, "path"

  # Accessing Shape Style Properties
  ck.addProperty @::, "fillColor"
  ck.addProperty @::, "fillRule"
  ck.addProperty @::, "lineCap"
  ck.addProperty @::, "lineDashPattern"
  ck.addProperty @::, "lineDashPhase"
  ck.addProperty @::, "lineJoin"
  ck.addProperty @::, "lineWidth"
  ck.addProperty @::, "miterLimit"
  ck.addProperty @::, "strokeColor"
  ck.addProperty @::, "strokeStart"
  ck.addProperty @::, "strokeEnd"

new ck.RegisterAttribute CAShapeLayer, "CAShapeLayer"
exports.CAShapeLayer = CAShapeLayer