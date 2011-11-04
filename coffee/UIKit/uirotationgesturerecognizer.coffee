#console.log "UIRotationGestureRecognizer"
class UIRotationGestureRecognizer extends UIGestureRecognizer

  constructor: (handle) -> super (if handle then handle else objc.allocInstance (@.constructor.name))

  # Interpreting the Gesture
  ck.addProperty @::, "rotation"
  ck.addProperty @::, "velocity"


new ck.RegisterAttribute UIRotationGestureRecognizer, "UIRotationGestureRecognizer"
exports.UIRotationGestureRecognizer = UIRotationGestureRecognizer
