# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIActionSheetDelegate"
Protocol = foundation.Protocol

class UIActionSheetDelegate extends foundation.Protocol

  # Responding to Actions
  clickedButton:  Protocol.optionalMethod "actionSheet:clickedButtonAtIndex:"

  # Customizing Behavior
  willPresent: Protocol.optionalMethod "willPresentActionSheet:"
  didPresent:  Protocol.optionalMethod "didPresentActionSheet:"
  willDismiss: Protocol.optionalMethod "actionSheet:willDismissWithButtonIndex:"
  didDismiss:  Protocol.optionalMethod "actionSheet:didDismissWithButtonIndex:"

  # Canceling
  cancel:      Protocol.optionalMethod "actionSheetCancel:"

new ck.RegisterAttribute UIActionSheetDelegate, "UIActionSheetDelegate"
exports.UIActionSheetDelegate = UIActionSheetDelegate
