# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UITouch"
exports.UITouch = class UITouch extends foundation.NSObject
  # Getting the Location of Touches
  locationInView:         @nativeSelector "locationInView:"
  previousLocationInView: @nativeSelector "previousLocationInView:"
  @instanceProperty "view"
  @instanceProperty "window"

  # Getting Touch Attributes
  @instanceProperty "tapCount"
  @instanceProperty "timestamp"
  @instanceProperty "phase"

  # Getting a Touch Object’s Gesture Recognizers
  @instanceProperty "gestureRecognizers"

  @register()
