# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIView"
exports.UIView = class UIView extends UIResponder
  @register()
  @mixinProtocol UIAppearance

  # Initializing a View Object
  initWithFrame: objc.invokeSelector "initWithFrame:"

  # Configuring a View’s Visual Appearance
  ck.instanceProperty @, "backgroundColor"
  ck.instanceProperty @, "hidden"
  ck.instanceProperty @, "alpha"
  ck.instanceProperty @, "opaque"
  ck.instanceProperty @, "clipsToBounds"
  ck.instanceProperty @, "clearsContextBeforeDrawing"
  @layerClass: objc.invokeSelector "layerClass"
  ck.instanceProperty @, "layer"

  # Configuring the Event-Related Behavior
  ck.instanceProperty @, "userInteractionEnabled"
  ck.instanceProperty @, "multipleTouchEnabled"
  ck.instanceProperty @, "exclusiveTouch"

  # Configuring the Bounds and Frame Rectangles
  ck.instanceProperty @, "frame"
  ck.instanceProperty @, "bounds"
  ck.instanceProperty @, "center"
  ck.instanceProperty @, "transform"

  # Configuring the Resizing Behavior
  ck.instanceProperty @, "autoresizingMask"
  ck.instanceProperty @, "autoresizesSubviews"
  ck.instanceProperty @, "contentMode"
  ck.instanceProperty @, "contentStretch"
  sizeThatFits: objc.invokeSelector "sizeThatFits:"
  sizeToFit: objc.invokeSelector "sizeToFit"

  # Managing the View Hierarchy
  ck.instanceProperty @, "superview"
  ck.instanceProperty @, "subviews"
  ck.instanceProperty @, "window"
  addSubview: objc.invokeSelector "addSubview:"
  bringSubviewToFront: objc.invokeSelector "bringSubviewToFront:"
  sendSubviewToBack: objc.invokeSelector "sendSubviewToBack:"
  removeFromSuperview: objc.invokeSelector "removeFromSuperview"
  insertSubviewAtIndex: objc.invokeSelector "insertSubview:atIndex:"
  insertSubviewAboveSubview: objc.invokeSelector "insertSubview:aboveSubview:"
  insertSubviewBelowSubview: objc.invokeSelector "insertSubview:belowSubview:"
  exchangeSubviewAtIndexWithSubviewAtIndex: objc.invokeSelector "exchangeSubviewAtIndex:withSubviewAtIndex:"
  isDescendantOfView: objc.invokeSelector "isDescendantOfView:"

  # Laying out Subviews
  layoutSubviews: objc.invokeSelector "layoutSubviews"
  setNeedsLayout: objc.invokeSelector "setNeedsLayout"
  layoutIfNeeded: objc.invokeSelector "layoutIfNeeded"

  # Drawing and Updating the View
  drawRect: objc.invokeSelector "drawRect:"
  setNeedsDisplay: objc.invokeSelector "setNeedsDisplay"
  setNeedsDisplayInRect: objc.invokeSelector "setNeedsDisplayInRect:"
  ck.instanceProperty @, "contentScaleFactor"

  # Formatting Printed View Content
  viewPrintFormatter: objc.invokeSelector "viewPrintFormatter"
  drawRectForViewPrintFormatter: objc.invokeSelector "drawRect:forViewPrintFormatter:"

  # Managing Gesture Recognizers
  addGestureRecognizer: objc.invokeSelector "addGestureRecognizer:"
  removeGestureRecognizer: objc.invokeSelector "removeGestureRecognizer:"
  ck.instanceProperty @, "gestureRecognizers"

  # Animating Views with Blocks
  animateWithDurationDelayCompletion: objc.invokeSelector "animateWithDuration:delay:options:animations:completion:"
  animateWithDurationCompletion: objc.invokeSelector "animateWithDuration:animations:completion:"
  animateWithDuration: objc.invokeSelector "animateWithDuration:animations:"
  transitionWithViewDelayCompletion: objc.invokeSelector "transitionWithView:duration:options:animations:completion:"
  transitionFromViewCompletion: objc.invokeSelector "transitionFromView:toView:duration:options:completion:"

  # Animating Views
  # Use of the methods in this section is discouraged in iOS 4 and later. Use the block-based animation methods instead.

  beginAnimationsWithContext: objc.invokeSelector "beginAnimations:context:"
  commitAnimations: objc.invokeSelector "commitAnimations"
  setAnimationStartDate: objc.invokeSelector "setAnimationStartDate:"
  setAnimationsEnabled: objc.invokeSelector "setAnimationsEnabled:"
  setAnimationDelegate: objc.invokeSelector "setAnimationDelegate:"
  setAnimationWillStartSelector: objc.invokeSelector "setAnimationWillStartSelector:"
  setAnimationDidStopSelector: objc.invokeSelector "setAnimationDidStopSelector:"
  setAnimationDuration: objc.invokeSelector "setAnimationDuration:"
  setAnimationDelay: objc.invokeSelector "setAnimationDelay:"
  setAnimationCurve: objc.invokeSelector "setAnimationCurve:"
  setAnimationRepeatCount: objc.invokeSelector "setAnimationRepeatCount:"
  setAnimationRepeatAutoreverses: objc.invokeSelector "setAnimationRepeatAutoreverses:"
  setAnimationBeginsFromCurrentState: objc.invokeSelector "setAnimationBeginsFromCurrentState:"
  setAnimationTransitionForView: objc.invokeSelector "setAnimationTransition:forView:cache:"
  areAnimationsEnabled: objc.invokeSelector "areAnimationsEnabled"

  # Identifying the View at Runtime
  ck.instanceProperty @, "tag"
  viewWithTag: objc.invokeSelector "viewWithTag:"

  # Converting Between View Coordinate Systems
  convertPointToView: objc.invokeSelector "convertPoint:toView:"
  convertPointFromView: objc.invokeSelector "convertPoint:fromView:"
  convertRectToView: objc.invokeSelector "convertRect:toView:"
  convertRectFromView: objc.invokeSelector "convertRect:fromView:"

  # Hit Testing in a View
  hitTestWithEvent: objc.invokeSelector "hitTest:withEvent:"
  pointInsideWithEvent: objc.invokeSelector "pointInside:withEvent:"

  # Ending a View Editing Session
  endEditing: objc.invokeSelector "endEditing:"

  # Observing View-Related Changes
  didAddSubview: objc.invokeSelector "didAddSubview:"
  willRemoveSubview: objc.invokeSelector "willRemoveSubview:"
  willMoveToSuperview: objc.invokeSelector "willMoveToSuperview:"
  didMoveToSuperview: objc.invokeSelector "didMoveToSuperview"
  willMoveToWindow: objc.invokeSelector "willMoveToWindow:"
  didMoveToWindow: objc.invokeSelector "didMoveToWindow"
