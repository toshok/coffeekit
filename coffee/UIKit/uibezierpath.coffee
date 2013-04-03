# This file is part of coffeekit.  for licensing information, see the LICENSE file

console.log "UIBezierPath"
exports.UIBezierPath = class UIBezierPath extends foundation.NSObject
  # Creating a UIBezierPath Object
  bezierPath:                                 @nativeSelector "bezierPath"
  bezierPathWithRect:                         @nativeSelector "bezierPathWithRect:"
  bezierPathWithOvalInRect:                   @nativeSelector "bezierPathWithOvalInRect:"
  bezierPathWithRoundedRect:                  @nativeSelector "bezierPathWithRoundedRect:cornerRadius:"
  bezierPathWithRoundedRectByRoundingCorners: @nativeSelector "bezierPathWithRoundedRect:byRoundingCorners:cornerRadii:"
  bezierPathWithArc:                          @nativeSelector "bezierPathWithArcCenter:radius:startAngle:endAngle:clockwise:"
  bezierPathWithCGPath:                       @nativeSelector "bezierPathWithCGPath:"

  # Constructing a Path
  moveToPoint:      @nativeSelector "moveToPoint:"
  addLineToPoint:   @nativeSelector "addLineToPoint:"
  addArc:           @nativeSelector "addArcWithCenter:radius:startAngle:endAngle:clockwise:"
  addCurve:         @nativeSelector "addCurveToPoint:controlPoint1:controlPoint2:"
  addQuadCurve:     @nativeSelector "addQuadCurveToPoint:controlPoint:"
  closePath:        @nativeSelector "closePath"
  removeAllPoints:  @nativeSelector "removeAllPoints"
  appendPath:       @nativeSelector "appendPath:"
  @instanceProperty "CGPath"
  @instanceProperty "currentPoint"

  # Accessing Drawing Properties
  @instanceProperty "lineWidth"
  @instanceProperty "lineCapStyle"
  @instanceProperty "lineJoinStyle"
  @instanceProperty "miterLimit"
  @instanceProperty "flatness"
  @instanceProperty "usesEvenOddFillRule"
  setLineDash:      @nativeSelector "setLineDash:count:phase:"
  getLineDash:      @nativeSelector "getLineDash:count:phase:"

  # Drawing Paths
  fill:                @nativeSelector "fill"
  fillWithBlendMode:   @nativeSelector "fillWithBlendMode:alpha:"
  stroke:              @nativeSelector "stroke"
  strokeWithBlendMode: @nativeSelector "strokeWithBlendMode:alpha:"

  # Clipping Paths
  addClip:             @nativeSelector "addClip"

  # Hit Detection
  containsPoint:    @nativeSelector "containsPoint:"
  @instanceProperty "empty"
  @instanceProperty "bounds"

  # Applying Transformations
  applyTransform:   @nativeSelector "applyTransform:"
 
  @register()
