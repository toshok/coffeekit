# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIAlertViewDelegate"
Protocol = foundation.Protocol

exports.UIAlertViewDelegate = class UIAlertViewDelegate extends foundation.Protocol
  @register()

  # Responding to Actions
  clickedButton:                Protocol.optionalMethod "alertView:clickedButtonAtIndex:"

  # Customizing Behavior
  shouldEnableFirstOtherButton: Protocol.optionalMethod "alertViewShouldEnableFirstOtherButton:"
  willPresent:                  Protocol.optionalMethod "willPresentAlertView:"
  didPresent:                   Protocol.optionalMethod "didPresentAlertView:"
  willDismiss:                  Protocol.optionalMethod "alertView:willDismissWithButtonIndex:"
  didDismiss:                   Protocol.optionalMethod "alertView:didDismissWithButtonIndex:"

  # Canceling
  cancel:                       Protocol.optionalMethod "alertViewCancel:"
