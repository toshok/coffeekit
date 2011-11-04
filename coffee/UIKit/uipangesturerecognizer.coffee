# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIPanGestureRecognizer"
class UIPanGestureRecognizer extends UIGestureRecognizer

  constructor: (handle) -> super (if handle then handle else objc.allocInstance (@.constructor.name))

  # Configuring the Gesture Recognizer
  ck.addProperty @::, "maximumNumberOfTouches"
  ck.addProperty @::, "minimumNumberOfTouches"

  # Tracking the Location and Velocity of the Gesture
  translationInView: objc.invokeSelector "translationInView:"
  setTranslationInView: objc.invokeSelector "setTranslation:inView:"
  velocityInView: objc.invokeSelector "velocityInView:"


new ck.RegisterAttribute UIPanGestureRecognizer, "UIPanGestureRecognizer"
exports.UIPanGestureRecognizer = UIPanGestureRecognizer
