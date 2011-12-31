# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.CALayer = class CALayer extends foundation.NSObject
  @register()

  # Creating a Layer
  @layer: objc.invokeSelector "layer"
  init: objc.invokeSelector "init"
  initWithLayer: objc.invokeSelector "initWithLayer:"

  # Accessing the Presentation Layer
  presentationLayer: objc.invokeSelector "presentationLayer"
  modelLayer: objc.invokeSelector "modelLayer"

  # Modifying the Layer Geometry
  ck.instanceProperty @, "frame"
  ck.instanceProperty @, "bounds"
  ck.instanceProperty @, "position"
  ck.instanceProperty @, "zPosition"
  ck.instanceProperty @, "anchorPointZ"
  ck.instanceProperty @, "anchorPoint"
  ck.instanceProperty @, "contentsScale"
  affineTransform: objc.invokeSelector "affineTransform"
  setAffineTransform: objc.invokeSelector "setAffineTransform:"
  ck.instanceProperty @, "transform"
  ck.instanceProperty @, "sublayerTransform"

  # Providing Layer Content
  ck.instanceProperty @, "contents"
  ck.instanceProperty @, "contentsRect"
  ck.instanceProperty @, "contentsCenter"
  display: objc.invokeSelector "display"
  drawInContext: objc.invokeSelector "drawInContext:"
  ck.instanceProperty @, "opaque"
  ck.instanceProperty @, "edgeAntialiasingMask"
  contentsAreFlipped: objc.invokeSelector "contentsAreFlipped"
  ck.instanceProperty @, "geometryFlipped"

  # Style Attributes
  ck.instanceProperty @, "contentsGravity"
  ck.instanceProperty @, "opacity"
  ck.instanceProperty @, "hidden"
  ck.instanceProperty @, "masksToBounds"
  ck.instanceProperty @, "doubleSided"
  ck.instanceProperty @, "mask"
  ck.instanceProperty @, "cornerRadius"
  ck.instanceProperty @, "borderWidth"
  ck.instanceProperty @, "borderColor"
  ck.instanceProperty @, "backgroundColor"
  ck.instanceProperty @, "backgroundFilters"
  ck.instanceProperty @, "shadowOpacity"
  ck.instanceProperty @, "shadowRadius"
  ck.instanceProperty @, "shadowOffset"
  ck.instanceProperty @, "shadowColor"
  ck.instanceProperty @, "shadowPath"
  ck.instanceProperty @, "filters"
  ck.instanceProperty @, "compositingFilter"
  ck.instanceProperty @, "style"
  ck.instanceProperty @, "minificationFilter"
  ck.instanceProperty @, "minificationFilterBias"
  ck.instanceProperty @, "magnificationFilter"

  # Managing the Layer Hierarchy
  ck.instanceProperty @, "sublayers"
  ck.instanceProperty @, "superlayer"
  addSublayer: objc.invokeSelector "addSublayer:"
  removeFromSuperlayer: objc.invokeSelector "removeFromSuperlayer"
  insertSublayerAtIndex: objc.invokeSelector "insertSublayer:atIndex:"
  insertSublayerBelow: objc.invokeSelector "insertSublayer:below:"
  insertSublayerAbove: objc.invokeSelector "insertSublayer:above:"
  replaceSublayerWith: objc.invokeSelector "replaceSublayer:with:"

  # Updating Layer Display
  setNeedsDisplay: objc.invokeSelector "setNeedsDisplay"
  ck.instanceProperty @, "needsDisplayOnBoundsChange"
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
  ck.instanceProperty @, "layoutManager"
  ck.instanceProperty @, "needsLayout"
  ck.instanceProperty @, "constraints"
  ck.instanceProperty @, "name"
  ck.instanceProperty @, "autoresizingMask"
  addConstraint: objc.invokeSelector "addConstraint:"
  resizeWithOldSuperlayerSize: objc.invokeSelector "resizeWithOldSuperlayerSize:"
  resizeSublayersWithOldSize: objc.invokeSelector "resizeSublayersWithOldSize:"
  preferredFrameSize: objc.invokeSelector "preferredFrameSize"
  layoutIfNeeded: objc.invokeSelector "layoutIfNeeded"
  layoutSublayers: objc.invokeSelector "layoutSublayers"

  # Actions
  ck.instanceProperty @, "actions"
  @defaultActionForKey: objc.invokeSelector "defaultActionForKey:"
  actionForKey: objc.invokeSelector "actionForKey:"

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
  ck.instanceProperty @, "shouldRasterize"
  ck.instanceProperty @, "rasterizationScale"

  # Scrolling
  ck.instanceProperty @, "visibleRect"
  scrollPoint: objc.invokeSelector "scrollPoint:"
  scrollRectToVisible: objc.invokeSelector "scrollRectToVisible:"

  # Modifying the Delegate
  ck.instanceProperty @, "delegate", { set: (v) -> objc.invokeSelector("setDelegate:").call this, (ck.autobox v, CALayerDelegate) }

  # Key-Value Coding Extensions
  shouldArchiveValueForKey: objc.invokeSelector "shouldArchiveValueForKey:"
  @defaultValueForKey: objc.invokeSelector "defaultValueForKey:"
