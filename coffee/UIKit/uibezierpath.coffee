# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIBezierPath"
class UIBezierPath extends foundation.NSObject

  # Creating a UIBezierPath Object
  bezierPath: objc.invokeSelector "bezierPath"
  bezierPathWithRect: objc.invokeSelector "bezierPathWithRect:"
  bezierPathWithOvalInRect: objc.invokeSelector "bezierPathWithOvalInRect:"
  bezierPathWithRoundedRect: objc.invokeSelector "bezierPathWithRoundedRect:cornerRadius:"
  bezierPathWithRoundedRectByRoundingCorners: objc.invokeSelector "bezierPathWithRoundedRect:byRoundingCorners:cornerRadii:"
  bezierPathWithArc: objc.invokeSelector "bezierPathWithArcCenter:radius:startAngle:endAngle:clockwise:"
  bezierPathWithCGPath: objc.invokeSelector "bezierPathWithCGPath:"

  # Constructing a Path
  moveToPoint: objc.invokeSelector "moveToPoint:"
  addLineToPoint: objc.invokeSelector "addLineToPoint:"
  addArc: objc.invokeSelector "addArcWithCenter:radius:startAngle:endAngle:clockwise:"
  addCurve: objc.invokeSelector "addCurveToPoint:controlPoint1:controlPoint2:"
  addQuadCurve: objc.invokeSelector "addQuadCurveToPoint:controlPoint:"
  closePath: objc.invokeSelector "closePath"
  removeAllPoints: objc.invokeSelector "removeAllPoints"
  appendPath: objc.invokeSelector "appendPath:"
  ck.addProperty @::, "CGPath"
  ck.addProperty @::, "currentPoint"

  # Accessing Drawing Properties
  ck.addProperty @::, "lineWidth"
  ck.addProperty @::, "lineCapStyle"
  ck.addProperty @::, "lineJoinStyle"
  ck.addProperty @::, "miterLimit"
  ck.addProperty @::, "flatness"
  ck.addProperty @::, "usesEvenOddFillRule"
  setLineDash: objc.invokeSelector "setLineDash:count:phase:"
  getLineDash: objc.invokeSelector "getLineDash:count:phase:"

  # Drawing Paths
  fill: objc.invokeSelector "fill"
  fillWithBlendMode: objc.invokeSelector "fillWithBlendMode:alpha:"
  stroke: objc.invokeSelector "stroke"
  strokeWithBlendMode: objc.invokeSelector "strokeWithBlendMode:alpha:"

  # Clipping Paths
  addClip: objc.invokeSelector "addClip"

  # Hit Detection
  containsPoint: objc.invokeSelector "containsPoint:"
  ck.addProperty @::, "empty"
  ck.addProperty @::, "bounds"

  # Applying Transformations
  applyTransform: objc.invokeSelector "applyTransform:"


new ck.RegisterAttribute UIBezierPath, "UIBezierPath"
exports.UIBezierPath = UIBezierPath
 
