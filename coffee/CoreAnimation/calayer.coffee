# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.CALayer = class CALayer extends foundation.NSObject
  # Creating a Layer
  @layer: @nativeSelector "layer"
  init: @nativeSelector("init").
                returns( -> CALayer )
  initWithLayer: @nativeSelector("initWithLayer:").
                         returns( -> CALayer ).
                          params( -> [ CALayer ] )


  # Accessing the Presentation Layer
  presentationLayer: @nativeSelector("presentationLayer").
                             returns( -> CALayer )
  modelLayer: @nativeSelector("modelLayer").
                      returns( -> CALayer )

  # Modifying the Layer Geometry
  @instanceProperty "frame"
  @instanceProperty "bounds"
  @instanceProperty "position"
  @instanceProperty "zPosition"
  @instanceProperty "anchorPointZ"
  @instanceProperty "anchorPoint"
  @instanceProperty "contentsScale"
  @instanceProperty "affineTransform"
  @instanceProperty "transform"
  @instanceProperty "sublayerTransform"

  # Providing Layer Content
  @instanceProperty "contents"
  @instanceProperty "contentsRect"
  @instanceProperty "contentsCenter"
  display: @nativeSelector("display").
                   returns( -> ck.sig.Void )
  drawInContext: @nativeSelector("drawInContext:").
                         returns( -> ck.sig.Void ).
                          params( -> [ ck.sig.PointerTo ck.sig.CGContext ] )
  @instanceProperty "opaque"
  @instanceProperty "edgeAntialiasingMask"
  contentsAreFlipped: @nativeSelector("contentsAreFlipped").
                              returns( -> ck.sig.Bool )
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
  addSublayer: @nativeSelector("addSublayer:").
                       returns( -> ck.sig.Void ).
                        params( -> [ CALayer ] )

  removeFromSuperlayer: @nativeSelector("removeFromSuperlayer").
                                returns( -> ck.sig.Void )

  insertSublayerAtIndex: @nativeSelector("insertSublayer:atIndex:").
                                 returns( -> ck.sig.Void ).
                                  params( -> [ CALayer, ck.sig.UInt ] )
  insertSublayerBelow: @nativeSelector("insertSublayer:below:").
                                 returns( -> ck.sig.Void ).
                                  params( -> [ CALayer, CALayer ] )
  insertSublayerAbove: @nativeSelector("insertSublayer:above:").
                                 returns( -> ck.sig.Void ).
                                  params( -> [ CALayer, CALayer ] )
  replaceSublayerWith: @nativeSelector("replaceSublayer:with:").
                                 returns( -> ck.sig.Void ).
                                  params( -> [ CALayer, CALayer ] )

  # Updating Layer Display
  @instanceProperty "needsDisplay"
  @instanceProperty "needsDisplayOnBoundsChange"
  @needsDisplayForKey: @nativeSelector "needsDisplayForKey:"
  setNeedsDisplayInRect: @nativeSelector("setNeedsDisplayInRect:").
                                 returns( -> ck.sig.Void ).
                                  params( -> [ foundation.NSRect ] )
  displayIfNeeded: @nativeSelector("displayIfNeeded").
                           returns( -> ck.sig.Void )

  # Layer Animations
  addAnimation: @nativeSelector("addAnimation:forKey:").
                        returns( -> ck.sig.Void ).
                         params( -> [ CAAnimation, ck.sig.NSString ] )

  animation: @nativeSelector("animationForKey:").
                     returns( -> CAAnimation ).
                      params( -> [ ck.sig.NSString ] )

  removeAllAnimations: @nativeSelector("removeAllAnimations").
                               returns( -> ck.sig.Void )

  removeAnimation: @nativeSelector("removeAnimationForKey:").
                           returns( -> ck.sig.Void ).
                            params( -> [ ck.sig.NSString ] )

  @instanceProperty "animationKeys", { set: null }

  # Managing Layer Resizing and Layout
  @instanceProperty "layoutManager"
  @instanceProperty "needsLayout"
  #@instanceProperty "constraints"                   XXX osx only
  @instanceProperty "name"
  @instanceProperty "autoresizingMask"
  #addConstraint: @nativeSelector "addConstraint:"   XXX osx only
  #resizeWithOldSuperlayerSize: @nativeSelector "resizeWithOldSuperlayerSize:"  XXX osx only
  #resizeSublayersWithOldSize: @nativeSelector "resizeSublayersWithOldSize:"    XXX osx only
  preferredFrameSize: @nativeSelector("preferredFrameSize").
                              returns( -> foundation.NSSize )
  layoutIfNeeded: @nativeSelector("layoutIfNeeded").
                          returns( -> ck.sig.Void )
  layoutSublayers: @nativeSelector("layoutSublayers").
                           returns( -> ck.sig.Void )

  # Actions
  @instanceProperty "actions"
  @defaultActionForKey: @nativeSelector "defaultActionForKey:"
  actionForKey: @nativeSelector("actionForKey:").
                        returns( -> CAAction ).
                         params( -> [ ck.sig.NSString ] )

  # Mapping Between Coordinate and Time Spaces
  convertPointFromLayer: @nativeSelector("convertPoint:fromLayer:").
                                 returns( -> foundation.NSPoint ).
                                  params( -> [ foundation.NSPoint, CALayer ])
  convertPointToLayer: @nativeSelector("convertPoint:toLayer:").
                               returns( -> foundation.NSPoint ).
                                params( -> [ foundation.NSPoint, CALayer ])
  convertRectFromLayer: @nativeSelector("convertRect:fromLayer:").
                                returns( -> foundation.NSRect ).
                                 params( -> [ foundation.NSRect, CALayer ])
  convertRectToLayer: @nativeSelector("convertRect:toLayer:").
                             returns( -> foundation.NSRect ).
                              params( -> [ foundation.NSRect, CALayer ])
  convertTimeFromLayer: @nativeSelector("convertTime:fromLayer:").
                             returns( -> ck.sig.Double ).    # these Double's should be CFTimeInverval
                              params( -> [ ck.sig.Double, CALayer ])
  convertTimeToLayer: @nativeSelector("convertTime:toLayer:").
                              returns( -> ck.sig.Double ).    # these Double's should be CFTimeInverval
                               params( -> [ ck.sig.Double, CALayer ])

  # Hit Testing
  hitTest: @nativeSelector("hitTest:").
                   returns( -> CALayer ).
                    params( -> [ foundation.NSPoint ] )
  containsPoint: @nativeSelector("containsPoint:").
                         returns( -> ck.sig.Bool ).
                          params( -> [ foundation.NSPoint ] )

  # Rendering
  renderInContext: @nativeSelector("renderInContext:").
                           returns( -> ck.sig.Void ).
                            params( -> [ ck.sig.PointerTo ck.sig.CGContext ] )
  @instanceProperty "shouldRasterize"
  @instanceProperty "rasterizationScale"

  # Scrolling
  @instanceProperty "visibleRect"
  scrollPoint: @nativeSelector("scrollPoint:").
                       returns( -> ck.sig.Void ).
                        params( -> [ foundation.NSPoint ] )
  scrollRectToVisible: @nativeSelector "scrollRectToVisible:"

  # Modifying the Delegate
  @autoboxProperty "delegate", CALayerDelegate

  # Key-Value Coding Extensions
  shouldArchiveValueForKey: @nativeSelector("shouldArchiveValueForKey:").
                                    returns( -> ck.sig.Bool ).
                                     params( -> [ ck.sig.NSString ] )
  @defaultValueForKey: @nativeSelector "defaultValueForKey:"

  @register()
