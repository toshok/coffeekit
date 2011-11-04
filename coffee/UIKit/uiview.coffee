#console.log "UIView"
class UIView extends UIResponder

  constructor: (handle) -> super (if handle then handle else objc.allocInstance (@.constructor.name))

  toString: -> "[UIView #{@handle}]"

  # Initializing a View Object
  initWithFrame: objc.invokeSelector ("initWithFrame:")

  # Configuring a View’s Visual Appearance
  ck.addProperty @::, "backgroundColor"
  ck.addProperty @::, "hidden"
  ck.addProperty @::, "alpha"
  ck.addProperty @::, "opaque"
  ck.addProperty @::, "clipsToBounds"
  ck.addProperty @::, "clearsContextBeforeDrawing"
  @layerClass: objc.invokeSelector ("layerClass")
  ck.addProperty @::, "layer"

  # Configuring the Event-Related Behavior
  ck.addProperty @::, "userInteractionEnabled"
  ck.addProperty @::, "multipleTouchEnabled"
  ck.addProperty @::, "exclusiveTouch"

  # Configuring the Bounds and Frame Rectangles
  ck.addProperty @::, "frame"
  ck.addProperty @::, "bounds"
  ck.addProperty @::, "center"
  ck.addProperty @::, "transform"

  # Configuring the Resizing Behavior
  ck.addProperty @::, "autoresizingMask"
  ck.addProperty @::, "autoresizesSubviews"
  ck.addProperty @::, "contentMode"
  ck.addProperty @::, "contentStretch"
  sizeThatFits: objc.invokeSelector ("sizeThatFits:")
  sizeToFit: objc.invokeSelector ("sizeToFit")

  # Managing the View Hierarchy
  ck.addProperty @::, "superview"
  ck.addProperty @::, "subviews"
  ck.addProperty @::, "window"
  addSubview: objc.invokeSelector ("addSubview:")
  bringSubviewToFront: objc.invokeSelector ("bringSubviewToFront:")
  sendSubviewToBack: objc.invokeSelector ("sendSubviewToBack:")
  removeFromSuperview: objc.invokeSelector ("removeFromSuperview")
  insertSubviewAtIndex: objc.invokeSelector ("insertSubview:atIndex:")
  insertSubviewAboveSubview: objc.invokeSelector ("insertSubview:aboveSubview:")
  insertSubviewBelowSubview: objc.invokeSelector ("insertSubview:belowSubview:")
  exchangeSubviewAtIndexWithSubviewAtIndex: objc.invokeSelector ("exchangeSubviewAtIndex:withSubviewAtIndex:")
  isDescendantOfView: objc.invokeSelector ("isDescendantOfView:")

  # Laying out Subviews
  layoutSubviews: objc.invokeSelector ("layoutSubviews")
  setNeedsLayout: objc.invokeSelector ("setNeedsLayout")
  layoutIfNeeded: objc.invokeSelector ("layoutIfNeeded")

  # Drawing and Updating the View
  drawRect: objc.invokeSelector ("drawRect:")
  setNeedsDisplay: objc.invokeSelector ("setNeedsDisplay")
  setNeedsDisplayInRect: objc.invokeSelector ("setNeedsDisplayInRect:")
  ck.addProperty @::, "contentScaleFactor"

  # Formatting Printed View Content
  viewPrintFormatter: objc.invokeSelector ("viewPrintFormatter")
  drawRectForViewPrintFormatter: objc.invokeSelector ("drawRect:forViewPrintFormatter:")

  # Managing Gesture Recognizers
  addGestureRecognizer: objc.invokeSelector ("addGestureRecognizer:")
  removeGestureRecognizer: objc.invokeSelector ("removeGestureRecognizer:")
  ck.addProperty @::, "gestureRecognizers"

  # Animating Views with Blocks
  animateWithDurationDelayCompletion: objc.invokeSelector ("animateWithDuration:delay:options:animations:completion:")
  animateWithDurationCompletion: objc.invokeSelector ("animateWithDuration:animations:completion:")
  animateWithDuration: objc.invokeSelector ("animateWithDuration:animations:")
  transitionWithViewDelayCompletion: objc.invokeSelector ("transitionWithView:duration:options:animations:completion:")
  transitionFromViewCompletion: objc.invokeSelector ("transitionFromView:toView:duration:options:completion:")

  # Animating Views
  # Use of the methods in this section is discouraged in iOS 4 and later. Use the block-based animation methods instead.

  beginAnimationsWithContext: objc.invokeSelector ("beginAnimations:context:")
  commitAnimations: objc.invokeSelector ("commitAnimations")
  setAnimationStartDate: objc.invokeSelector ("setAnimationStartDate:")
  setAnimationsEnabled: objc.invokeSelector ("setAnimationsEnabled:")
  setAnimationDelegate: objc.invokeSelector ("setAnimationDelegate:")
  setAnimationWillStartSelector: objc.invokeSelector ("setAnimationWillStartSelector:")
  setAnimationDidStopSelector: objc.invokeSelector ("setAnimationDidStopSelector:")
  setAnimationDuration: objc.invokeSelector ("setAnimationDuration:")
  setAnimationDelay: objc.invokeSelector ("setAnimationDelay:")
  setAnimationCurve: objc.invokeSelector ("setAnimationCurve:")
  setAnimationRepeatCount: objc.invokeSelector ("setAnimationRepeatCount:")
  setAnimationRepeatAutoreverses: objc.invokeSelector ("setAnimationRepeatAutoreverses:")
  setAnimationBeginsFromCurrentState: objc.invokeSelector ("setAnimationBeginsFromCurrentState:")
  setAnimationTransitionForView: objc.invokeSelector ("setAnimationTransition:forView:cache:")
  areAnimationsEnabled: objc.invokeSelector ("areAnimationsEnabled")

  # Identifying the View at Runtime
  ck.addProperty @::, "tag"
  viewWithTag: objc.invokeSelector ("viewWithTag:")

  # Converting Between View Coordinate Systems
  convertPointToView: objc.invokeSelector ("convertPoint:toView:")
  convertPointFromView: objc.invokeSelector ("convertPoint:fromView:")
  convertRectToView: objc.invokeSelector ("convertRect:toView:")
  convertRectFromView: objc.invokeSelector ("convertRect:fromView:")

  # Hit Testing in a View
  hitTestWithEvent: objc.invokeSelector ("hitTest:withEvent:")
  pointInsideWithEvent: objc.invokeSelector ("pointInside:withEvent:")

  # Ending a View Editing Session
  endEditing: objc.invokeSelector ("endEditing:")

  # Observing View-Related Changes
  didAddSubview: objc.invokeSelector ("didAddSubview:")
  willRemoveSubview: objc.invokeSelector ("willRemoveSubview:")
  willMoveToSuperview: objc.invokeSelector ("willMoveToSuperview:")
  didMoveToSuperview: objc.invokeSelector ("didMoveToSuperview")
  willMoveToWindow: objc.invokeSelector ("willMoveToWindow:")
  didMoveToWindow: objc.invokeSelector ("didMoveToWindow")

new ck.MixinProtocolAttribute UIView, UIAppearance
new ck.RegisterAttribute UIView, "UIView"
exports.UIView = UIView
