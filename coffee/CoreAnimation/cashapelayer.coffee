class CAShapeLayer extends CALayer

  constructor: (handle) -> super (if handle then handle else objc.createInstance (@.constructor.name))

  # Specifying the Shape Path
  ck.objcProperty @::, "path"

  # Accessing Shape Style Properties
  ck.objcProperty @::, "fillColor"
  ck.objcProperty @::, "fillRule"
  ck.objcProperty @::, "lineCap"
  ck.objcProperty @::, "lineDashPattern"
  ck.objcProperty @::, "lineDashPhase"
  ck.objcProperty @::, "lineJoin"
  ck.objcProperty @::, "lineWidth"
  ck.objcProperty @::, "miterLimit"
  ck.objcProperty @::, "strokeColor"
  ck.objcProperty @::, "strokeStart"
  ck.objcProperty @::, "strokeEnd"

new ck.RegisterAttribute CAShapeLayer, "CAShapeLayer"
exports.CAShapeLayer = CAShapeLayer