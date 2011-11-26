# This file is part of coffeekit.  for licensing information, see the LICENSE file

class MKOverlayPathView extends MKOverlayView
  constructor: (handle) -> super (if handle then handle else @.constructor.name)

  # Accessing the Drawing Attributes
  ck.addProperty @::, "fillColor"
  ck.addProperty @::, "strokeColor"
  ck.addProperty @::, "lineWidth"
  ck.addProperty @::, "lineJoin"
  ck.addProperty @::, "lineCap"
  ck.addProperty @::, "miterLimit"
  ck.addProperty @::, "lineDashPhase"
  ck.addProperty @::, "lineDashPattern"

  # Creating and Managing the Path
  ck.addProperty @::, "path"
  createPath: objc.invokeSelector ("createPath")
  invalidatePath: objc.invokeSelector ("invalidatePath")

  # Drawing the Path
  applyStrokePropertiesToContext: objc.invokeSelector ("applyStrokePropertiesToContext:atZoomScale:")
  applyFillPropertiesToContext: objc.invokeSelector ("applyFillPropertiesToContext:atZoomScale:")
  strokePath: objc.invokeSelector ("strokePath:inContext:")
  fillPath: objc.invokeSelector ("fillPath:inContext:")

new ck.RegisterAttribute MKOverlayPathView, "MKOverlayPathView"
exports.MKOverlayPathView = MKOverlayPathView
