# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UILongPressGestureRecognizer"
exports.UILongPressGestureRecognizer = class UILongPressGestureRecognizer extends UIGestureRecognizer
  # Configuring the Gesture Recognizer
  @instanceProperty "minimumPressDuration"
  @instanceProperty "numberOfTouchesRequired"
  @instanceProperty "numberOfTapsRequired"
  @instanceProperty "allowableMovement"

  @register()
