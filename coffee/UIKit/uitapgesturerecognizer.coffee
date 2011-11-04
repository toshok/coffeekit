# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UITapGestureRecognizer"
class UITapGestureRecognizer extends UIGestureRecognizer

  constructor: (handle) -> super (if handle then handle else objc.allocInstance (@.constructor.name))

  # Configuring the Gesture
  ck.addProperty @::, "numberOfTapsRequired"
  ck.addProperty @::, "numberOfTouchesRequired"

new ck.RegisterAttribute UITapGestureRecognizer, "UITapGestureRecognizer"
exports.UITapGestureRecognizer = UITapGestureRecognizer
