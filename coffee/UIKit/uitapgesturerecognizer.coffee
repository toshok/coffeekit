# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UITapGestureRecognizer"
exports.UITapGestureRecognizer = class UITapGestureRecognizer extends UIGestureRecognizer
  @register()

  # Configuring the Gesture
  ck.instanceProperty @, "numberOfTapsRequired"
  ck.instanceProperty @, "numberOfTouchesRequired"
