# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIResponder"
class UIResponder extends foundation.NSObject

  constructor: (handle) -> super (if handle then handle else objc.allocInstance (@.constructor.name))

  # Managing the Responder Chain
  nextResponder: objc.invokeSelector "nextResponder"
  isFirstResponder: objc.invokeSelector "isFirstResponder"
  canBecomeFirstResponder: objc.invokeSelector "canBecomeFirstResponder"
  becomeFirstResponder: objc.invokeSelector "becomeFirstResponder"
  canResignFirstResponder: objc.invokeSelector "canResignFirstResponder"
  resignFirstResponder: objc.invokeSelector "resignFirstResponder"

  # Managing Input Views
  ck.addProperty @::, "inputView"
  ck.addProperty @::, "inputAccessoryView"
  reloadInputViews: objc.invokeSelector "reloadInputViews"

  # Responding to Touch Events
  touchesBegan: objc.invokeSelector "touchesBegan:withEvent:"
  touchesMoved: objc.invokeSelector "touchesMoved:withEvent:"
  touchesEnded: objc.invokeSelector "touchesEnded:withEvent:"
  touchesCancelled: objc.invokeSelector "touchesCancelled:withEvent:"

  # Responding to Motion Events
  motionBegan: objc.invokeSelector "motionBegan:withEvent:"
  motionEnded: objc.invokeSelector "motionEnded:withEvent:"
  motionCancelled: objc.invokeSelector "motionCancelled:withEvent:"

  # Responding to Remote-Control Events
  remoteControlReceived: objc.invokeSelector "remoteControlReceivedWithEvent:"

  # Getting the Undo Manager
  ck.addProperty @::, "undoManager"

  # Validating Commands
  canPerformAction: objc.invokeSelector "canPerformAction:withSender:"

new ck.RegisterAttribute UIResponder, "UIResponder"
exports.UIResponder = UIResponder
