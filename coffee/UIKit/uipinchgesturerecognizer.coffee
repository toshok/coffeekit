# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIPinchGestureRecognizer"
exports.UIPinchGestureRecognizer = class UIPinchGestureRecognizer extends UIGestureRecognizer
  @register()

  # Interpreting the Pinching Gesture
  ck.instanceProperty @, "scale"
  ck.instanceProperty @, "velocity"
