# This file is part of coffeekit.  for licensing information, see the LICENSE file

console.log "UIAlertViewDelegate"

exports.UIAlertViewDelegate = class UIAlertViewDelegate extends foundation.Protocol
  # Responding to Actions
  clickedButton:                @optionalMethod "alertView:clickedButtonAtIndex:"

  # Customizing Behavior
  shouldEnableFirstOtherButton: @optionalMethod "alertViewShouldEnableFirstOtherButton:"
  willPresent:                  @optionalMethod "willPresentAlertView:"
  didPresent:                   @optionalMethod "didPresentAlertView:"
  willDismiss:                  @optionalMethod "alertView:willDismissWithButtonIndex:"
  didDismiss:                   @optionalMethod "alertView:didDismissWithButtonIndex:"

  # Canceling
  cancel:                       @optionalMethod "alertViewCancel:"

  @register()
