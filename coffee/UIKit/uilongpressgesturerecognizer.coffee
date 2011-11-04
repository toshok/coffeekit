# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UILongPressGestureRecognizer"
class UILongPressGestureRecognizer extends UIGestureRecognizer

  constructor: (handle) -> super (if handle then handle else objc.allocInstance (@.constructor.name))

  # Configuring the Gesture Recognizer
  ck.addProperty @::, "minimumPressDuration"
  ck.addProperty @::, "numberOfTouchesRequired"
  ck.addProperty @::, "numberOfTapsRequired"
  ck.addProperty @::, "allowableMovement"



new ck.RegisterAttribute UILongPressGestureRecognizer, "UILongPressGestureRecognizer"
exports.UILongPressGestureRecognizer = UILongPressGestureRecognizer
