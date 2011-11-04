# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UISwipeGestureRecognizer"
class UISwipeGestureRecognizer extends UIGestureRecognizer

  constructor: (handle) -> super (if handle then handle else objc.allocInstance (@.constructor.name))

  # Configuring the Gesture
  ck.addProperty @::, "direction"
  ck.addProperty @::, "numberOfTouchesRequired"


new ck.RegisterAttribute UISwipeGestureRecognizer, "UISwipeGestureRecognizer"
exports.UISwipeGestureRecognizer = UISwipeGestureRecognizer
