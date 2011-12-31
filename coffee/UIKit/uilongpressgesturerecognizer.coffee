# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UILongPressGestureRecognizer"
exports.UILongPressGestureRecognizer = class UILongPressGestureRecognizer extends UIGestureRecognizer
  @register()

  # Configuring the Gesture Recognizer
  ck.instanceProperty @, "minimumPressDuration"
  ck.instanceProperty @, "numberOfTouchesRequired"
  ck.instanceProperty @, "numberOfTapsRequired"
  ck.instanceProperty @, "allowableMovement"
