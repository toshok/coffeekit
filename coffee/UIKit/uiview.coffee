# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIView"
exports.UIView = class UIView extends UIResponder
  # Initializing a View Object
  initWithFrame:    @nativeSelector "initWithFrame:"

  # Configuring a View’s Visual Appearance
  @layerClass:      @nativeSelector "layerClass"
  @instanceProperty "backgroundColor"
  @instanceProperty "hidden"
  @instanceProperty "alpha"
  @instanceProperty "opaque"
  @instanceProperty "clipsToBounds"
  @instanceProperty "clearsContextBeforeDrawing"
  @instanceProperty "layer"

  # Configuring the Event-Related Behavior
  @instanceProperty "userInteractionEnabled"
  @instanceProperty "multipleTouchEnabled"
  @instanceProperty "exclusiveTouch"

  # Configuring the Bounds and Frame Rectangles
  @instanceProperty "frame"
  @instanceProperty "bounds"
  @instanceProperty "center"
  @instanceProperty "transform"

  # Configuring the Resizing Behavior
  sizeThatFits: @nativeSelector "sizeThatFits:"
  sizeToFit:    @nativeSelector "sizeToFit"
  @instanceProperty "autoresizingMask"
  @instanceProperty "autoresizesSubviews"
  @instanceProperty "contentMode"
  @instanceProperty "contentStretch"

  # Managing the View Hierarchy
  addSubview:                               @nativeSelector "addSubview:"
  bringSubviewToFront:                      @nativeSelector "bringSubviewToFront:"
  sendSubviewToBack:                        @nativeSelector "sendSubviewToBack:"
  removeFromSuperview:                      @nativeSelector "removeFromSuperview"
  insertSubviewAtIndex:                     @nativeSelector "insertSubview:atIndex:"
  insertSubviewAboveSubview:                @nativeSelector "insertSubview:aboveSubview:"
  insertSubviewBelowSubview:                @nativeSelector "insertSubview:belowSubview:"
  exchangeSubviewAtIndexWithSubviewAtIndex: @nativeSelector "exchangeSubviewAtIndex:withSubviewAtIndex:"
  isDescendantOfView:                       @nativeSelector "isDescendantOfView:"
  @instanceProperty "superview"
  @instanceProperty "subviews"
  @instanceProperty "window"

  # Laying out Subviews
  layoutSubviews: @nativeSelector "layoutSubviews"
  setNeedsLayout: @nativeSelector "setNeedsLayout"
  layoutIfNeeded: @nativeSelector "layoutIfNeeded"

  # Drawing and Updating the View
  drawRect:              @nativeSelector "drawRect:"
  setNeedsDisplay:       @nativeSelector "setNeedsDisplay"
  setNeedsDisplayInRect: @nativeSelector "setNeedsDisplayInRect:"
  @instanceProperty "contentScaleFactor"

  # Formatting Printed View Content
  viewPrintFormatter:            @nativeSelector "viewPrintFormatter"
  drawRectForViewPrintFormatter: @nativeSelector "drawRect:forViewPrintFormatter:"

  # Managing Gesture Recognizers
  addGestureRecognizer:    @nativeSelector "addGestureRecognizer:"
  removeGestureRecognizer: @nativeSelector "removeGestureRecognizer:"
  @instanceProperty "gestureRecognizers"

  # Animating Views with Blocks
  animateWithDurationDelayCompletion: @nativeSelector "animateWithDuration:delay:options:animations:completion:"
  animateWithDurationCompletion:      @nativeSelector "animateWithDuration:animations:completion:"
  animateWithDuration:                @nativeSelector "animateWithDuration:animations:"
  transitionWithViewDelayCompletion:  @nativeSelector "transitionWithView:duration:options:animations:completion:"
  transitionFromViewCompletion:       @nativeSelector "transitionFromView:toView:duration:options:completion:"

  # Animating Views
  # Use of the methods in this section is discouraged in iOS 4 and later. Use the block-based animation methods instead.

  beginAnimationsWithContext: @nativeSelector "beginAnimations:context:"
  commitAnimations:                   @nativeSelector "commitAnimations"
  setAnimationStartDate:              @nativeSelector "setAnimationStartDate:"
  setAnimationsEnabled:               @nativeSelector "setAnimationsEnabled:"
  setAnimationDelegate:               @nativeSelector "setAnimationDelegate:"
  setAnimationWillStartSelector:      @nativeSelector "setAnimationWillStartSelector:"
  setAnimationDidStopSelector:        @nativeSelector "setAnimationDidStopSelector:"
  setAnimationDuration:               @nativeSelector "setAnimationDuration:"
  setAnimationDelay:                  @nativeSelector "setAnimationDelay:"
  setAnimationCurve:                  @nativeSelector "setAnimationCurve:"
  setAnimationRepeatCount:            @nativeSelector "setAnimationRepeatCount:"
  setAnimationRepeatAutoreverses:     @nativeSelector "setAnimationRepeatAutoreverses:"
  setAnimationBeginsFromCurrentState: @nativeSelector "setAnimationBeginsFromCurrentState:"
  setAnimationTransitionForView:      @nativeSelector "setAnimationTransition:forView:cache:"
  areAnimationsEnabled:               @nativeSelector "areAnimationsEnabled"

  # Identifying the View at Runtime
  viewWithTag:          @nativeSelector "viewWithTag:"
  @instanceProperty "tag"

  # Converting Between View Coordinate Systems
  convertPointToView:   @nativeSelector "convertPoint:toView:"
  convertPointFromView: @nativeSelector "convertPoint:fromView:"
  convertRectToView:    @nativeSelector "convertRect:toView:"
  convertRectFromView:  @nativeSelector "convertRect:fromView:"

  # Hit Testing in a View
  hitTestWithEvent:     @nativeSelector "hitTest:withEvent:"
  pointInsideWithEvent: @nativeSelector "pointInside:withEvent:"

  # Ending a View Editing Session
  endEditing:           @nativeSelector "endEditing:"

  # Observing View-Related Changes
  didAddSubview:        @nativeSelector "didAddSubview:"
  willRemoveSubview:    @nativeSelector "willRemoveSubview:"
  willMoveToSuperview:  @nativeSelector "willMoveToSuperview:"
  didMoveToSuperview:   @nativeSelector "didMoveToSuperview"
  willMoveToWindow:     @nativeSelector "willMoveToWindow:"
  didMoveToWindow:      @nativeSelector "didMoveToWindow"

  @mixinProtocol UIAppearance
  @register()
