# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.CAShapeLayer = class CAShapeLayer extends CALayer
  @register()

  # Specifying the Shape Path
  ck.instanceProperty @, "path"

  # Accessing Shape Style Properties
  ck.instanceProperty @, "fillColor"
  ck.instanceProperty @, "fillRule"
  ck.instanceProperty @, "lineCap"
  ck.instanceProperty @, "lineDashPattern"
  ck.instanceProperty @, "lineDashPhase"
  ck.instanceProperty @, "lineJoin"
  ck.instanceProperty @, "lineWidth"
  ck.instanceProperty @, "miterLimit"
  ck.instanceProperty @, "strokeColor"
  ck.instanceProperty @, "strokeStart"
  ck.instanceProperty @, "strokeEnd"
