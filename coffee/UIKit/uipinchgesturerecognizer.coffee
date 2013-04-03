# This file is part of coffeekit.  for licensing information, see the LICENSE file

console.log "UIPinchGestureRecognizer"
exports.UIPinchGestureRecognizer = class UIPinchGestureRecognizer extends UIGestureRecognizer
  # Interpreting the Pinching Gesture
  @instanceProperty "scale"
  @instanceProperty "velocity"

  @register()
