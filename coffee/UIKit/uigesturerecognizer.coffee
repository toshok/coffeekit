# This file is part of coffeekit.  for licensing information, see the LICENSE file

console.log "UIGestureRecognizer"
exports.UIGestureRecognizer = class UIGestureRecognizer extends foundation.NSObject
  # Initializing a Gesture Recognizer
  initWithTarget: @nativeSelector "initWithTarget:action:"

  # Adding and Removing Targets and Actions
  addTarget:             @nativeSelector "addTarget:action:"
  removeTarget:          @nativeSelector "removeTarget:action:"

  # Getting the Touches and Location of a Gesture
  locationInView:        @nativeSelector "locationInView:"
  locationOfTouchInView: @nativeSelector "locationOfTouch:inView:"
  numberOfTouches:       @nativeSelector "numberOfTouches"

  # Getting the Recognizer’s State and View
  @instanceProperty "state"
  @instanceProperty "view"
  @instanceProperty "enabled"

  # Canceling and Delaying Touches
  @instanceProperty "cancelsTouchesInView"
  @instanceProperty "delaysTouchesBegan"
  @instanceProperty "delaysTouchesEnded"

  # Specifying Dependencies Between Gesture Recognizers
  requireGestureRecognizerToFail: @nativeSelector "requireGestureRecognizerToFail:"

  # Setting and Getting the Delegate
  @autoboxProperty "delegate", UIGestureRecognizerDelegate

  # Methods For Subclasses

  # The UIGestureRecognizerSubclass.h header file contains a extension
  # class extension that declares methods intended to be called or
  # overridden only by subclasses of UIGestureRecognizer. Clients that
  # merely use concrete subclasses of UIGestureRecognizer must never
  # call these methods (except for those noted).

  touchesBegan:                      @nativeSelector "touchesBegan:withEvent:"
  touchesMoved:                      @nativeSelector "touchesMoved:withEvent:"
  touchesEnded:                      @nativeSelector "touchesEnded:withEvent:"
  touchesCancelled:                  @nativeSelector "touchesCancelled:withEvent:"
  reset:                             @nativeSelector "reset"
  ignoreTouch:                       @nativeSelector "ignoreTouch:forEvent:"
  canBePreventedByGestureRecognizer: @nativeSelector "canBePreventedByGestureRecognizer:"
  canPreventGestureRecognizer:       @nativeSelector "canPreventGestureRecognizer:"

  @register()

