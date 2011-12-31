# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIPanGestureRecognizer"
exports.UIPanGestureRecognizer = class UIPanGestureRecognizer extends UIGestureRecognizer
  @register()

  # Configuring the Gesture Recognizer
  ck.instanceProperty @, "maximumNumberOfTouches"
  ck.instanceProperty @, "minimumNumberOfTouches"

  # Tracking the Location and Velocity of the Gesture
  translationInView: objc.invokeSelector "translationInView:"
  setTranslationInView: objc.invokeSelector "setTranslation:inView:"
  velocityInView: objc.invokeSelector "velocityInView:"
