# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIGestureRecognizer"
exports.UIGestureRecognizer = class UIGestureRecognizer extends foundation.NSObject
  @register()

  # Initializing a Gesture Recognizer
  initWithTarget: objc.invokeSelector "initWithTarget:action:"

  # Adding and Removing Targets and Actions
  addTarget: objc.invokeSelector "addTarget:action:"
  removeTarget: objc.invokeSelector "removeTarget:action:"

  # Getting the Touches and Location of a Gesture
  locationInView: objc.invokeSelector "locationInView:"
  locationOfTouchInView: objc.invokeSelector "locationOfTouch:inView:"
  numberOfTouches: objc.invokeSelector "numberOfTouches"

  # Getting the Recognizer’s State and View
  ck.instanceProperty @, "state"
  ck.instanceProperty @, "view"
  ck.instanceProperty @, "enabled"

  # Canceling and Delaying Touches
  ck.instanceProperty @, "cancelsTouchesInView"
  ck.instanceProperty @, "delaysTouchesBegan"
  ck.instanceProperty @, "delaysTouchesEnded"

  # Specifying Dependencies Between Gesture Recognizers
  requireGestureRecognizerToFail: objc.invokeSelector "requireGestureRecognizerToFail:"

  # Setting and Getting the Delegate
  ck.instanceProperty @, "delegate", { set: (v) -> objc.invokeSelector("setDelegate:").call this, (ck.autobox v, UIGestureRecognizerDelegate) }

  # Methods For Subclasses

  # The UIGestureRecognizerSubclass.h header file contains a extension class extension that declares methods intended to be called or overridden only by subclasses of UIGestureRecognizer. Clients that merely use concrete subclasses of UIGestureRecognizer must never call these methods (except for those noted).

  touchesBegan: objc.invokeSelector "touchesBegan:withEvent:"
  touchesMoved: objc.invokeSelector "touchesMoved:withEvent:"
  touchesEnded: objc.invokeSelector "touchesEnded:withEvent:"
  touchesCancelled: objc.invokeSelector "touchesCancelled:withEvent:"
  reset: objc.invokeSelector "reset"
  ignoreTouch: objc.invokeSelector "ignoreTouch:forEvent:"
  canBePreventedByGestureRecognizer: objc.invokeSelector "canBePreventedByGestureRecognizer:"
  canPreventGestureRecognizer: objc.invokeSelector "canPreventGestureRecognizer:"
