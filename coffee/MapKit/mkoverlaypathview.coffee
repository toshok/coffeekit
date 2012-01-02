# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.MKOverlayPathView = class MKOverlayPathView extends MKOverlayView
  # Accessing the Drawing Attributes
  @instanceProperty "fillColor"
  @instanceProperty "strokeColor"
  @instanceProperty "lineWidth"
  @instanceProperty "lineJoin"
  @instanceProperty "lineCap"
  @instanceProperty "miterLimit"
  @instanceProperty "lineDashPhase"
  @instanceProperty "lineDashPattern"

  # Creating and Managing the Path
  @instanceProperty "path"
  createPath: @nativeSelector "createPath"
  invalidatePath: @nativeSelector "invalidatePath"

  # Drawing the Path
  applyStrokePropertiesToContext: @nativeSelector "applyStrokePropertiesToContext:atZoomScale:"
  applyFillPropertiesToContext: @nativeSelector "applyFillPropertiesToContext:atZoomScale:"
  strokePath: @nativeSelector "strokePath:inContext:"
  fillPath: @nativeSelector "fillPath:inContext:"

  @register()
