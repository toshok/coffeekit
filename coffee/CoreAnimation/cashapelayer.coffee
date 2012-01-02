# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.CAShapeLayer = class CAShapeLayer extends CALayer
  # Specifying the Shape Path
  @instanceProperty "path"

  # Accessing Shape Style Properties
  @instanceProperty "fillColor"
  @instanceProperty "fillRule"
  @instanceProperty "lineCap"
  @instanceProperty "lineDashPattern"
  @instanceProperty "lineDashPhase"
  @instanceProperty "lineJoin"
  @instanceProperty "lineWidth"
  @instanceProperty "miterLimit"
  @instanceProperty "strokeColor"
  @instanceProperty "strokeStart"
  @instanceProperty "strokeEnd"

  @register()
