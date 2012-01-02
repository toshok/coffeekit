# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIResponder"
exports.UIResponder = class UIResponder extends foundation.NSObject
  # Managing the Responder Chain
  nextResponder:           @nativeSelector "nextResponder"
  isFirstResponder:        @nativeSelector "isFirstResponder"
  canBecomeFirstResponder: @nativeSelector "canBecomeFirstResponder"
  becomeFirstResponder:    @nativeSelector "becomeFirstResponder"
  canResignFirstResponder: @nativeSelector "canResignFirstResponder"
  resignFirstResponder:    @nativeSelector "resignFirstResponder"

  # Managing Input Views
  @instanceProperty "inputView"
  @instanceProperty "inputAccessoryView"
  reloadInputViews: @nativeSelector "reloadInputViews"

  # Responding to Touch Events
  touchesBegan:     @nativeSelector "touchesBegan:withEvent:"
  touchesMoved:     @nativeSelector "touchesMoved:withEvent:"
  touchesEnded:     @nativeSelector "touchesEnded:withEvent:"
  touchesCancelled: @nativeSelector "touchesCancelled:withEvent:"

  # Responding to Motion Events
  motionBegan:     @nativeSelector "motionBegan:withEvent:"
  motionEnded:     @nativeSelector "motionEnded:withEvent:"
  motionCancelled: @nativeSelector "motionCancelled:withEvent:"

  # Responding to Remote-Control Events
  remoteControlReceived: @nativeSelector "remoteControlReceivedWithEvent:"

  # Getting the Undo Manager
  @instanceProperty "undoManager"

  # Validating Commands
  canPerformAction: @nativeSelector "canPerformAction:withSender:"

  @register()
