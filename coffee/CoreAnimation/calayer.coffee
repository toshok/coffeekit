# This file is part of coffeekit.  for licensing information, see the LICENSE file

class CALayer extends NSObject

  # Creating a Layer
  @layer: objc.generateFunctionFromSelector ("layer")
  init: objc.generateFunctionFromSelector ("init")
  initWithLayer: objc.generateFunctionFromSelector ("initWithLayer:")

  # Accessing the Presentation Layer
  presentationLayer: objc.generateFunctionFromSelector ("presentationLayer")
  modelLayer: objc.generateFunctionFromSelector ("modelLayer")

  # Modifying the Layer Geometry
  ck.objcProperty @::, "frame"
  ck.objcProperty @::, "bounds"
  ck.objcProperty @::, "position"
  ck.objcProperty @::, "zPosition"
  ck.objcProperty @::, "anchorPointZ"
  ck.objcProperty @::, "anchorPoint"
  ck.objcProperty @::, "contentsScale"
  affineTransform: objc.generateFunctionFromSelector ("affineTransform")
  setAffineTransform: objc.generateFunctionFromSelector ("setAffineTransform:")
  ck.objcProperty @::, "transform"
  ck.objcProperty @::, "sublayerTransform"

  # Providing Layer Content
  ck.objcProperty @::, "contents"
  ck.objcProperty @::, "contentsRect"
  ck.objcProperty @::, "contentsCenter"
  display: objc.generateFunctionFromSelector ("display")
  displayLayer: objc.generateFunctionFromSelector ("displayLayer:")  # delegate method
  drawInContext: objc.generateFunctionFromSelector ("drawInContext:")
  drawLayer: objc.generateFunctionFromSelector ("drawLayer:inContext:")  # delegate method
  ck.objcProperty @::, "opaque"
  ck.objcProperty @::, "edgeAntialiasingMask"
  contentsAreFlipped: objc.generateFunctionFromSelector ("contentsAreFlipped")
  ck.objcProperty @::, "geometryFlipped"

  # Style Attributes
  ck.objcProperty @::, "contentsGravity"
  ck.objcProperty @::, "opacity"
  ck.objcProperty @::, "hidden"
  ck.objcProperty @::, "masksToBounds"
  ck.objcProperty @::, "doubleSided"
  ck.objcProperty @::, "mask"
  ck.objcProperty @::, "cornerRadius"
  ck.objcProperty @::, "borderWidth"
  ck.objcProperty @::, "borderColor"
  ck.objcProperty @::, "backgroundColor"
  ck.objcProperty @::, "backgroundFilters"
  ck.objcProperty @::, "shadowOpacity"
  ck.objcProperty @::, "shadowRadius"
  ck.objcProperty @::, "shadowOffset"
  ck.objcProperty @::, "shadowColor"
  ck.objcProperty @::, "shadowPath"
  ck.objcProperty @::, "filters"
  ck.objcProperty @::, "compositingFilter"
  ck.objcProperty @::, "style"
  ck.objcProperty @::, "minificationFilter"
  ck.objcProperty @::, "minificationFilterBias"
  ck.objcProperty @::, "magnificationFilter"

  # Managing the Layer Hierarchy
  ck.objcProperty @::, "sublayers"
  ck.objcProperty @::, "superlayer"
  addSublayer: objc.generateFunctionFromSelector ("addSublayer:")
  removeFromSuperlayer: objc.generateFunctionFromSelector ("removeFromSuperlayer")
  insertSublayerAtIndex: objc.generateFunctionFromSelector ("insertSublayer:atIndex:")
  insertSublayerBelow: objc.generateFunctionFromSelector ("insertSublayer:below:")
  insertSublayerAbove: objc.generateFunctionFromSelector ("insertSublayer:above:")
  replaceSublayerWith: objc.generateFunctionFromSelector ("replaceSublayer:with:")

  # Updating Layer Display
  setNeedsDisplay: objc.generateFunctionFromSelector ("setNeedsDisplay")
  ck.objcProperty @::, "needsDisplayOnBoundsChange"
  displayIfNeeded: objc.generateFunctionFromSelector ("displayIfNeeded")
  needsDisplay: objc.generateFunctionFromSelector ("needsDisplay")
  @needsDisplayForKey: objc.generateFunctionFromSelector ("needsDisplayForKey:")
  setNeedsDisplayInRect: objc.generateFunctionFromSelector ("setNeedsDisplayInRect:")

  # Layer Animations
  addAnimation: objc.generateFunctionFromSelector ("addAnimation:forKey:")
  animation: objc.generateFunctionFromSelector ("animationForKey:")
  removeAllAnimations: objc.generateFunctionFromSelector ("removeAllAnimations")
  removeAnimation: objc.generateFunctionFromSelector ("removeAnimationForKey:")
  animationKeys: objc.generateFunctionFromSelector ("animationKeys")

  # Managing Layer Resizing and Layout
  ck.objcProperty @::, "layoutManager"
  ck.objcProperty @::, "needsLayout"
  ck.objcProperty @::, "constraints"
  ck.objcProperty @::, "name"
  ck.objcProperty @::, "autoresizingMask"
  addConstraint: objc.generateFunctionFromSelector ("addConstraint:")
  resizeWithOldSuperlayerSize: objc.generateFunctionFromSelector ("resizeWithOldSuperlayerSize:")
  resizeSublayersWithOldSize: objc.generateFunctionFromSelector ("resizeSublayersWithOldSize:")
  preferredFrameSize: objc.generateFunctionFromSelector ("preferredFrameSize")
  layoutIfNeeded: objc.generateFunctionFromSelector ("layoutIfNeeded")
  layoutSublayers: objc.generateFunctionFromSelector ("layoutSublayers")

  # Actions
  ck.objcProperty @::, "actions"
  @defaultActionForKey: objc.generateFunctionFromSelector ("defaultActionForKey:")
  actionForKey: objc.generateFunctionFromSelector ("actionForKey:")
  actionForLayer: objc.generateFunctionFromSelector ("actionForLayer:forKey:")  # delegate method

  # Mapping Between Coordinate and Time Spaces
  convertPointFromLayer: objc.generateFunctionFromSelector ("convertPoint:fromLayer:")
  convertPointToLayer: objc.generateFunctionFromSelector ("convertPoint:toLayer:")
  convertRectFromLayer: objc.generateFunctionFromSelector ("convertRect:fromLayer:")
  convertRectToLayer: objc.generateFunctionFromSelector ("convertRect:toLayer:")
  convertTimeFromLayer: objc.generateFunctionFromSelector ("convertTime:fromLayer:")
  convertTimeToLayer: objc.generateFunctionFromSelector ("convertTime:toLayer:")

  # Hit Testing
  hitTest: objc.generateFunctionFromSelector ("hitTest:")
  containsPoint: objc.generateFunctionFromSelector ("containsPoint:")

  # Rendering
  renderInContext: objc.generateFunctionFromSelector ("renderInContext:")
  ck.objcProperty @::, "shouldRasterize"
  ck.objcProperty @::, "rasterizationScale"

  # Scrolling
  ck.objcProperty @::, "visibleRect"
  scrollPoint: objc.generateFunctionFromSelector ("scrollPoint:")
  scrollRectToVisible: objc.generateFunctionFromSelector ("scrollRectToVisible:")

  # Modifying the Delegate
  ck.objcProperty @::, "delegate"

  # Key-Value Coding Extensions
  shouldArchiveValueForKey: objc.generateFunctionFromSelector ("shouldArchiveValueForKey:")
  @defaultValueForKey: objc.generateFunctionFromSelector ("defaultValueForKey:")

new ck.RegisterAttribute CALayer, "CALayer"
exports.CALayer = CALayer