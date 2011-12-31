# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.MKOverlayPathView = class MKOverlayPathView extends MKOverlayView
  @register()

  # Accessing the Drawing Attributes
  ck.instanceProperty @, "fillColor"
  ck.instanceProperty @, "strokeColor"
  ck.instanceProperty @, "lineWidth"
  ck.instanceProperty @, "lineJoin"
  ck.instanceProperty @, "lineCap"
  ck.instanceProperty @, "miterLimit"
  ck.instanceProperty @, "lineDashPhase"
  ck.instanceProperty @, "lineDashPattern"

  # Creating and Managing the Path
  ck.instanceProperty @, "path"
  createPath: objc.invokeSelector "createPath"
  invalidatePath: objc.invokeSelector "invalidatePath"

  # Drawing the Path
  applyStrokePropertiesToContext: objc.invokeSelector "applyStrokePropertiesToContext:atZoomScale:"
  applyFillPropertiesToContext: objc.invokeSelector "applyFillPropertiesToContext:atZoomScale:"
  strokePath: objc.invokeSelector "strokePath:inContext:"
  fillPath: objc.invokeSelector "fillPath:inContext:"
