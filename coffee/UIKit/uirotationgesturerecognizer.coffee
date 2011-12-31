# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIRotationGestureRecognizer"
exports.UIRotationGestureRecognizer = class UIRotationGestureRecognizer extends UIGestureRecognizer
  @register()

  # Interpreting the Gesture
  ck.instanceProperty @, "rotation"
  ck.instanceProperty @, "velocity"
