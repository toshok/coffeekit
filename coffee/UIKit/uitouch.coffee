#console.log "UITouch"
class UITouch extends foundation.NSObject

  # Getting the Location of Touches
  locationInView: objc.invokeSelector "locationInView:"
  previousLocationInView: objc.invokeSelector "previousLocationInView:"
  ck.addProperty @::, "view"
  ck.addProperty @::, "window"

  # Getting Touch Attributes
  ck.addProperty @::, "tapCount"
  ck.addProperty @::, "timestamp"
  ck.addProperty @::, "phase"

  # Getting a Touch Object’s Gesture Recognizers
  ck.addProperty @::, "gestureRecognizers"

new ck.RegisterAttribute UITouch, "UITouch"
exports.UITouch = UITouch
