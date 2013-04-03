# This file is part of coffeekit.  for licensing information, see the LICENSE file

console.log "UIGestureRecognizerDelegate"

exports.UIGestureRecognizerDelegate = class UIGestureRecognizerDelegate extends foundation.Protocol

  # Regulating Gesture Recognition
  shouldBegin:        @optionalMethod "gestureRecognizerShouldBegin:"
  shouldReceiveTouch: @optionalMethod "gestureRecognizer:shouldReceiveTouch:"

  # Controlling Simultaneous Gesture Recognition
  shouldRecognizeSimultaneouslyWithGestureRecognizer: @optionalMethod "gestureRecognizer:shouldRecognizeSimultaneouslyWithGestureRecognizer:"

  @register()