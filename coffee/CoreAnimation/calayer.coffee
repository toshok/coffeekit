# This file is part of coffeekit.  for licensing information, see the LICENSE file

class CALayer extends foundation.NSObject

  # Creating a Layer
  @layer: objc.invokeSelector "layer"
  init: objc.invokeSelector "init"
  initWithLayer: objc.invokeSelector "initWithLayer:"

  # Accessing the Presentation Layer
  presentationLayer: objc.invokeSelector "presentationLayer"
  modelLayer: objc.invokeSelector "modelLayer"

  # Modifying the Layer Geometry
  ck.addProperty @::, "frame"
  ck.addProperty @::, "bounds"
  ck.addProperty @::, "position"
  ck.addProperty @::, "zPosition"
  ck.addProperty @::, "anchorPointZ"
  ck.addProperty @::, "anchorPoint"
  ck.addProperty @::, "contentsScale"
  affineTransform: objc.invokeSelector "affineTransform"
  setAffineTransform: objc.invokeSelector "setAffineTransform:"
  ck.addProperty @::, "transform"
  ck.addProperty @::, "sublayerTransform"

  # Providing Layer Content
  ck.addProperty @::, "contents"
  ck.addProperty @::, "contentsRect"
  ck.addProperty @::, "contentsCenter"
  display: objc.invokeSelector "display"
  displayLayer: objc.invokeSelector "displayLayer:"  # delegate method
  drawInContext: objc.invokeSelector "drawInContext:"
  drawLayer: objc.invokeSelector "drawLayer:inContext:"  # delegate method
  ck.addProperty @::, "opaque"
  ck.addProperty @::, "edgeAntialiasingMask"
  contentsAreFlipped: objc.invokeSelector "contentsAreFlipped"
  ck.addProperty @::, "geometryFlipped"

  # Style Attributes
  ck.addProperty @::, "contentsGravity"
  ck.addProperty @::, "opacity"
  ck.addProperty @::, "hidden"
  ck.addProperty @::, "masksToBounds"
  ck.addProperty @::, "doubleSided"
  ck.addProperty @::, "mask"
  ck.addProperty @::, "cornerRadius"
  ck.addProperty @::, "borderWidth"
  ck.addProperty @::, "borderColor"
  ck.addProperty @::, "backgroundColor"
  ck.addProperty @::, "backgroundFilters"
  ck.addProperty @::, "shadowOpacity"
  ck.addProperty @::, "shadowRadius"
  ck.addProperty @::, "shadowOffset"
  ck.addProperty @::, "shadowColor"
  ck.addProperty @::, "shadowPath"
  ck.addProperty @::, "filters"
  ck.addProperty @::, "compositingFilter"
  ck.addProperty @::, "style"
  ck.addProperty @::, "minificationFilter"
  ck.addProperty @::, "minificationFilterBias"
  ck.addProperty @::, "magnificationFilter"

  # Managing the Layer Hierarchy
  ck.addProperty @::, "sublayers"
  ck.addProperty @::, "superlayer"
  addSublayer: objc.invokeSelector "addSublayer:"
  removeFromSuperlayer: objc.invokeSelector "removeFromSuperlayer"
  insertSublayerAtIndex: objc.invokeSelector "insertSublayer:atIndex:"
  insertSublayerBelow: objc.invokeSelector "insertSublayer:below:"
  insertSublayerAbove: objc.invokeSelector "insertSublayer:above:"
  replaceSublayerWith: objc.invokeSelector "replaceSublayer:with:"

  # Updating Layer Display
  setNeedsDisplay: objc.invokeSelector "setNeedsDisplay"
  ck.addProperty @::, "needsDisplayOnBoundsChange"
  displayIfNeeded: objc.invokeSelector "displayIfNeeded"
  needsDisplay: objc.invokeSelector "needsDisplay"
  @needsDisplayForKey: objc.invokeSelector "needsDisplayForKey:"
  setNeedsDisplayInRect: objc.invokeSelector "setNeedsDisplayInRect:"

  # Layer Animations
  addAnimation: objc.invokeSelector "addAnimation:forKey:"
  animation: objc.invokeSelector "animationForKey:"
  removeAllAnimations: objc.invokeSelector "removeAllAnimations"
  removeAnimation: objc.invokeSelector "removeAnimationForKey:"
  animationKeys: objc.invokeSelector "animationKeys"

  # Managing Layer Resizing and Layout
  ck.addProperty @::, "layoutManager"
  ck.addProperty @::, "needsLayout"
  ck.addProperty @::, "constraints"
  ck.addProperty @::, "name"
  ck.addProperty @::, "autoresizingMask"
  addConstraint: objc.invokeSelector "addConstraint:"
  resizeWithOldSuperlayerSize: objc.invokeSelector "resizeWithOldSuperlayerSize:"
  resizeSublayersWithOldSize: objc.invokeSelector "resizeSublayersWithOldSize:"
  preferredFrameSize: objc.invokeSelector "preferredFrameSize"
  layoutIfNeeded: objc.invokeSelector "layoutIfNeeded"
  layoutSublayers: objc.invokeSelector "layoutSublayers"

  # Actions
  ck.addProperty @::, "actions"
  @defaultActionForKey: objc.invokeSelector "defaultActionForKey:"
  actionForKey: objc.invokeSelector "actionForKey:"
  actionForLayer: objc.invokeSelector "actionForLayer:forKey:"  # delegate method

  # Mapping Between Coordinate and Time Spaces
  convertPointFromLayer: objc.invokeSelector "convertPoint:fromLayer:"
  convertPointToLayer: objc.invokeSelector "convertPoint:toLayer:"
  convertRectFromLayer: objc.invokeSelector "convertRect:fromLayer:"
  convertRectToLayer: objc.invokeSelector "convertRect:toLayer:"
  convertTimeFromLayer: objc.invokeSelector "convertTime:fromLayer:"
  convertTimeToLayer: objc.invokeSelector "convertTime:toLayer:"

  # Hit Testing
  hitTest: objc.invokeSelector "hitTest:"
  containsPoint: objc.invokeSelector "containsPoint:"

  # Rendering
  renderInContext: objc.invokeSelector "renderInContext:"
  ck.addProperty @::, "shouldRasterize"
  ck.addProperty @::, "rasterizationScale"

  # Scrolling
  ck.addProperty @::, "visibleRect"
  scrollPoint: objc.invokeSelector "scrollPoint:"
  scrollRectToVisible: objc.invokeSelector "scrollRectToVisible:"

  # Modifying the Delegate
  ck.addProperty @::, "delegate"

  # Key-Value Coding Extensions
  shouldArchiveValueForKey: objc.invokeSelector "shouldArchiveValueForKey:"
  @defaultValueForKey: objc.invokeSelector "defaultValueForKey:"

new ck.RegisterAttribute CALayer, "CALayer"
exports.CALayer = CALayer