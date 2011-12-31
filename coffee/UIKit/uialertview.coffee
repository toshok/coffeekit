# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIAlertView"
exports.UIAlertView = class UIAlertView extends UIView
  @register()

  # Creating Alert Views
  init: objc.invokeSelector "initWithTitle:message:delegate:cancelButtonTitle:otherButtonTitles:"

  # Setting Properties
  ck.instanceProperty @, "delegate", { set: (v) -> objc.invokeSelector("setDelegate:").call this, (ck.autobox v, UIAlertViewDelegate) }
  ck.instanceProperty @, "alertViewStyle"
  ck.instanceProperty @, "title"
  ck.instanceProperty @, "message"
  ck.instanceProperty @, "visible"

  # Configuring Buttons
  addButtonWithTitle: objc.invokeSelector "addButtonWithTitle:"
  ck.instanceProperty @, "numberOfButtons"
  buttonTitleAtIndex: objc.invokeSelector "buttonTitleAtIndex:"
  textFieldAtIndex: objc.invokeSelector "textFieldAtIndex:"
  ck.instanceProperty @, "cancelButtonIndex"
  ck.instanceProperty @, "firstOtherButtonIndex"

  # Displaying
  show: objc.invokeSelector "show"

  # Dismissing
  dismissWithClickedButtonIndex: objc.invokeSelector "dismissWithClickedButtonIndex:animated:"
