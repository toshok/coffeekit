Protocol = foundation.Protocol

class UIAlertViewDelegate extends foundation.Protocol

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

new ck.RegisterAttribute UIAlertViewDelegate, "UIAlertViewDelegate"
exports.UIAlertViewDelegate = UIAlertViewDelegate
