# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIEvent"
class UIEvent extends foundation.NSObject 
  # Getting the Touches for an Event
  allTouches: objc.invokeSelector "allTouches"
  touchesForView: objc.invokeSelector "touchesForView:"
  touchesForWindow: objc.invokeSelector "touchesForWindow:"

  # Getting Event Attributes
  ck.addProperty @::, "timestamp"

  # Getting the Event Type
  ck.addProperty @::, "type"
  ck.addProperty @::, "subtype"

  # Getting the Touches for a Gesture Recognizer
  touchesForGestureRecognizer: objc.invokeSelector "touchesForGestureRecognizer:"

new ck.RegisterAttribute UIEvent, "UIEvent"
exports.UIEvent = UIEvent
