# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.CALayer = class CALayer extends foundation.NSObject
  # Creating a Layer
  @layer: @nativeSelector "layer"
  init: @nativeSelector("init").
             returnType( -> CALayer )
  initWithLayer: @nativeSelector("initWithLayer:").
                      returnType( -> CALayer ).
                      paramTypes( -> [ CALayer ] )


  # Accessing the Presentation Layer
  presentationLayer: @nativeSelector("presentationLayer").
                          returnType( -> CALayer )
  modelLayer: @nativeSelector("modelLayer").
                   returnType( -> CALayer )

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
                returnType( -> ck.sig.Void )
  drawInContext: @nativeSelector("drawInContext:").
                      returnType( -> ck.sig.Void ).
                      paramTypes( -> [ ck.sig.PointerTo ck.sig.CGContext ] )
  @instanceProperty "opaque"
  @instanceProperty "edgeAntialiasingMask"
  contentsAreFlipped: @nativeSelector("contentsAreFlipped").
                           returnType( -> ck.sig.Bool )
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
                    returnType( -> ck.sig.Void ).
                    paramTypes( -> [ CALayer ] )

  removeFromSuperlayer: @nativeSelector("removeFromSuperlayer").
                             returnType( -> ck.sig.Void )

  insertSublayerAtIndex: @nativeSelector("insertSublayer:atIndex:").
                              returnType( -> ck.sig.Void ).
                              paramTypes( -> [ CALayer, ck.sig.UInt ] )
  insertSublayerBelow: @nativeSelector("insertSublayer:below:").
                              returnType( -> ck.sig.Void ).
                              paramTypes( -> [ CALayer, CALayer ] )
  insertSublayerAbove: @nativeSelector("insertSublayer:above:").
                              returnType( -> ck.sig.Void ).
                              paramTypes( -> [ CALayer, CALayer ] )
  replaceSublayerWith: @nativeSelector("replaceSublayer:with:").
                              returnType( -> ck.sig.Void ).
                              paramTypes( -> [ CALayer, CALayer ] )

  # Updating Layer Display
  @instanceProperty "needsDisplay"
  @instanceProperty "needsDisplayOnBoundsChange"
  @needsDisplayForKey: @nativeSelector "needsDisplayForKey:"
  setNeedsDisplayInRect: @nativeSelector("setNeedsDisplayInRect:").
                              returnType( -> ck.sig.Void ).
                              paramTypes( -> [ foundation.NSRect ] )
  displayIfNeeded: @nativeSelector("displayIfNeeded").
                        returnType( -> ck.sig.Void )

  # Layer Animations
  addAnimation: @nativeSelector("addAnimation:forKey:").
                     returnType( -> ck.sig.Void ).
                     paramTypes( -> [ CAAnimation, ck.sig.NSString ] )

  animation: @nativeSelector("animationForKey:").
                  returnType( -> CAAnimation ).
                  paramTypes( -> [ ck.sig.NSString ] )

  removeAllAnimations: @nativeSelector("removeAllAnimations").
                            returnType( -> ck.sig.Void )

  removeAnimation: @nativeSelector("removeAnimationForKey:").
                        returnType( -> ck.sig.Void ).
                        paramTypes( -> [ ck.sig.NSString ] )

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
                           returnType( -> foundation.NSSize )
  layoutIfNeeded: @nativeSelector("layoutIfNeeded").
                       returnType( -> ck.sig.Void )
  layoutSublayers: @nativeSelector("layoutSublayers").
                        returnType( -> ck.sig.Void )

  # Actions
  @instanceProperty "actions"
  @defaultActionForKey: @nativeSelector "defaultActionForKey:"
  actionForKey: @nativeSelector("actionForKey:").
                     returnType( -> CAAction ).
                     paramTypes( -> [ ck.sig.NSString ] )

  # Mapping Between Coordinate and Time Spaces
  convertPointFromLayer: @nativeSelector("convertPoint:fromLayer:").
                              returnType( -> foundation.NSPoint ).
                              paramTypes( -> [ foundation.NSPoint, CALayer ])
  convertPointToLayer: @nativeSelector("convertPoint:toLayer:").
                            returnType( -> foundation.NSPoint ).
                            paramTypes( -> [ foundation.NSPoint, CALayer ])
  convertRectFromLayer: @nativeSelector("convertRect:fromLayer:").
                             returnType( -> foundation.NSRect ).
                             paramTypes( -> [ foundation.NSRect, CALayer ])
  convertRectToLayer: @nativeSelector("convertRect:toLayer:").
                          returnType( -> foundation.NSRect ).
                          paramTypes( -> [ foundation.NSRect, CALayer ])
  convertTimeFromLayer: @nativeSelector("convertTime:fromLayer:").
                          returnType( -> ck.sig.Double ).    # these Double's should be CFTimeInverval
                          paramTypes( -> [ ck.sig.Double, CALayer ])
  convertTimeToLayer: @nativeSelector("convertTime:toLayer:").
                           returnType( -> ck.sig.Double ).    # these Double's should be CFTimeInverval
                           paramTypes( -> [ ck.sig.Double, CALayer ])

  # Hit Testing
  hitTest: @nativeSelector("hitTest:").
                returnType( -> CALayer ).
                paramTypes( -> [ foundation.NSPoint ] )
  containsPoint: @nativeSelector("containsPoint:").
                      returnType( -> ck.sig.Bool ).
                      paramTypes( -> [ foundation.NSPoint ] )

  # Rendering
  renderInContext: @nativeSelector("renderInContext:").
                        returnType( -> ck.sig.Void ).
                        paramTypes( -> [ ck.sig.PointerTo ck.sig.CGContext ] )
  @instanceProperty "shouldRasterize"
  @instanceProperty "rasterizationScale"

  # Scrolling
  @instanceProperty "visibleRect"
  scrollPoint: @nativeSelector("scrollPoint:").
                    returnType( -> ck.sig.Void ).
                    paramTypes( -> [ foundation.NSPoint ] )
  scrollRectToVisible: @nativeSelector "scrollRectToVisible:"

  # Modifying the Delegate
  @autoboxProperty "delegate", CALayerDelegate

  # Key-Value Coding Extensions
  shouldArchiveValueForKey: @nativeSelector("shouldArchiveValueForKey:").
                                 returnType( -> ck.sig.Bool ).
                                 paramTypes( -> [ ck.sig.NSString ] )
  @defaultValueForKey: @nativeSelector "defaultValueForKey:"

  @register()
