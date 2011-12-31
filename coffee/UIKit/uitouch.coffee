# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UITouch"
exports.UITouch = class UITouch extends foundation.NSObject
  @register()

  # Getting the Location of Touches
  locationInView: objc.invokeSelector "locationInView:"
  previousLocationInView: objc.invokeSelector "previousLocationInView:"
  ck.instanceProperty @, "view"
  ck.instanceProperty @, "window"

  # Getting Touch Attributes
  ck.instanceProperty @, "tapCount"
  ck.instanceProperty @, "timestamp"
  ck.instanceProperty @, "phase"

  # Getting a Touch Object’s Gesture Recognizers
  ck.instanceProperty @, "gestureRecognizers"
