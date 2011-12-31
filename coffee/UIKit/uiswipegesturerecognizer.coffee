# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UISwipeGestureRecognizer"
exports.UISwipeGestureRecognizer = class UISwipeGestureRecognizer extends UIGestureRecognizer
  @register()

  # Configuring the Gesture
  ck.instanceProperty @, "direction"
  ck.instanceProperty @, "numberOfTouchesRequired"
