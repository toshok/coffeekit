# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIRotationGestureRecognizer"
exports.UIRotationGestureRecognizer = class UIRotationGestureRecognizer extends UIGestureRecognizer
  # Interpreting the Gesture
  @instanceProperty "rotation"
  @instanceProperty "velocity"

  @register()
