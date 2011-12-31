# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIEvent"
exports.UIEvent = class UIEvent extends foundation.NSObject 
  @register()

  # Getting the Touches for an Event
  allTouches: objc.invokeSelector "allTouches"
  touchesForView: objc.invokeSelector "touchesForView:"
  touchesForWindow: objc.invokeSelector "touchesForWindow:"

  # Getting Event Attributes
  ck.instanceProperty @, "timestamp"

  # Getting the Event Type
  ck.instanceProperty @, "type"
  ck.instanceProperty @, "subtype"

  # Getting the Touches for a Gesture Recognizer
  touchesForGestureRecognizer: objc.invokeSelector "touchesForGestureRecognizer:"
