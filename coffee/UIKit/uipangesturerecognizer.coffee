# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIPanGestureRecognizer"
exports.UIPanGestureRecognizer = class UIPanGestureRecognizer extends UIGestureRecognizer
  # Configuring the Gesture Recognizer
  @instanceProperty "maximumNumberOfTouches"
  @instanceProperty "minimumNumberOfTouches"

  # Tracking the Location and Velocity of the Gesture
  translationInView:    @nativeSelector "translationInView:"
  setTranslationInView: @nativeSelector "setTranslation:inView:"
  velocityInView:       @nativeSelector "velocityInView:"

  @register()
