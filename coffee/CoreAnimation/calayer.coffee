# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.CALayer = class CALayer extends foundation.NSObject
  # Creating a Layer
  @layer: @nativeSelector "layer"
  init: @nativeSelector "init"
  initWithLayer: @nativeSelector "initWithLayer:"

  # Accessing the Presentation Layer
  presentationLayer: @nativeSelector "presentationLayer"
  modelLayer: @nativeSelector "modelLayer"

  # Modifying the Layer Geometry
  @instanceProperty "frame"
  @instanceProperty "bounds"
  @instanceProperty "position"
  @instanceProperty "zPosition"
  @instanceProperty "anchorPointZ"
  @instanceProperty "anchorPoint"
  @instanceProperty "contentsScale"
  affineTransform: @nativeSelector "affineTransform"
  setAffineTransform: @nativeSelector "setAffineTransform:"
  @instanceProperty "transform"
  @instanceProperty "sublayerTransform"

  # Providing Layer Content
  @instanceProperty "contents"
  @instanceProperty "contentsRect"
  @instanceProperty "contentsCenter"
  display: @nativeSelector "display"
  drawInContext: @nativeSelector "drawInContext:"
  @instanceProperty "opaque"
  @instanceProperty "edgeAntialiasingMask"
  contentsAreFlipped: @nativeSelector "contentsAreFlipped"
  @instanceProperty "geometryFlipped"

  # Style Attributes
  @instanceProperty "contentsGravity"
  @instanceProperty "opacity"
  @instanceProperty "hidden"
  @instanceProperty "masksToBounds"
  @instanceProperty "doubleSided"
  @instanceProperty "mask"
  @instanceProperty "cornerRadius"
  @instanceProperty "borderWidth"
  @instanceProperty "borderColor"
  @instanceProperty "backgroundColor"
  @instanceProperty "backgroundFilters"
  @instanceProperty "shadowOpacity"
  @instanceProperty "shadowRadius"
  @instanceProperty "shadowOffset"
  @instanceProperty "shadowColor"
  @instanceProperty "shadowPath"
  @instanceProperty "filters"
  @instanceProperty "compositingFilter"
  @instanceProperty "style"
  @instanceProperty "minificationFilter"
  @instanceProperty "minificationFilterBias"
  @instanceProperty "magnificationFilter"

  # Managing the Layer Hierarchy
  @instanceProperty "sublayers"
  @instanceProperty "superlayer"
  addSublayer: @nativeSelector "addSublayer:"
  removeFromSuperlayer: @nativeSelector "removeFromSuperlayer"
  insertSublayerAtIndex: @nativeSelector "insertSublayer:atIndex:"
  insertSublayerBelow: @nativeSelector "insertSublayer:below:"
  insertSublayerAbove: @nativeSelector "insertSublayer:above:"
  replaceSublayerWith: @nativeSelector "replaceSublayer:with:"

  # Updating Layer Display
  setNeedsDisplay: @nativeSelector "setNeedsDisplay"
  @instanceProperty "needsDisplayOnBoundsChange"
  displayIfNeeded: @nativeSelector "displayIfNeeded"
  needsDisplay: @nativeSelector "needsDisplay"
  @needsDisplayForKey: @nativeSelector "needsDisplayForKey:"
  setNeedsDisplayInRect: @nativeSelector "setNeedsDisplayInRect:"

  # Layer Animations
  addAnimation: @nativeSelector "addAnimation:forKey:"
  animation: @nativeSelector "animationForKey:"
  removeAllAnimations: @nativeSelector "removeAllAnimations"
  removeAnimation: @nativeSelector "removeAnimationForKey:"
  animationKeys: @nativeSelector "animationKeys"

  # Managing Layer Resizing and Layout
  @instanceProperty "layoutManager"
  @instanceProperty "needsLayout"
  @instanceProperty "constraints"
  @instanceProperty "name"
  @instanceProperty "autoresizingMask"
  addConstraint: @nativeSelector "addConstraint:"
  resizeWithOldSuperlayerSize: @nativeSelector "resizeWithOldSuperlayerSize:"
  resizeSublayersWithOldSize: @nativeSelector "resizeSublayersWithOldSize:"
  preferredFrameSize: @nativeSelector "preferredFrameSize"
  layoutIfNeeded: @nativeSelector "layoutIfNeeded"
  layoutSublayers: @nativeSelector "layoutSublayers"

  # Actions
  @instanceProperty "actions"
  @defaultActionForKey: @nativeSelector "defaultActionForKey:"
  actionForKey: @nativeSelector "actionForKey:"

  # Mapping Between Coordinate and Time Spaces
  convertPointFromLayer: @nativeSelector "convertPoint:fromLayer:"
  convertPointToLayer: @nativeSelector "convertPoint:toLayer:"
  convertRectFromLayer: @nativeSelector "convertRect:fromLayer:"
  convertRectToLayer: @nativeSelector "convertRect:toLayer:"
  convertTimeFromLayer: @nativeSelector "convertTime:fromLayer:"
  convertTimeToLayer: @nativeSelector "convertTime:toLayer:"

  # Hit Testing
  hitTest: @nativeSelector "hitTest:"
  containsPoint: @nativeSelector "containsPoint:"

  # Rendering
  renderInContext: @nativeSelector "renderInContext:"
  @instanceProperty "shouldRasterize"
  @instanceProperty "rasterizationScale"

  # Scrolling
  @instanceProperty "visibleRect"
  scrollPoint: @nativeSelector "scrollPoint:"
  scrollRectToVisible: @nativeSelector "scrollRectToVisible:"

  # Modifying the Delegate
  @autoboxProperty "delegate", CALayerDelegate

  # Key-Value Coding Extensions
  shouldArchiveValueForKey: @nativeSelector "shouldArchiveValueForKey:"
  @defaultValueForKey: @nativeSelector "defaultValueForKey:"

  @register()
