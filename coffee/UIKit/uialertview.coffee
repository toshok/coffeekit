# This file is part of coffeekit.  for licensing information, see the LICENSE file

console.log "UIAlertView"
exports.UIAlertView = class UIAlertView extends UIView
  # Creating Alert Views
  init: @nativeSelector "initWithTitle:message:delegate:cancelButtonTitle:otherButtonTitles:"

  # Setting Properties
  @autoboxProperty  "delegate", UIAlertViewDelegate
  @instanceProperty "alertViewStyle"
  @instanceProperty "title"
  @instanceProperty "message"
  @instanceProperty "visible"

  # Configuring Buttons
  addButtonWithTitle: @nativeSelector "addButtonWithTitle:"
  buttonTitleAtIndex: @nativeSelector "buttonTitleAtIndex:"
  textFieldAtIndex:   @nativeSelector "textFieldAtIndex:"
  @instanceProperty   "numberOfButtons"
  @instanceProperty   "cancelButtonIndex"
  @instanceProperty   "firstOtherButtonIndex"

  # Displaying
  show: @nativeSelector "show"

  # Dismissing
  dismissWithClickedButtonIndex: @nativeSelector "dismissWithClickedButtonIndex:animated:"

  @register()
