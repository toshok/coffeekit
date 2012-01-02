# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIEvent"
exports.UIEvent = class UIEvent extends foundation.NSObject 
  # Getting the Touches for an Event
  allTouches:       @nativeSelector "allTouches"
  touchesForView:   @nativeSelector "touchesForView:"
  touchesForWindow: @nativeSelector "touchesForWindow:"

  # Getting Event Attributes
  @instanceProperty "timestamp"

  # Getting the Event Type
  @instanceProperty "type"
  @instanceProperty "subtype"

  # Getting the Touches for a Gesture Recognizer
  touchesForGestureRecognizer: @nativeSelector "touchesForGestureRecognizer:"

  @register()
