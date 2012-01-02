# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UISwipeGestureRecognizer"
exports.UISwipeGestureRecognizer = class UISwipeGestureRecognizer extends UIGestureRecognizer
  # Configuring the Gesture
  @instanceProperty "direction"
  @instanceProperty "numberOfTouchesRequired"

  @register()
