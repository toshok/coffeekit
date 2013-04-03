# This file is part of coffeekit.  for licensing information, see the LICENSE file

console.log "UIActionSheetDelegate"

exports.UIActionSheetDelegate = class UIActionSheetDelegate extends foundation.Protocol
  # Responding to Actions
  clickedButton:  @optionalMethod "actionSheet:clickedButtonAtIndex:"

  # Customizing Behavior
  willPresent: @optionalMethod "willPresentActionSheet:"
  didPresent:  @optionalMethod "didPresentActionSheet:"
  willDismiss: @optionalMethod "actionSheet:willDismissWithButtonIndex:"
  didDismiss:  @optionalMethod "actionSheet:didDismissWithButtonIndex:"

  # Canceling
  cancel:      @optionalMethod "actionSheetCancel:"

  @register()
