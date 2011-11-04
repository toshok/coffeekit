#console.log "UIPinchGestureRecognizer"
class UIPinchGestureRecognizer extends UIGestureRecognizer

  constructor: (handle) -> super (if handle then handle else objc.allocInstance (@.constructor.name))

  # Interpreting the Pinching Gesture
  ck.addProperty @::, "scale"
  ck.addProperty @::, "velocity"

new ck.RegisterAttribute UIPinchGestureRecognizer, "UIPinchGestureRecognizer"
exports.UIPinchGestureRecognizer = UIPinchGestureRecognizer
