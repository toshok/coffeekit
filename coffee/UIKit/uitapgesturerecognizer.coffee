# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UITapGestureRecognizer"
exports.UITapGestureRecognizer = class UITapGestureRecognizer extends UIGestureRecognizer
  # Configuring the Gesture
  @instanceProperty "numberOfTapsRequired"
  @instanceProperty "numberOfTouchesRequired"

  @register()
